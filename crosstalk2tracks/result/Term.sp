.subckt Term
+ a1
+ ngnd

* Parameters:
+ maxDelay = 0
+ Z0 = 50
+ Voltage = 0
+ Resistance = 1e+6

** Signal
* For a
X_a a1 ngnd one_ShuntR Z0='Z0' maxDelay='maxDelay' Voltage='Voltage' Resistance='Resistance'

.subckt one_ShuntR in ngnd Z0=50 maxDelay=0.1n Voltage=5 Resistance=50
r1 in 2 'Resistance'
v1 2 ngnd 'Voltage'
.ends one_ShuntR

.ends
