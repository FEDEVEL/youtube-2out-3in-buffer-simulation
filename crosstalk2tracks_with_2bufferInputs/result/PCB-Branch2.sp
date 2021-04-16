.subckt PCB-Branch2
+SE11 ref1
+SE12 ref2

*Parameters:
+length = 0.008128

*The following is the Cadence ASI transmission lines circuit model description Section
***********************************
*[Begin]
*[Source] Cadence Design Systems, Inc. 2DEM 19.0.4.10301.249381   004 04/14/2021
*[Model Type] 2DEM W-element RLGC model 
*[Trace Name] 
*[Physical Parameters]
*		Trace width: 0.0003048
*		Trace Length: 0.02032
*		Number of Sections: 1
*[END] 
***********************************
.Model DEFAULT_2DEM_MODEL W MODELTYPE=RLGC N=1
+ L0=
+ 7.10406e-07
+ C0=
+ 4.71569e-11
+ R0=
+ 1.59073e+00
+ G0=
+ 0.00000e+00
+ Rs=
+ 5.31434e-04
+ Gd=
+ 7.31002e-12

W1 SE11 ref1 SE12 ref2
+ N=1 L='length' RLGCModel=DEFAULT_2DEM_MODEL FGD=5.00000000e+009
.ENDS
