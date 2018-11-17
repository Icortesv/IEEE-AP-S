# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "BUFFER_LENGTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_DATA_WIDHT" -parent ${Page_0}


}

proc update_PARAM_VALUE.BUFFER_LENGTH { PARAM_VALUE.BUFFER_LENGTH } {
	# Procedure called to update BUFFER_LENGTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BUFFER_LENGTH { PARAM_VALUE.BUFFER_LENGTH } {
	# Procedure called to validate BUFFER_LENGTH
	return true
}

proc update_PARAM_VALUE.C_M_DATA_WIDHT { PARAM_VALUE.C_M_DATA_WIDHT } {
	# Procedure called to update C_M_DATA_WIDHT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_DATA_WIDHT { PARAM_VALUE.C_M_DATA_WIDHT } {
	# Procedure called to validate C_M_DATA_WIDHT
	return true
}


proc update_MODELPARAM_VALUE.C_M_DATA_WIDHT { MODELPARAM_VALUE.C_M_DATA_WIDHT PARAM_VALUE.C_M_DATA_WIDHT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_DATA_WIDHT}] ${MODELPARAM_VALUE.C_M_DATA_WIDHT}
}

proc update_MODELPARAM_VALUE.BUFFER_LENGTH { MODELPARAM_VALUE.BUFFER_LENGTH PARAM_VALUE.BUFFER_LENGTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BUFFER_LENGTH}] ${MODELPARAM_VALUE.BUFFER_LENGTH}
}

