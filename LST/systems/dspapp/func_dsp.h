/**
* \brief Basic static function for the interface 'default'.
*
* \param [in] param_N Interface Parameter "N".: Number of data items to process
* \param [in] instream_in_imag The stream should be of size ((param_N * 32) * 4) bytes.
* \param [in] instream_in_real The stream should be of size ((param_N * 32) * 4) bytes.
* \param [out] outstream_out_imag The stream should be of size ((param_N * 32) * 4) bytes.
* \param [out] outstream_out_real The stream should be of size ((param_N * 32) * 4) bytes.
*/

#define PN9_SIZE 511
#define RUPSAMP 12

void fft(double* inr, double* ini, double* outr, double* outi, int n);
void ifft(double* inr, double* ini, double* outr, double* outi, int n);
void corr(double * pnSeq, double * pnSeqReceived, double * correlation, double * pnSeqSynchro, double * maxValue);