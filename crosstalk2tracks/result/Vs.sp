.subckt Vs
+ a1
+ ngnd

* Parameters:
+ Rs = 50
+ Cs = 0
+ f1 = -1
+ f2 = 1
+ f3 = 0
+ f4 = 0.25n
+ f5 = 0.25n
+ f6 = 0
+ f7 = 0.5n

** Power
* For a
X_a a1 ngnd one_Sinesquare Rs='Rs' Cs='Cs' f1_='f1' f2_='f2' f3_='f3' f4_='f4' f5_='f5' f6_='f6' f7_='f7'

.subckt one_Sinesquare in ngnd Rs=1e-005 Cs=0 f1_=0 f2_=1 f3_=1.5n f4_=0.5n f5_=0.5n f6_=1n f7_=inf

Resistance in node_1 'Rs'
Vsupply node_1 ngnd SINESQUARE('f1_' 'f2_' 'f3_' 'f4_' 'f5_' 'f6_' 'f7_')
.ends one_Sinesquare

.ends
