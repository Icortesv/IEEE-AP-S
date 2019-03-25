#include <math.h>
#include <stdlib.h>

#define PN9_SIZE 511
#define RUPSAMP 12
#define	MAXFFT	512

#define	MULR(ar,ai,  br,bi)		((ar)*(br)-(ai)*(bi))
#define	MULI(ar,ai,  br,bi)		((ar)*(bi)+(ai)*(br))

#define PERMUTE8(i)  (((i & 0x001) << 7) | ((i & 0x002) << 5) | ((i & 0x004) << 3) \
                | ((i & 0x008) << 1) | ((i & 0x010) >> 1) | ((i & 0x020) >> 3) \
                | ((i & 0x040) >> 5) | ((i & 0x080) >> 7))

#define PERMUTE9(i)  (((i & 0x001) << 8) | ((i & 0x002) << 6) | ((i & 0x004) << 4) \
                | ((i & 0x008) << 2) | ((i & 0x010) << 0) | ((i & 0x020) >> 2) \
                | ((i & 0x040) >> 4) | ((i & 0x080) >> 6) | ((i & 0x100) >> 8))

#define PERMUTE10(i) (((i & 0x001) << 9) | ((i & 0x002) << 7) | ((i & 0x004) << 5) \
                | ((i & 0x008) << 3) | ((i & 0x010) << 1) | ((i & 0x020) >> 1) \
                | ((i & 0x040) >> 3) | ((i & 0x080) >> 5) | ((i & 0x100) >> 7) \
                | ((i & 0x200) >> 9))

#define PERMUTE11(i) (((i & 0x001) << 10) | ((i & 0x002) << 8) | ((i & 0x004) << 6) \
                | ((i & 0x008) << 4) | ((i & 0x010) << 2) | ((i & 0x020) >> 0) \
                | ((i & 0x040) >> 2) | ((i & 0x080) >> 4) | ((i & 0x100) >> 6) \
                | ((i & 0x200) >> 8) | ((i & 0x400) >> 10))


void fft(double* inr, double* ini, double* outr, double* outi, int n)
{
	double wr[n];
	double wi[n];
	double tmpr[n];
	double tmpi[n];

	int i;
	int sigma;
	int alpha;

	int beta;
	int betainc;
	int omega;
	int omegainc;
	int omegamask;
	int notmask;
	int mask;

	int sigmas;
	double xr, xi;
	double yr, yi;

	sigmas = 0;
	for (i = 0; i<n; i++)
	{
		wr[i] = cos(2 * M_PI*i / n);
		wi[i] = -sin(2 * M_PI*i / n);
	}
	switch (n)
	{
	case 256:
		sigmas = 8;
		omegamask = 0x7f;
		notmask = 0x1ff;
		break;
	case 512:
		sigmas = 9;
		omegamask = 0xff;
		notmask = 0x3ff;
		break;
	case 1024:
		sigmas = 10;
		omegamask = 0x1ff;
		notmask = 0x7ff;
		break;
		//	case 2048:
	default:
		sigmas = 11;
		omegamask = 0x3ff;
		notmask = 0xfff;
		break;
	}
	for (i = 0; i<n; i++)
	{
		switch (n)
		{
		case 256:
			tmpr[i] = inr[PERMUTE8(i)];
			tmpi[i] = ini[PERMUTE8(i)];
			break;
		case 512:
			tmpr[i] = inr[PERMUTE9(i)];
			tmpi[i] = ini[PERMUTE9(i)];
			break;
		case 1024:
			tmpr[i] = inr[PERMUTE10(i)];
			tmpi[i] = ini[PERMUTE10(i)];
			break;
		case 2048:
			tmpr[i] = inr[PERMUTE11(i)];
			tmpi[i] = ini[PERMUTE11(i)];
			break;
		}
	}
	betainc = 1;
	omegainc = n / 2;
	mask = 0;

	for (i = 0; i<n / 2; i++)
	{
		alpha = (i << 1);
		beta = alpha | 0x01;

		xr = tmpr[alpha]; xi = tmpi[alpha];
		yr = tmpr[beta]; yi = tmpi[beta];

		tmpr[alpha] = yr + xr; tmpi[alpha] = yi + xi;
		tmpr[beta] = xr - yr; tmpi[beta] = xi - yi;

	}

	for (sigma = 1; sigma<sigmas; sigma++)
	{
		double omegar;
		double omegai;
		double mulr;
		double muli;
		omega = 0;
		betainc <<= 1;
		omegainc >>= 1;
		mask = (mask << 1) | 0x01;
		notmask = notmask << 1;
		for (i = 0; i<n / 2; i++)
		{
			alpha = ((i&notmask) << 1) | (i&mask);
			beta = alpha | betainc;
			omegar = wr[omega];
			omegai = wi[omega];
			xr = tmpr[alpha]; xi = tmpi[alpha];
			yr = tmpr[beta]; yi = tmpi[beta];

			mulr = omegar * yr - omegai * yi;
			muli = omegar * yi + omegai * yr;

			tmpr[alpha] = (xr + mulr); tmpi[alpha] = (xi + muli);
			tmpr[beta] = (xr - mulr); tmpi[beta] = (xi - muli);
			omega += omegainc;
			omega &= omegamask;
		}
	}
	for (i = 0; i<n; i++)
	{
		int p;
		if (i<(n / 2)) p = i + n / 2;
		else p = i - n / 2;

		outr[p] = tmpr[i];
		outi[p] = tmpi[i];
	}
}

void ifft(double* inr, double* ini, double* outr, double* outi, int n)
{
	double wr[MAXFFT];
	double wi[MAXFFT];
	double tmpr[MAXFFT];
	double tmpi[MAXFFT];
	double tmpr2[MAXFFT];
	double tmpi2[MAXFFT];

	int i;
	int sigma;
	int alpha;

	int beta;
	int betainc;
	int omega;
	int omegainc;
	int omegamask;
	int notmask;
	int mask;

	int sigmas;
	double xr, xi;
	double yr, yi;

	sigmas = 0;
	for (i = 0; i<n; i++)
	{
		wr[i] = cos(2 * M_PI*i / n);
		wi[i] = sin(2 * M_PI*i / n);
	}
	switch (n)
	{
	case 256:
		sigmas = 8;
		omegamask = 0x7f;
		notmask = 0x1ff;
		break;
	case 512:
		sigmas = 9;
		omegamask = 0xff;
		notmask = 0x3ff;
		break;
	case 1024:
		sigmas = 10;
		omegamask = 0x1ff;
		notmask = 0x7ff;
		break;
		//	case 2048:
	default:
		sigmas = 11;
		omegamask = 0x3ff;
		notmask = 0xfff;
		break;
	}
	for (i = 0; i<n; i++)
	{
		int p;
		if (i >= n / 2) p = i - n / 2;
		else p = i + n / 2;
		tmpr2[p] = inr[i];
		tmpi2[p] = ini[i];

	}
	for (i = 0; i<n; i++)
	{
		switch (n)
		{
		case 256:
			tmpr[i] = tmpr2[PERMUTE8(i)];
			tmpi[i] = tmpi2[PERMUTE8(i)];
			break;
		case 512:
			tmpr[i] = tmpr2[PERMUTE9(i)];
			tmpi[i] = tmpi2[PERMUTE9(i)];
			break;
		case 1024:
			tmpr[i] = tmpr2[PERMUTE10(i)];
			tmpi[i] = tmpi2[PERMUTE10(i)];
			break;
		case 2048:
			tmpr[i] = tmpr2[PERMUTE11(i)];
			tmpi[i] = tmpi2[PERMUTE11(i)];
			break;
		}
	}
	betainc = 1;
	omegainc = n / 2;
	mask = 0;

	for (i = 0; i<n / 2; i++)
	{
		alpha = (i << 1);
		beta = alpha | 0x01;

		xr = tmpr[alpha]; xi = tmpi[alpha];
		yr = tmpr[beta]; yi = tmpi[beta];

		tmpr[alpha] = yr + xr; tmpi[alpha] = yi + xi;
		tmpr[beta] = xr - yr; tmpi[beta] = xi - yi;

	}

	for (sigma = 1; sigma<sigmas; sigma++)
	{
		double omegar;
		double omegai;
		double mulr;
		double muli;
		omega = 0;
		betainc <<= 1;
		omegainc >>= 1;
		mask = (mask << 1) | 0x01;
		notmask = notmask << 1;
		for (i = 0; i<n / 2; i++)
		{
			alpha = ((i&notmask) << 1) | (i&mask);
			beta = alpha | betainc;
			omegar = wr[omega];
			omegai = wi[omega];
			xr = tmpr[alpha]; xi = tmpi[alpha];
			yr = tmpr[beta]; yi = tmpi[beta];

			mulr = omegar * yr - omegai * yi;
			muli = omegar * yi + omegai * yr;

			tmpr[alpha] = (xr + mulr); tmpi[alpha] = (xi + muli);
			tmpr[beta] = (xr - mulr); tmpi[beta] = (xi - muli);
			omega += omegainc;
			omega &= omegamask;
		}
	}
	for (i = 0; i<n; i++)
	{

		outr[i] = tmpr[i] / MAXFFT;
		outi[i] = tmpi[i] / MAXFFT;
	}

}

void sft(double* xr, double* xi, double* yr, double* yi, int n)
{
	int i;
	int j;
	int p;
	double tr[MAXFFT];
	double ti[MAXFFT];

	for (i = 0; i<n; i++)
	{
		tr[i] = cos(2 * M_PI*i / n);
		ti[i] = -sin(2 * M_PI*i / n);
	}
	for (i = 0; i<n; i++)
	{
		// TODO: DO I NEED TO SWAP?
		if (i<(n / 2)) p = i + n / 2;
		else p = i - n / 2;


		yr[p] = yi[p] = 0;
		for (j = 0; j<n; j++)
		{
			yr[p] += MULR(xr[j], xi[j], tr[(i*j) % n], ti[(i*j) % n]);
			yi[p] += MULI(xr[j], xi[j], tr[(i*j) % n], ti[(i*j) % n]);
		}
	}
}

void isft(double* xr, double* xi, double* yr, double* yi, int n)
{
	int i;
	int j;
	int p;
	double tr[MAXFFT];
	double ti[MAXFFT];

	for (i = 0; i<n; i++)
	{
		tr[i] = cos(2 * M_PI*i / n);
		ti[i] = sin(2 * M_PI*i / n);
	}
	for (i = 0; i<n; i++)
	{
		yr[i] = yi[i] = 0;
		for (j = 0; j<n; j++)
		{
			if (j<(n / 2)) p = j + n / 2;	// SWAP
			else p = j - n / 2;
			yr[i] += MULR(xr[p], xi[p], tr[(i*j) % n], ti[(i*j) % n]);
			yi[i] += MULI(xr[p], xi[p], tr[(i*j) % n], ti[(i*j) % n]);
		}
		yr[i] /= n;
		yi[i] /= n;
	}
}


void corr(double * pnSeq, double * pnSeqReceived, double * correlation, double * pnSeqSynchro, double * maxValue)
{
	int posCorr=0;
	int nUpSampled = PN9_SIZE * RUPSAMP;
	double sum = 0;
	double maxCorr = 0;
	double auxVec[MAXFFT * RUPSAMP];

	int k;
	int i;
	int j;
	for ( j = 0; j < nUpSampled; j++) {
		// Do the ring buffer correlation
		sum = 0;
		for (i = 0; i < nUpSampled; i++) {
			sum = sum + (pnSeq[i]*pnSeqReceived[i]);
			/*if (j == 0){
				printf("sum: %f \n",sum);
			}*/
		}
		/*if (j == 0){
			printf("sum: %f \n",sum);
		}*/
			
		correlation[j] = abs(sum);

		// Find the maximum peak of the correlation
		if (sum >= maxCorr) {
			maxCorr = sum;
			posCorr = j;
		}

		// Shift the received signal a position to the left to continue doing the correlation
		for (k = 0; k < nUpSampled - 1; k++) {
			auxVec[k] = pnSeqReceived[k + 1];
		}
		auxVec[nUpSampled - 1] = pnSeqReceived[0];

		for (k = 0; k < nUpSampled; k++) {
			pnSeqReceived[k] = auxVec[k];
		}
	}
	
	// Correct the time offset
	int kk = 0;
	for (k = 0; k < nUpSampled; k++) {
		if (k + posCorr < nUpSampled) {
			//pnSeqSynchro[k] = pnSeqReceived[k + posCorr];
			pnSeqSynchro[k] = correlation[k + posCorr];
		}
		else {
			//pnSeqSynchro[k] = pnSeqReceived[kk];
			pnSeqSynchro[k] = correlation[kk];
			kk++;
		}
	}
	
	*maxValue = maxCorr;
}


