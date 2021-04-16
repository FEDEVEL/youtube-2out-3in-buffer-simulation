.subckt PCB_TRACKS
+SE11 SE21 ref1
+SE12 SE22 ref2

*Parameters:
+length = 0.01016

*The following is the Cadence ASI transmission lines circuit model description Section
***********************************
*[Begin]
*[Source] Cadence Design Systems, Inc. 2DEM 19.0.4.10301.249381   004 04/14/2021
*[Model Type] 2DEM W-element RLGC model 
*[Physical Parameters]
*DEFAULT_2DEM_MODEL N = 2  Coupled Section Length = 50.8mm
*|Index     |Trace    |Layer Name    |Separation     |Width
*|0         |         |            |N/A            |0.3048mm
*|1         |         |            |0.6096mm       |0.3048mm
*[END] 
***********************************
.Model DEFAULT_2DEM_MODEL W MODELTYPE=RLGC N=2
+ L0=
+ 7.01653e-07
+ 3.45588e-07 7.01653e-07
+ C0=
+ 5.81294e-11
+ -2.46496e-11 5.81294e-11
+ R0=
+ 1.59073e+00
+ 0.00000e+00 1.59073e+00
+ G0=
+ 0.00000e+00
+ 0.00000e+00 0.00000e+00
+ Rs=
+ 5.31434e-04
+ 0.00000e+00 5.31434e-04
+ Gd=
+ 8.68977e-12
+ -3.38426e-12 8.68977e-12

W1 SE11 SE21 ref1 SE12 SE22 ref2
+ N=2 L='length' RLGCModel=DEFAULT_2DEM_MODEL FGD=5.00000000e+009
.ENDS
