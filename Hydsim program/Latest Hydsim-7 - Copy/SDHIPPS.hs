$description 
$method      RKF23
$duration    70.000000
$timestep    0.000500
$storestep   0.010000
$refreshinterval 0.100000
$maxsimstep  0.005
$minsimstep  1e-006
$tolerance   0.002000
$iterationlimit 10

;;; Hydraulic fluid used in entire system
FLUID        Constant-Viscosity
  Ftmpr                             5.0
  Visc                             10.0
  Dens                            1040.
  Beta                            24000

;;; Process fluid
PROCESS      Process
  PPrup                           180.0
  PPrdo                             1.0
  Pfvisc                           20.0
  Pfdens                          850.0
  Pfbeta                          10000
  Pftemp                          100.0

;;; Hydraulic Power Unit
HPU          H
  Pstart                          350.0
  Pstop                           440.0
  Pdepl                            0.10
  Rhp_a                            20.0
  Rha_r                            20.0
  Pset                            310.0
  Pdrop                            20.0
  Qref                             0.50
  Tamb                             20.0
  Height                           20.0
  PrRet                             1.0
  PrTreshold                        1.0
  QTreshold                        1.20

;;; HPU accumulator
ACCUMULATOR  H-Acc
  Template     @
  Tamb                             20.0
  Tau                              40.0
  Prepr                           130.0
  Prevol                           20.0
  Pretmpr                          20.0
  Dia                              11.0
  Len                               3.0
  Rh                               70.0

;;; Supply umbilical
LINE         Us
  Type         Constant
  Template     A
  Function     0x1002
  Plugs        50
  Form         1
  Diameter                       15.0          
  Length                          5000.
  Nplugs                         50.0          
  Rn                            1.50e-3
  Rhup                             20.0
  Rhdo                             30.0
  Hdiff                          -320.0
  Trnum                           2300.
  Beta                            24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Template supply manifold
MANIFOLD     Ms
  Template     A
  Function     0x1012
  Depth                           300.0
  Volume                           10.0
  AssistFlowGain                   0.20

;;; Subsea Control Module
SCM          S
  Tree         1
  Template     A
  Function     0x3
  Depth                           300.0
  Cv_fwr                          0.250
  Cv_fwq                         6.0e-3
  Svol                              4.0
  Rvol                              4.0
  PPrup                           180.0
  PPrdo                             1.0
  Cvrhp_a                           0.0

;;; SCM supply line
LINE         Ss
  Tree         1
  Template     A
  Function     0x1003
  Plugs        1
  Form         1
  Diameter                        12.70
  Length                           20.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                             70.0
  Rhdo                            137.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                            24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Xmas tree return manifold
MANIFOLD     T
  Tree         1
  Template     A
  Function     0x2004
  Depth                           300.0
  Volume                           20.0
  AssistFlowGain                   0.20

;;; Xmas-tree bladder
BLADDER      T-Bl
  Tree         1
  Template     A
  Function     0x2004
  Vmax                             20.0
  Vmin                             0.10
  Dia                              11.0
  Len                               5.0
  Rh                               20.0
  In_vol                           20.0

;;; Xmas tree return line
LINE         Tr
  Tree         1
  Template     A
  Function     0x2004
  Plugs        1
  Form         1
  Diameter                         9.50
  Length                            4.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                             30.0
  Rhdo                             30.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                            24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; SCM exhaust valve
EXHAUST_VALVE S-Ev
  Tree         1
  Template     A
  Function     0x3
  Cr                                3.0
  Inc                               3.0
  Qref                             0.10
  Tau                             0.010
  Rh                               10.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_5"-690_bar
  Tree         1
  Template     A
  Function     0x15
Pdia       209.55        ; Actuator piston diameter 
  Msdia                             0.0
Sc        0        ; Spring data was made available 16/3-02 
Spre       0.127        ; Spring pretension  
Mass       100           ; Mass of accelerated components  
Smax      0.1491        ; Actuator stroke. 
Voc       6           ; Pressurized volume in opening cavity  
Vsdia     50.8         ; Valve (Bonnet) stem diameter 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        4             ; Actuator Seal dynamic (colomb) friction factor.  
Mdf       0.1          ; Min dynamic friction in actuator seals. 
Sf        10            ; Actuator Seal static (stiction) friction factor  
Msf       0.25          ; Min static friction in actuator seals.? 
Ld        10.0          ; Linear damping of actuator. 
Vlim      0.0002        ; Velocity limit between stiction and colomb fric 
Adf       2.9            ; Acceleration damping factor   
Psl         14.3         ; piston seal width 
Vsl         9.5          ; valve stem seal width 
Osdia     47.63         ; Overide stem diameter 
Ossl      9.5         ; Overide stem seal width  
Vcc      10          ; Pressurized volume in closing cavity 
Vssl      38         ; Valve stem seal width  
Sodia    158.7        ; Gate seat OD 
Sidia     130.18        ; Gate seat ID  
Sw        18.52          ; Gate seat face width 
Gcop      18.92         ; Gate crack open point 
Ghdia    9.40          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen      20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff       0.01 ; Gate seal U-seal flow factor.  
Scff       0.05 ; Gate seal flow factor 
Scrpr     10         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      10     ; Pressurized volume in gate cavity  
Sdf       4             ; Stem Seal dynamic friction factor. 
Msdf      0.06          ; Min dynamic friction in Stem seal. 
Ssf       6             ; Stem packing seal static friction factor 
Mssf      0.09          ; Min static friction in Stem Packing Seal 
Gdf       10            ; Gate Seat dynamic friction factor. 
Mgdf      0.42          ; Min dynamic friction in Gate Seals 
Gsf       15            ; Gate Seal static friction factor 
Mgsf      0.83          ; Min static friction in Gate Seals 
Bsf        2.09          ; Average Belville spring force                [kN] 
Spfric      5              ; Spring friction loss                               [%] 
Sf1  -1073.74            ; Disc spring factor 1 
Sf2   1373.4            ; Disc spring factor 2 
Sf3         0.71684    ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     A
  Function     0x1015
  Plugs        1
  Form         1
  Diameter                         6.30
  Length                            6.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                            430.0
  Rhdo                             30.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                            24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         1
  Template     A
  Function     0x2015
  Plugs        1
  Form         1
  Diameter                         6.30
  Length                            3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                             30.0
  Rhdo                             30.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                            24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Template return manifold
MANIFOLD     Mr
  Template     A
  Function     0x2012
  Depth                           300.0
  Volume                           10.0
  AssistFlowGain                   0.20

;;; SCM return line
LINE         Sr
  Tree         1
  Template     A
  Function     0x2003
  Plugs        1
  Form         1
  Diameter                        12.70
  Length                           20.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0          
  Rhdo                           137.0          
  Hdiff                             0.0
  Trnum                           2300.
  Beta                            24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Return umbilical
LINE         Ur
  Type         Constant
  Template     A
  Function     0x2002
  Plugs        10
  Form         2
  Diameter                        12.70
  Length                          5000.
  Nplugs                           10.0
  Rn                            1.50e-3
  Rhup                             30.0
  Rhdo                             30.0
  Hdiff                           320.0
  Trnum                           2300.
  Beta                            24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Supply umbilical
LINE         Us
  Type         Constant
  Template     B
  Function     0x1002
  Plugs        50
  Form         1
  Diameter                         15.0
  Length                          5000.
  Nplugs                           50.0
  Rn                            1.50e-3
  Rhup                             20.0
  Rhdo                             30.0
  Hdiff                          -320.0
  Trnum                           2300.
  Beta                            24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Template supply manifold
MANIFOLD     Ms
  Template     B
  Function     0x1012
  Depth                           300.0
  Volume                           10.0
  AssistFlowGain                   0.20

;;; Return umbilical
LINE         Ur
  Type         Constant
  Template     B
  Function     0x2002
  Plugs        10
  Form         2
  Diameter                        12.70
  Length                          5000.
  Nplugs                           10.0
  Rn                            1.50e-3
  Rhup                             30.0
  Rhdo                             30.0
  Hdiff                           320.0
  Trnum                           2300.
  Beta                            24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Template return manifold
MANIFOLD     Mr
  Template     B
  Function     0x2012
  Depth                           300.0
  Volume                           10.0
  AssistFlowGain                   0.20

;;; Subsea Control Module
SCM          S
  Tree         1
  Template     B
  Function     0x3
  Depth                           300.0
  Cv_fwr                          0.250
  Cv_fwq                         6.0e-3
  Svol                              4.0
  Rvol                              4.0
  PPrup                           180.0
  PPrdo                             1.0
  Cvrhp_a                           0.0

;;; Xmas tree return manifold
MANIFOLD     T
  Tree         1
  Template     B
  Function     0x2004
  Depth                           300.0
  Volume                           20.0
  AssistFlowGain                   0.20

;;; Xmas-tree bladder
BLADDER      T-Bl
  Tree         1
  Template     B
  Function     0x2004
  Vmax                             20.0
  Vmin                             0.10
  Dia                              11.0
  Len                               5.0
  Rh                               20.0
  In_vol                           20.0

;;; SCM supply line
LINE         Ss
  Tree         1
  Template     B
  Function     0x1003
  Plugs        1
  Form         1
  Diameter                        12.70
  Length                           20.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0          
  Rhdo                           137.0          
  Hdiff                             0.0
  Trnum                           2300.
  Beta                            24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; SCM return line
LINE         Sr
  Tree         1
  Template     B
  Function     0x2003
  Plugs        1
  Form         1
  Diameter                        12.70
  Length                           20.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0          
  Rhdo                           137.0          
  Hdiff                             0.0
  Trnum                           2300.
  Beta                            24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Xmas tree return line
LINE         Tr
  Tree         1
  Template     B
  Function     0x2004
  Plugs        1
  Form         1
  Diameter                         9.50
  Length                            4.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                             30.0
  Rhdo                             30.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                            24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; SCM exhaust valve
EXHAUST_VALVE S-Ev
  Tree         1
  Template     B
  Function     0x3
  Cr                                3.0
  Inc                               3.0
  Qref                             0.10
  Tau                             0.010
  Rh                               10.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_5"-690_bar
  Tree         1
  Template     B
  Function     0x15
Pdia       209.55        ; Actuator piston diameter 
  Msdia                             0.0
Sc        0        ; Spring data was made available 16/3-02 
Spre       0.127        ; Spring pretension  
Mass       100           ; Mass of accelerated components  
Smax      0.1491        ; Actuator stroke. 
Voc       6           ; Pressurized volume in opening cavity  
Vsdia     50.8         ; Valve (Bonnet) stem diameter 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        4             ; Actuator Seal dynamic (colomb) friction factor.  
Mdf       0.1          ; Min dynamic friction in actuator seals. 
Sf        10            ; Actuator Seal static (stiction) friction factor  
Msf       0.25          ; Min static friction in actuator seals.? 
Ld        10.0          ; Linear damping of actuator. 
Vlim      0.0002        ; Velocity limit between stiction and colomb fric 
Adf       2.9            ; Acceleration damping factor   
Psl         14.3         ; piston seal width 
Vsl         9.5          ; valve stem seal width 
Osdia     47.63         ; Overide stem diameter 
Ossl      9.5         ; Overide stem seal width  
Vcc      10          ; Pressurized volume in closing cavity 
Vssl      38         ; Valve stem seal width  
Sodia    158.7        ; Gate seat OD 
Sidia     130.18        ; Gate seat ID  
Sw        18.52          ; Gate seat face width 
Gcop      18.92         ; Gate crack open point 
Ghdia    9.40          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen      20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff       0.01 ; Gate seal U-seal flow factor.  
Scff       0.05 ; Gate seal flow factor 
Scrpr     10         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      10     ; Pressurized volume in gate cavity  
Sdf       4             ; Stem Seal dynamic friction factor. 
Msdf      0.06          ; Min dynamic friction in Stem seal. 
Ssf       6             ; Stem packing seal static friction factor 
Mssf      0.09          ; Min static friction in Stem Packing Seal 
Gdf       10            ; Gate Seat dynamic friction factor. 
Mgdf      0.42          ; Min dynamic friction in Gate Seals 
Gsf       15            ; Gate Seal static friction factor 
Mgsf      0.83          ; Min static friction in Gate Seals 
Bsf        2.09          ; Average Belville spring force                [kN] 
Spfric      5              ; Spring friction loss                               [%] 
Sf1  -1073.74            ; Disc spring factor 1 
Sf2   1373.4            ; Disc spring factor 2 
Sf3         0.71684    ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     B
  Function     0x1015
  Plugs        1
  Form         1
  Diameter                         6.30
  Length                            6.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                             30.0
  Rhdo                             30.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                            24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         1
  Template     B
  Function     0x2015
  Plugs        1
  Form         1
  Diameter                         6.30
  Length                            3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                             30.0
  Rhdo                             30.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                            24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; SCM Receiver
RECEIVER     S-Rc
  Tree         1
  Template     A
  Function     0x3
  ALp                             1964.
  Aa                              39584
  Aret                            41548
  LpLDia                            4.0
  LpLlen                            4.0
  LpLRh                            50.0
  RetLDia                          6.30
  RetLlen                           3.0
  RetLRh                           50.0
  Smax                            0.602
  Mass                             50.0
  Mdf                              0.50
  Df                                4.0
  Msf                              0.80
  Sf                                6.0
  Adf                               2.0
  Ld                              500.0
  Vlim                         200.0e-6
  Accd                            0.050
; Animations:
Animate    A-A1-1

