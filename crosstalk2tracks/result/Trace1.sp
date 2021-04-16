.subckt Trace1
+SE11 ref1
+SE12 ref2

*Parameters:
+length = 0.001651

*The following is the Cadence ASI transmission lines circuit model description Section
***********************************
*[Begin]
*[Source] Cadence Design Systems, Inc. 2DEM 19.0.4.10301.249381   004 04/13/2021
*[Model Type] 2DEM W-element RLGC model 
*[Trace Name] 
*[Physical Parameters]
*		Trace width: 0.0003048
*		Trace Length: 0.0381
*		Number of Sections: 1
*[END] 
***********************************
.Model DEFAULT_2DEM_MODEL W MODELTYPE=RLGC N=1
+ L0=
+ 2.99797e-07
+ C0=
+ 1.23324e-10
+ R0=
+ 1.59073e+00
+ G0=
+ 0.00000e+00
+ Rs=
+ 7.97181e-04
+ Gd=
+ 1.99261e-11

W1 SE11 ref1 SE12 ref2
+ N=1 L='length' RLGCModel=DEFAULT_2DEM_MODEL FGD=5.00000000e+009
.ENDS
