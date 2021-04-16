.subckt tx_single_1 pos pwr in ngnd 
+ r_series=50
+ r_pwr=1e08
+ r_gnd=1e08
+ tx_c_comp=1p

***************************************************************************
* BEHAVIORAL CIRCUIT MODEL FOR SIGRITY's Topology Explorer
***************************************************************************
* MODEL NOTES
*
* Simple Thevenin driver
*
***************************************************************************
* MODEL PARAMETERS
*
* This model takes the following parameters:
*
* r_series > single-ended output impedance of the transmitter
* r_pwr > resistance to power node
* r_gnd > resistance to ground node
* tx_c_comp > parasitic die capacitance
*
***************************************************************************

* [MCP Begin]
* [Connection] Tx_Out
* [Connection Type] 
* [Power Nets]
* pwr pwr POWER
* [Ground Nets]
* ngnd ngnd GND
* [Signal Nets]
* pos pos pos
* [MCP End]

* scale stimulus for voltage swing per power terminal
ein_scale in_scale ngnd volt='v(pwr, ngnd) * v(in, ngnd)'

rs in_scale pos 'r_series'
rp pos pwr 'r_pwr'
rg pos ngnd 'r_gnd'
cpad pos ngnd 'tx_c_comp'

.ends tx_single_1
