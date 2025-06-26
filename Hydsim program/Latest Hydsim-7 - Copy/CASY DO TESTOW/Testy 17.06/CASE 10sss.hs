$description --                                   
$method      RKF23
$duration    150.000000
$timestep    0.000500
$storestep   0.010000
$refreshinterval 0.100000
$maxsimstep  0.05
$minsimstep  1e-006
$tolerance   0.0001
$stepadjustpar 0.900000
$iterationlimit 10

;;; Hydraulic fluid used in entire system
FLUID        MBO-HW-443
  Ftmpr                          3.60
  Visc                           10.0
  Dens                           1040.
  Beta                           24000

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
  Pstart                         282.0
  Pstop                          313.0
  Pdepl                          0.334
  Rhp_a                          70.0
  Rha_r                          70.0
  Pset                           282.0
  Pdrop                            20.0                  
  Qref                             0.50                  
  Tamb                           50.0
  Height                         30.0
  PrRet                          1.0
  PrTreshold                     1.0
  QTreshold                      1.20

;;; HPU accumulator
ACCUMULATOR  H-Acc
  Template     @
  Tamb                           50.0
  Tau                            40.0
  Prepr                          182.0
  Prevol                         1026.
  Pretmpr                        32.0
  Dia                            11.0
  Len                            3.0
  Rh                             70.0

;;; Supply umbilical
LINE         Us
  Type         Constant
  Template     A
  Function                       0x1002
  Plugs                          193
  Form                           1
  Diameter                       11.0
  Length                         3.0
  Nplugs                         x
  Rn                             1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                          0.0
  Trnum                          x
  Beta                           24000
  Binc                           x
  Bexp                           0.0
  VEcorr                         x
  Mwp                            x

;;; Template supply manifold
MANIFOLD     Ms
  Template     A
  Template     A
  Function     0x1012
  Function     0x1012
  Depth        1800.
  Depth                          1800.                                 
  Volume                           10.0                  
  Volume                           10.0                  
  AssistFlowGain                   0.20                  
  AssistFlowGain                   0.20                  


;;; Supply umbilical
LINE         Us
  Type         Constant
  Template     B
  Function                       0x1002
  Plugs                          1
  Form                           0
  Diameter                       11.0
  Length                         3.0
  Nplugs                         1.0
  Rn                             1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                          0.0
  Trnum                          2300.
  Beta                           24000
  Binc                           0.0
  Bexp                           0.0
  VEcorr                         1.0
  Mwp                            300.0

;;; Template supply manifold
MANIFOLD     Ms
  Template     B
  Template     B
  Function     0x1022
  Function     0x1022
  Depth        1800.
  Depth                           1800.                            
  Volume                           10.0                  
  Volume                           10.0                  
  AssistFlowGain                   0.20                  
  AssistFlowGain                   0.20                  


;;; Supply umbilical
LINE         Us
  Type         Constant
  Template     C
  Function                       0x1002
  Plugs                          31
  Form                           1
  Diameter                       11.0
  Length                         3.0
  Nplugs                         31.0
  Rn                             1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                          0.0
  Trnum                          2300.
  Beta                           24000
  Binc                           0.0
  Bexp                           0.0
  VEcorr                         1.0
  Mwp                            300.0

;;; Template supply manifold
MANIFOLD     Ms
  Template     C
  Template     C
  Function     0x1032
  Function     0x1032
  Depth        1862.
  Depth                           1862.                                 
  Volume                           10.0                  
  Volume                           10.0                  
  AssistFlowGain                   0.20                  
  AssistFlowGain                   0.20                  


;;; Supply umbilical
LINE         Us
  Type         Constant
  Template     D
  Function                       0x1002
  Plugs                          4
  Form                           0
  Diameter                       11.0
  Length                         3.0
  Nplugs                         4.0
  Rn                             1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                          -1830.
  Trnum                          2300.
  Beta                           24000
  Binc                           0.0
  Bexp                           0.0
  VEcorr                         1.0
  Mwp                            300.0

;;; Template supply manifold
MANIFOLD     Ms
  Template     D
  Template     D
  Function     0x1042
  Function     0x1042
  Depth        1862.
  Depth                           1862.              
  Volume                           10.0         
  Volume                           10.0         
  AssistFlowGain                   0.20         
  AssistFlowGain                   0.20         


;;; Subsea Control Module
SCM          S
  Tree         1
  Template     D
  Function     0x3
  Depth                           1862.                  
  Cv_fwr                          0.250        
  Cv_fwq                         6.0e-3        
  Svol                              4.0        
  Rvol                              4.0        
  PPrup                          593.0                  
  PPrdo                             1.0        
  Cvrhp_a                           0.0        

;;; Xmas tree return manifold
MANIFOLD     T
  Tree         1
  Template     D
  Function     0x2004
  Depth                           1862.                  
  Volume                         10.0                  
  AssistFlowGain                   0.20        

;;; Xmas-tree bladder
BLADDER      T-Bl
  Tree         1
  Template     D
  Function     0x2004
  Vmax                           86.0                      
  Vmin                             0.10        
  Dia                            11.0
  Len                            3.0
  Rh                             70.0
  In_vol                         86.0                      

;;; SCM supply line
LINE         Ss
  Tree         1
  Template     D
  Function     0x1003
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0        
  Rn                            1.50e-3        
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0        
  Trnum                           2300.        
  Beta                           24000
  Binc                              0.0        
  Bexp                              0.0        
  VEcorr                            1.0        
  Mwp                             300.0        

;;; Xmas tree return line
LINE         Tr
  Tree         1
  Template     D
  Function     0x2004
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0        
  Rn                            1.50e-3        
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0        
  Trnum                           2300.        
  Beta                           24000
  Binc                              0.0        
  Bexp                              0.0        
  VEcorr                            1.0        
  Mwp                             300.0        

;;; SCM exhaust valve
EXHAUST_VALVE S-Ev
  Tree         1
  Template     D
  Function     0x3
  Cr                                3.0        
  Inc                               3.0        
  Qref                             0.10        
  Tau                            40.0
  Rh                             70.0

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     D
  Function     0x1015
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0        
  Rn                            1.50e-3        
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0        
  Trnum                           2300.        
  Beta                           24000
  Binc                              0.0        
  Bexp                              0.0        
  VEcorr                            1.0        
  Mwp                             300.0        

;;; Actuator close line
LINE         Ac
  Tree         1
  Template     D
  Function     0x2015
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0        
  Rn                            1.50e-3        
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0        
  Trnum                           2300.        
  Beta                           24000
  Binc                              0.0        
  Bexp                              0.0        
  VEcorr                            1.0        
  Mwp                             300.0        

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     D
  Function     0x1025
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0        
  Rn                            1.50e-3        
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0        
  Trnum                           2300.        
  Beta                           24000
  Binc                              0.0        
  Bexp                              0.0        
  VEcorr                            1.0        
  Mwp                             300.0        

;;; Actuator close line
LINE         Ac
  Tree         1
  Template     D
  Function     0x2025
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0        
  Rn                            1.50e-3        
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0        
  Trnum                           2300.        
  Beta                           24000
  Binc                              0.0        
  Bexp                              0.0        
  VEcorr                            1.0        
  Mwp                             300.0        

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     D
  Function     0x1035
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0        
  Rn                            1.50e-3        
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0        
  Trnum                           2300.        
  Beta                           24000
  Binc                              0.0        
  Bexp                              0.0        
  VEcorr                            1.0        
  Mwp                             300.0        

;;; Actuator close line
LINE         Ac
  Tree         1
  Template     D
  Function     0x2035
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0        
  Rn                            1.50e-3        
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0        
  Trnum                           2300.        
  Beta                           24000
  Binc                              0.0        
  Bexp                              0.0        
  VEcorr                            1.0        
  Mwp                             300.0        

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     D
  Function     0x1045
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0        
  Rn                            1.50e-3        
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0        
  Trnum                           2300.        
  Beta                           24000
  Binc                              0.0        
  Bexp                              0.0        
  VEcorr                            1.0        
  Mwp                             300.0        

;;; Actuator close line
LINE         Ac
  Tree         1
  Template     D
  Function     0x2045
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0        
  Rn                            1.50e-3        
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0        
  Trnum                           2300.        
  Beta                           24000
  Binc                              0.0        
  Bexp                              0.0        
  VEcorr                            1.0        
  Mwp                             300.0        

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     D
  Function     0x1055
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0        
  Rn                            1.50e-3        
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0        
  Trnum                           2300.        
  Beta                           24000
  Binc                              0.0        
  Bexp                              0.0        
  VEcorr                            1.0        
  Mwp                             300.0        

;;; Actuator close line
LINE         Ac
  Tree         1
  Template     D
  Function     0x2055
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0        
  Rn                            1.50e-3        
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0        
  Trnum                           2300.        
  Beta                           24000
  Binc                              0.0        
  Bexp                              0.0        
  VEcorr                            1.0        
  Mwp                             300.0        

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_5"-690_bar
  Tree         1
  Template     D
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
Sdf       4       ; Stem Seal dynamic friction factor.        [%]         
Msdf      0.06    ; Min dynamic friction in Stem seal.        [kN]         
Ssf       6       ; Stem packing seal static friction factor  [%]         
Mssf      0.09    ; Min static friction in Stem Packing Seal  [kN]         
Gdf       10      ; Gate Seat dynamic friction factor.        [%]          
Mgdf      0.42    ; Min dynamic friction in Gate Seals        [kN]         
Gsf       15      ; Gate Seal static friction factor          [%]         
Mgsf      0.83    ; Min static friction in Gate Seals         [kN]         
Bsf        2.09   ; Average Belville spring force             [kN]         
Spfric      5     ; Spring friction loss                      [%]         
Sf1  -1073.74            ; Disc spring factor 1         
Sf2   1373.4            ; Disc spring factor 2         
Sf3         0.71684    ; Disc spring factor 3         

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_5"-690_bar
  Tree         1
  Template     D
  Function     0x25
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
Sdf       4       ; Stem Seal dynamic friction factor.        [%]         
Msdf      0.06    ; Min dynamic friction in Stem seal.        [kN]         
Ssf       6       ; Stem packing seal static friction factor  [%]         
Mssf      0.09    ; Min static friction in Stem Packing Seal  [kN]         
Gdf       10      ; Gate Seat dynamic friction factor.        [%]          
Mgdf      0.42    ; Min dynamic friction in Gate Seals        [kN]         
Gsf       15      ; Gate Seal static friction factor          [%]         
Mgsf      0.83    ; Min static friction in Gate Seals         [kN]         
Bsf        2.09   ; Average Belville spring force             [kN]         
Spfric      5     ; Spring friction loss                      [%]         
Sf1  -1073.74            ; Disc spring factor 1         
Sf2   1373.4            ; Disc spring factor 2         
Sf3         0.71684    ; Disc spring factor 3         

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-690_bar
  Tree         1
  Template     D
  Function     0x35
Pdia       114.3        ; Actuator piston diameter  [mm]         
  Msdia                             0.0        
Sc        0        ; Actuator spring constant = 0 forces the disc sping parameters to be used         
Spre       0.1172        ; Spring pretension   [m]         
Mass       50           ; Mass of accelerated components   [kg]         
Smax      0.06502        ; Actuator stroke.   [m]         
Voc       .6           ; Pressurized volume in opening cavity          
Vsdia     38.1         ; Valve stem diameter  [mm]         
  Cvrhp_a                         2030.        
  Cvrha_r                         430.0        
Df        4             ; Actuator Seal dynamic (colomb) friction factor.          
Mdf       0.04          ; Min dynamic friction in actuator seals.         
Sf        10            ; Actuator Seal static (stiction) friction factor          
Msf       0.1          ; Min static friction in actuator seals.         
Ld        10.0          ; Linear damping of actuator.         
Vlim      0.0002        ; Velocity limit between stiction and colomb fric         
Adf             2.45            ; Acceleration damping factor           
Psl         10.92         ; piston seal width         
Vsl         9.5          ; valve stem seal width         
Osdia     34.93         ; Overide stem diameter         
Ossl      9.5         ; Overide stem seal width          
Vcc       1          ; Pressurized volume in closing cavity         
Vssl      47.8         ; Valve stem seal width         
Sodia    69.77        ; Gate seat OD         
Sidia     52.39        ; Gate seat ID          
Sw        8.89          ; Gate seat face width         
Gcop      12.65         ; Gate crack open point         
Ghdia    5          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm]         
Ghlen      20.          ; Total hole length.                     [mm]         
Ghrn   .05           ;  Roughness of wetted hole surface    [mm]         
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow         
Suff       0.01 ; Gate seal U-seal flow factor.          
Scff       0.05 ; Gate seal flow factor         
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ...         
Vgc      3.     ; Pressurized volume in gate cavity          
Sdf       4             ; Stem Seal dynamic friction factor.         
Msdf      0.06          ; Min dynamic friction in Stem seal.         
Ssf       6             ; Stem packing seal static friction factor         
Mssf      0.09          ; Min static friction in Stem Packing Seal         
Gdf       10            ; Gate Seat dynamic friction factor.         
Mgdf      0.42          ; Min dynamic friction in Gate Seals         
Gsf       15            ; Gate Seal static friction factor         
Mgsf      0.63          ; Min static friction in Gate Seals         
Bsf       0.58          ; Average Belville spring force                [kN]         
Spfric      5              ; Spring friction loss                               [%]         
Sf1  -1155.75          ; Disc spring factor 1         
Sf2   1196.17            ; Disc spring factor 2         
Sf3         0.85539               ; Disc spring factor 3         

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-690_bar
  Tree         1
  Template     D
  Function     0x45
Pdia       114.3        ; Actuator piston diameter  [mm]         
  Msdia                             0.0        
Sc        0        ; Actuator spring constant = 0 forces the disc sping parameters to be used         
Spre       0.1172        ; Spring pretension   [m]         
Mass       50           ; Mass of accelerated components   [kg]         
Smax      0.06502        ; Actuator stroke.   [m]         
Voc       .6           ; Pressurized volume in opening cavity          
Vsdia     38.1         ; Valve stem diameter  [mm]         
  Cvrhp_a                         2030.        
  Cvrha_r                         430.0        
Df        4             ; Actuator Seal dynamic (colomb) friction factor.          
Mdf       0.04          ; Min dynamic friction in actuator seals.         
Sf        10            ; Actuator Seal static (stiction) friction factor          
Msf       0.1          ; Min static friction in actuator seals.         
Ld        10.0          ; Linear damping of actuator.         
Vlim      0.0002        ; Velocity limit between stiction and colomb fric         
Adf             2.45            ; Acceleration damping factor           
Psl         10.92         ; piston seal width         
Vsl         9.5          ; valve stem seal width         
Osdia     34.93         ; Overide stem diameter         
Ossl      9.5         ; Overide stem seal width          
Vcc       1          ; Pressurized volume in closing cavity         
Vssl      47.8         ; Valve stem seal width         
Sodia    69.77        ; Gate seat OD         
Sidia     52.39        ; Gate seat ID          
Sw        8.89          ; Gate seat face width         
Gcop      12.65         ; Gate crack open point         
Ghdia    5          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm]         
Ghlen      20.          ; Total hole length.                     [mm]         
Ghrn   .05           ;  Roughness of wetted hole surface    [mm]         
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow         
Suff       0.01 ; Gate seal U-seal flow factor.          
Scff       0.05 ; Gate seal flow factor         
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ...         
Vgc      3.     ; Pressurized volume in gate cavity          
Sdf       4             ; Stem Seal dynamic friction factor.         
Msdf      0.06          ; Min dynamic friction in Stem seal.         
Ssf       6             ; Stem packing seal static friction factor         
Mssf      0.09          ; Min static friction in Stem Packing Seal         
Gdf       10            ; Gate Seat dynamic friction factor.         
Mgdf      0.42          ; Min dynamic friction in Gate Seals         
Gsf       15            ; Gate Seal static friction factor         
Mgsf      0.63          ; Min static friction in Gate Seals         
Bsf       0.58          ; Average Belville spring force                [kN]         
Spfric      5              ; Spring friction loss                               [%]         
Sf1  -1155.75          ; Disc spring factor 1         
Sf2   1196.17            ; Disc spring factor 2         
Sf3         0.85539               ; Disc spring factor 3         

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-690_bar
  Tree         1
  Template     D
  Function     0x55
Pdia       114.3        ; Actuator piston diameter  [mm]         
  Msdia                             0.0        
Sc        0        ; Actuator spring constant = 0 forces the disc sping parameters to be used         
Spre       0.1172        ; Spring pretension   [m]         
Mass       50           ; Mass of accelerated components   [kg]         
Smax      0.06502        ; Actuator stroke.   [m]         
Voc       .6           ; Pressurized volume in opening cavity          
Vsdia     38.1         ; Valve stem diameter  [mm]         
  Cvrhp_a                         2030.        
  Cvrha_r                         430.0        
Df        4             ; Actuator Seal dynamic (colomb) friction factor.          
Mdf       0.04          ; Min dynamic friction in actuator seals.         
Sf        10            ; Actuator Seal static (stiction) friction factor          
Msf       0.1          ; Min static friction in actuator seals.         
Ld        10.0          ; Linear damping of actuator.         
Vlim      0.0002        ; Velocity limit between stiction and colomb fric         
Adf             2.45            ; Acceleration damping factor           
Psl         10.92         ; piston seal width         
Vsl         9.5          ; valve stem seal width         
Osdia     34.93         ; Overide stem diameter         
Ossl      9.5         ; Overide stem seal width          
Vcc       1          ; Pressurized volume in closing cavity         
Vssl      47.8         ; Valve stem seal width         
Sodia    69.77        ; Gate seat OD         
Sidia     52.39        ; Gate seat ID          
Sw        8.89          ; Gate seat face width         
Gcop      12.65         ; Gate crack open point         
Ghdia    5          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm]         
Ghlen      20.          ; Total hole length.                     [mm]         
Ghrn   .05           ;  Roughness of wetted hole surface    [mm]         
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow         
Suff       0.01 ; Gate seal U-seal flow factor.          
Scff       0.05 ; Gate seal flow factor         
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ...         
Vgc      3.     ; Pressurized volume in gate cavity          
Sdf       4             ; Stem Seal dynamic friction factor.         
Msdf      0.06          ; Min dynamic friction in Stem seal.         
Ssf       6             ; Stem packing seal static friction factor         
Mssf      0.09          ; Min static friction in Stem Packing Seal         
Gdf       10            ; Gate Seat dynamic friction factor.         
Mgdf      0.42          ; Min dynamic friction in Gate Seals         
Gsf       15            ; Gate Seal static friction factor         
Mgsf      0.63          ; Min static friction in Gate Seals         
Bsf       0.58          ; Average Belville spring force                [kN]         
Spfric      5              ; Spring friction loss                               [%]         
Sf1  -1155.75          ; Disc spring factor 1         
Sf2   1196.17            ; Disc spring factor 2         
Sf3         0.85539               ; Disc spring factor 3         
EXHAUST_VALVE T-Ev
  Tree         1
  Template     D
  Function     0x2004
  Cr                               40.0        
  Inc                               3.0        
  Qref                             0.10        
  Tau                            40.0
  Rh                             70.0

;;; SCM bladder
BLADDER      S-Bl
  Tree         1
  Template     D
  Function     0x3
  Vmax                           1.0           
  Vmin                             0.10 
  Dia                            11.0
  Len                            3.0
  Rh                             70.0
  In_vol                         1.0           

;;; Subsea Control Module
SCM          S
  Tree         1
  Template     A
  Function     0x3
  Depth                           1862.     
  Cv_fwr                          0.250
  Cv_fwq                         6.0e-3
  Svol                              4.0
  Rvol                              4.0
  PPrup                          593.0          
  PPrdo                             1.0
  Cvrhp_a                           0.0

;;; Xmas tree return manifold
MANIFOLD     T
  Tree         1
  Template     A
  Function     0x2004
  Depth                           1862.     
  Volume                         10.0          
  AssistFlowGain                   0.20
EXHAUST_VALVE T-Ev
  Tree         1
  Template     A
  Function     0x2004
  Cr                             40.0          
  Inc                               3.0
  Qref                             0.10
  Tau                            40.0
  Rh                             70.0

;;; Xmas-tree bladder
BLADDER      T-Bl
  Tree         1
  Template     A
  Function     0x2004
  Vmax                           86.0          
  Vmin                             0.10
  Dia                            11.0
  Len                            3.0
  Rh                             70.0
  In_vol                         86.0          

;;; SCM supply line
LINE         Ss
  Tree         1
  Template     A
  Function     0x1003
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Xmas tree return line
LINE         Tr
  Tree         1
  Template     A
  Function     0x2004
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; SCM bladder
BLADDER      S-Bl
  Tree         1
  Template     A
  Function     0x3
  Vmax                           1.0          
  Vmin                             0.10
  Dia                            11.0
  Len                            3.0
  Rh                             70.0
  In_vol                         1.0          

;;; SCM exhaust valve
EXHAUST_VALVE S-Ev
  Tree         1
  Template     A
  Function     0x3
  Cr                                3.0
  Inc                               3.0
  Qref                             0.10
  Tau                            40.0
  Rh                             70.0

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
Sdf       4       ; Stem Seal dynamic friction factor.        [%] 
Msdf      0.06    ; Min dynamic friction in Stem seal.        [kN] 
Ssf       6       ; Stem packing seal static friction factor  [%] 
Mssf      0.09    ; Min static friction in Stem Packing Seal  [kN] 
Gdf       10      ; Gate Seat dynamic friction factor.        [%]  
Mgdf      0.42    ; Min dynamic friction in Gate Seals        [kN] 
Gsf       15      ; Gate Seal static friction factor          [%] 
Mgsf      0.83    ; Min static friction in Gate Seals         [kN] 
Bsf        2.09   ; Average Belville spring force             [kN] 
Spfric      5     ; Spring friction loss                      [%] 
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
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
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
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_5"-690_bar
  Tree         1
  Template     A
  Function     0x25
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
Sdf       4       ; Stem Seal dynamic friction factor.        [%] 
Msdf      0.06    ; Min dynamic friction in Stem seal.        [kN] 
Ssf       6       ; Stem packing seal static friction factor  [%] 
Mssf      0.09    ; Min static friction in Stem Packing Seal  [kN] 
Gdf       10      ; Gate Seat dynamic friction factor.        [%]  
Mgdf      0.42    ; Min dynamic friction in Gate Seals        [kN] 
Gsf       15      ; Gate Seal static friction factor          [%] 
Mgsf      0.83    ; Min static friction in Gate Seals         [kN] 
Bsf        2.09   ; Average Belville spring force             [kN] 
Spfric      5     ; Spring friction loss                      [%] 
Sf1  -1073.74            ; Disc spring factor 1 
Sf2   1373.4            ; Disc spring factor 2 
Sf3         0.71684    ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     A
  Function     0x1025
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         1
  Template     A
  Function     0x2025
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-690_bar
  Tree         1
  Template     A
  Function     0x35
Pdia       114.3        ; Actuator piston diameter  [mm] 
  Msdia                             0.0
Sc        0        ; Actuator spring constant = 0 forces the disc sping parameters to be used 
Spre       0.1172        ; Spring pretension   [m] 
Mass       50           ; Mass of accelerated components   [kg] 
Smax      0.06502        ; Actuator stroke.   [m] 
Voc       .6           ; Pressurized volume in opening cavity  
Vsdia     38.1         ; Valve stem diameter  [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        4             ; Actuator Seal dynamic (colomb) friction factor.  
Mdf       0.04          ; Min dynamic friction in actuator seals. 
Sf        10            ; Actuator Seal static (stiction) friction factor  
Msf       0.1          ; Min static friction in actuator seals. 
Ld        10.0          ; Linear damping of actuator. 
Vlim      0.0002        ; Velocity limit between stiction and colomb fric 
Adf             2.45            ; Acceleration damping factor   
Psl         10.92         ; piston seal width 
Vsl         9.5          ; valve stem seal width 
Osdia     34.93         ; Overide stem diameter 
Ossl      9.5         ; Overide stem seal width  
Vcc       1          ; Pressurized volume in closing cavity 
Vssl      47.8         ; Valve stem seal width 
Sodia    69.77        ; Gate seat OD 
Sidia     52.39        ; Gate seat ID  
Sw        8.89          ; Gate seat face width 
Gcop      12.65         ; Gate crack open point 
Ghdia    5          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen      20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff       0.01 ; Gate seal U-seal flow factor.  
Scff       0.05 ; Gate seal flow factor 
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3.     ; Pressurized volume in gate cavity  
Sdf       4             ; Stem Seal dynamic friction factor. 
Msdf      0.06          ; Min dynamic friction in Stem seal. 
Ssf       6             ; Stem packing seal static friction factor 
Mssf      0.09          ; Min static friction in Stem Packing Seal 
Gdf       10            ; Gate Seat dynamic friction factor. 
Mgdf      0.42          ; Min dynamic friction in Gate Seals 
Gsf       15            ; Gate Seal static friction factor 
Mgsf      0.63          ; Min static friction in Gate Seals 
Bsf       0.58          ; Average Belville spring force                [kN] 
Spfric      5              ; Spring friction loss                               [%] 
Sf1  -1155.75          ; Disc spring factor 1 
Sf2   1196.17            ; Disc spring factor 2 
Sf3         0.85539               ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     A
  Function     0x1035
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         1
  Template     A
  Function     0x2035
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-690_bar
  Tree         1
  Template     A
  Function     0x45
Pdia       114.3        ; Actuator piston diameter  [mm] 
  Msdia                             0.0
Sc        0        ; Actuator spring constant = 0 forces the disc sping parameters to be used 
Spre       0.1172        ; Spring pretension   [m] 
Mass       50           ; Mass of accelerated components   [kg] 
Smax      0.06502        ; Actuator stroke.   [m] 
Voc       .6           ; Pressurized volume in opening cavity  
Vsdia     38.1         ; Valve stem diameter  [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        4             ; Actuator Seal dynamic (colomb) friction factor.  
Mdf       0.04          ; Min dynamic friction in actuator seals. 
Sf        10            ; Actuator Seal static (stiction) friction factor  
Msf       0.1          ; Min static friction in actuator seals. 
Ld        10.0          ; Linear damping of actuator. 
Vlim      0.0002        ; Velocity limit between stiction and colomb fric 
Adf             2.45            ; Acceleration damping factor   
Psl         10.92         ; piston seal width 
Vsl         9.5          ; valve stem seal width 
Osdia     34.93         ; Overide stem diameter 
Ossl      9.5         ; Overide stem seal width  
Vcc       1          ; Pressurized volume in closing cavity 
Vssl      47.8         ; Valve stem seal width 
Sodia    69.77        ; Gate seat OD 
Sidia     52.39        ; Gate seat ID  
Sw        8.89          ; Gate seat face width 
Gcop      12.65         ; Gate crack open point 
Ghdia    5          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen      20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff       0.01 ; Gate seal U-seal flow factor.  
Scff       0.05 ; Gate seal flow factor 
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3.     ; Pressurized volume in gate cavity  
Sdf       4             ; Stem Seal dynamic friction factor. 
Msdf      0.06          ; Min dynamic friction in Stem seal. 
Ssf       6             ; Stem packing seal static friction factor 
Mssf      0.09          ; Min static friction in Stem Packing Seal 
Gdf       10            ; Gate Seat dynamic friction factor. 
Mgdf      0.42          ; Min dynamic friction in Gate Seals 
Gsf       15            ; Gate Seal static friction factor 
Mgsf      0.63          ; Min static friction in Gate Seals 
Bsf       0.58          ; Average Belville spring force                [kN] 
Spfric      5              ; Spring friction loss                               [%] 
Sf1  -1155.75          ; Disc spring factor 1 
Sf2   1196.17            ; Disc spring factor 2 
Sf3         0.85539               ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     A
  Function     0x1045
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         1
  Template     A
  Function     0x2045
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-690_bar
  Tree         1
  Template     A
  Function     0x55
Pdia       114.3        ; Actuator piston diameter  [mm] 
  Msdia                             0.0
Sc        0        ; Actuator spring constant = 0 forces the disc sping parameters to be used 
Spre       0.1172        ; Spring pretension   [m] 
Mass       50           ; Mass of accelerated components   [kg] 
Smax      0.06502        ; Actuator stroke.   [m] 
Voc       .6           ; Pressurized volume in opening cavity  
Vsdia     38.1         ; Valve stem diameter  [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        4             ; Actuator Seal dynamic (colomb) friction factor.  
Mdf       0.04          ; Min dynamic friction in actuator seals. 
Sf        10            ; Actuator Seal static (stiction) friction factor  
Msf       0.1          ; Min static friction in actuator seals. 
Ld        10.0          ; Linear damping of actuator. 
Vlim      0.0002        ; Velocity limit between stiction and colomb fric 
Adf             2.45            ; Acceleration damping factor   
Psl         10.92         ; piston seal width 
Vsl         9.5          ; valve stem seal width 
Osdia     34.93         ; Overide stem diameter 
Ossl      9.5         ; Overide stem seal width  
Vcc       1          ; Pressurized volume in closing cavity 
Vssl      47.8         ; Valve stem seal width 
Sodia    69.77        ; Gate seat OD 
Sidia     52.39        ; Gate seat ID  
Sw        8.89          ; Gate seat face width 
Gcop      12.65         ; Gate crack open point 
Ghdia    5          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen      20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff       0.01 ; Gate seal U-seal flow factor.  
Scff       0.05 ; Gate seal flow factor 
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3.     ; Pressurized volume in gate cavity  
Sdf       4             ; Stem Seal dynamic friction factor. 
Msdf      0.06          ; Min dynamic friction in Stem seal. 
Ssf       6             ; Stem packing seal static friction factor 
Mssf      0.09          ; Min static friction in Stem Packing Seal 
Gdf       10            ; Gate Seat dynamic friction factor. 
Mgdf      0.42          ; Min dynamic friction in Gate Seals 
Gsf       15            ; Gate Seal static friction factor 
Mgsf      0.63          ; Min static friction in Gate Seals 
Bsf       0.58          ; Average Belville spring force                [kN] 
Spfric      5              ; Spring friction loss                               [%] 
Sf1  -1155.75          ; Disc spring factor 1 
Sf2   1196.17            ; Disc spring factor 2 
Sf3         0.85539               ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     A
  Function     0x1055
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         1
  Template     A
  Function     0x2055
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Subsea Control Module
SCM          S
  Tree         2
  Template     A
  Function     0x3
  Depth                           1862.     
  Cv_fwr                          0.250
  Cv_fwq                         6.0e-3
  Svol                              4.0
  Rvol                              4.0
  PPrup                          593.0          
  PPrdo                             1.0
  Cvrhp_a                           0.0

;;; Xmas tree return manifold
MANIFOLD     T
  Tree         2
  Template     A
  Function     0x2004
  Depth                           1862.     
  Volume                         10.0          
  AssistFlowGain                   0.20
EXHAUST_VALVE T-Ev
  Tree         2
  Template     A
  Function     0x2004
  Cr                             40.0          
  Inc                               3.0
  Qref                             0.10
  Tau                            40.0
  Rh                             70.0

;;; Xmas-tree bladder
BLADDER      T-Bl
  Tree         2
  Template     A
  Function     0x2004
  Vmax                           86.0          
  Vmin                             0.10
  Dia                            11.0
  Len                            3.0
  Rh                             70.0
  In_vol                         86.0          

;;; SCM supply line
LINE         Ss
  Tree         2
  Template     A
  Function     0x1003
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Xmas tree return line
LINE         Tr
  Tree         2
  Template     A
  Function     0x2004
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; SCM bladder
BLADDER      S-Bl
  Tree         2
  Template     A
  Function     0x3
  Vmax                           1.0          
  Vmin                             0.10
  Dia                            11.0
  Len                            3.0
  Rh                             70.0
  In_vol                         1.0          

;;; SCM exhaust valve
EXHAUST_VALVE S-Ev
  Tree         2
  Template     A
  Function     0x3
  Cr                                3.0
  Inc                               3.0
  Qref                             0.10
  Tau                            40.0
  Rh                             70.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_5"-690_bar
  Tree         2
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
Sdf       4       ; Stem Seal dynamic friction factor.        [%] 
Msdf      0.06    ; Min dynamic friction in Stem seal.        [kN] 
Ssf       6       ; Stem packing seal static friction factor  [%] 
Mssf      0.09    ; Min static friction in Stem Packing Seal  [kN] 
Gdf       10      ; Gate Seat dynamic friction factor.        [%]  
Mgdf      0.42    ; Min dynamic friction in Gate Seals        [kN] 
Gsf       15      ; Gate Seal static friction factor          [%] 
Mgsf      0.83    ; Min static friction in Gate Seals         [kN] 
Bsf        2.09   ; Average Belville spring force             [kN] 
Spfric      5     ; Spring friction loss                      [%] 
Sf1  -1073.74            ; Disc spring factor 1 
Sf2   1373.4            ; Disc spring factor 2 
Sf3         0.71684    ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         2
  Template     A
  Function     0x1015
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         2
  Template     A
  Function     0x2015
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_5"-690_bar
  Tree         2
  Template     A
  Function     0x25
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
Sdf       4       ; Stem Seal dynamic friction factor.        [%] 
Msdf      0.06    ; Min dynamic friction in Stem seal.        [kN] 
Ssf       6       ; Stem packing seal static friction factor  [%] 
Mssf      0.09    ; Min static friction in Stem Packing Seal  [kN] 
Gdf       10      ; Gate Seat dynamic friction factor.        [%]  
Mgdf      0.42    ; Min dynamic friction in Gate Seals        [kN] 
Gsf       15      ; Gate Seal static friction factor          [%] 
Mgsf      0.83    ; Min static friction in Gate Seals         [kN] 
Bsf        2.09   ; Average Belville spring force             [kN] 
Spfric      5     ; Spring friction loss                      [%] 
Sf1  -1073.74            ; Disc spring factor 1 
Sf2   1373.4            ; Disc spring factor 2 
Sf3         0.71684    ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         2
  Template     A
  Function     0x1025
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         2
  Template     A
  Function     0x2025
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-690_bar
  Tree         2
  Template     A
  Function     0x35
Pdia       114.3        ; Actuator piston diameter  [mm] 
  Msdia                             0.0
Sc        0        ; Actuator spring constant = 0 forces the disc sping parameters to be used 
Spre       0.1172        ; Spring pretension   [m] 
Mass       50           ; Mass of accelerated components   [kg] 
Smax      0.06502        ; Actuator stroke.   [m] 
Voc       .6           ; Pressurized volume in opening cavity  
Vsdia     38.1         ; Valve stem diameter  [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        4             ; Actuator Seal dynamic (colomb) friction factor.  
Mdf       0.04          ; Min dynamic friction in actuator seals. 
Sf        10            ; Actuator Seal static (stiction) friction factor  
Msf       0.1          ; Min static friction in actuator seals. 
Ld        10.0          ; Linear damping of actuator. 
Vlim      0.0002        ; Velocity limit between stiction and colomb fric 
Adf             2.45            ; Acceleration damping factor   
Psl         10.92         ; piston seal width 
Vsl         9.5          ; valve stem seal width 
Osdia     34.93         ; Overide stem diameter 
Ossl      9.5         ; Overide stem seal width  
Vcc       1          ; Pressurized volume in closing cavity 
Vssl      47.8         ; Valve stem seal width 
Sodia    69.77        ; Gate seat OD 
Sidia     52.39        ; Gate seat ID  
Sw        8.89          ; Gate seat face width 
Gcop      12.65         ; Gate crack open point 
Ghdia    5          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen      20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff       0.01 ; Gate seal U-seal flow factor.  
Scff       0.05 ; Gate seal flow factor 
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3.     ; Pressurized volume in gate cavity  
Sdf       4             ; Stem Seal dynamic friction factor. 
Msdf      0.06          ; Min dynamic friction in Stem seal. 
Ssf       6             ; Stem packing seal static friction factor 
Mssf      0.09          ; Min static friction in Stem Packing Seal 
Gdf       10            ; Gate Seat dynamic friction factor. 
Mgdf      0.42          ; Min dynamic friction in Gate Seals 
Gsf       15            ; Gate Seal static friction factor 
Mgsf      0.63          ; Min static friction in Gate Seals 
Bsf       0.58          ; Average Belville spring force                [kN] 
Spfric      5              ; Spring friction loss                               [%] 
Sf1  -1155.75          ; Disc spring factor 1 
Sf2   1196.17            ; Disc spring factor 2 
Sf3         0.85539               ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         2
  Template     A
  Function     0x1035
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         2
  Template     A
  Function     0x2035
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-690_bar
  Tree         2
  Template     A
  Function     0x45
Pdia       114.3        ; Actuator piston diameter  [mm] 
  Msdia                             0.0
Sc        0        ; Actuator spring constant = 0 forces the disc sping parameters to be used 
Spre       0.1172        ; Spring pretension   [m] 
Mass       50           ; Mass of accelerated components   [kg] 
Smax      0.06502        ; Actuator stroke.   [m] 
Voc       .6           ; Pressurized volume in opening cavity  
Vsdia     38.1         ; Valve stem diameter  [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        4             ; Actuator Seal dynamic (colomb) friction factor.  
Mdf       0.04          ; Min dynamic friction in actuator seals. 
Sf        10            ; Actuator Seal static (stiction) friction factor  
Msf       0.1          ; Min static friction in actuator seals. 
Ld        10.0          ; Linear damping of actuator. 
Vlim      0.0002        ; Velocity limit between stiction and colomb fric 
Adf             2.45            ; Acceleration damping factor   
Psl         10.92         ; piston seal width 
Vsl         9.5          ; valve stem seal width 
Osdia     34.93         ; Overide stem diameter 
Ossl      9.5         ; Overide stem seal width  
Vcc       1          ; Pressurized volume in closing cavity 
Vssl      47.8         ; Valve stem seal width 
Sodia    69.77        ; Gate seat OD 
Sidia     52.39        ; Gate seat ID  
Sw        8.89          ; Gate seat face width 
Gcop      12.65         ; Gate crack open point 
Ghdia    5          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen      20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff       0.01 ; Gate seal U-seal flow factor.  
Scff       0.05 ; Gate seal flow factor 
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3.     ; Pressurized volume in gate cavity  
Sdf       4             ; Stem Seal dynamic friction factor. 
Msdf      0.06          ; Min dynamic friction in Stem seal. 
Ssf       6             ; Stem packing seal static friction factor 
Mssf      0.09          ; Min static friction in Stem Packing Seal 
Gdf       10            ; Gate Seat dynamic friction factor. 
Mgdf      0.42          ; Min dynamic friction in Gate Seals 
Gsf       15            ; Gate Seal static friction factor 
Mgsf      0.63          ; Min static friction in Gate Seals 
Bsf       0.58          ; Average Belville spring force                [kN] 
Spfric      5              ; Spring friction loss                               [%] 
Sf1  -1155.75          ; Disc spring factor 1 
Sf2   1196.17            ; Disc spring factor 2 
Sf3         0.85539               ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         2
  Template     A
  Function     0x1045
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         2
  Template     A
  Function     0x2045
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-690_bar
  Tree         2
  Template     A
  Function     0x55
Pdia       114.3        ; Actuator piston diameter  [mm] 
  Msdia                             0.0
Sc        0        ; Actuator spring constant = 0 forces the disc sping parameters to be used 
Spre       0.1172        ; Spring pretension   [m] 
Mass       50           ; Mass of accelerated components   [kg] 
Smax      0.06502        ; Actuator stroke.   [m] 
Voc       .6           ; Pressurized volume in opening cavity  
Vsdia     38.1         ; Valve stem diameter  [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        4             ; Actuator Seal dynamic (colomb) friction factor.  
Mdf       0.04          ; Min dynamic friction in actuator seals. 
Sf        10            ; Actuator Seal static (stiction) friction factor  
Msf       0.1          ; Min static friction in actuator seals. 
Ld        10.0          ; Linear damping of actuator. 
Vlim      0.0002        ; Velocity limit between stiction and colomb fric 
Adf             2.45            ; Acceleration damping factor   
Psl         10.92         ; piston seal width 
Vsl         9.5          ; valve stem seal width 
Osdia     34.93         ; Overide stem diameter 
Ossl      9.5         ; Overide stem seal width  
Vcc       1          ; Pressurized volume in closing cavity 
Vssl      47.8         ; Valve stem seal width 
Sodia    69.77        ; Gate seat OD 
Sidia     52.39        ; Gate seat ID  
Sw        8.89          ; Gate seat face width 
Gcop      12.65         ; Gate crack open point 
Ghdia    5          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen      20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff       0.01 ; Gate seal U-seal flow factor.  
Scff       0.05 ; Gate seal flow factor 
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3.     ; Pressurized volume in gate cavity  
Sdf       4             ; Stem Seal dynamic friction factor. 
Msdf      0.06          ; Min dynamic friction in Stem seal. 
Ssf       6             ; Stem packing seal static friction factor 
Mssf      0.09          ; Min static friction in Stem Packing Seal 
Gdf       10            ; Gate Seat dynamic friction factor. 
Mgdf      0.42          ; Min dynamic friction in Gate Seals 
Gsf       15            ; Gate Seal static friction factor 
Mgsf      0.63          ; Min static friction in Gate Seals 
Bsf       0.58          ; Average Belville spring force                [kN] 
Spfric      5              ; Spring friction loss                               [%] 
Sf1  -1155.75          ; Disc spring factor 1 
Sf2   1196.17            ; Disc spring factor 2 
Sf3         0.85539               ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         2
  Template     A
  Function     0x1055
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         2
  Template     A
  Function     0x2055
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Subsea Control Module
SCM          S
  Tree         3
  Template     A
  Function     0x3
  Depth                           1862.     
  Cv_fwr                          0.250
  Cv_fwq                         6.0e-3
  Svol                              4.0
  Rvol                              4.0
  PPrup                          593.0          
  PPrdo                             1.0
  Cvrhp_a                           0.0

;;; Xmas tree return manifold
MANIFOLD     T
  Tree         3
  Template     A
  Function     0x2004
  Depth                           1862.     
  Volume                         10.0          
  AssistFlowGain                   0.20
EXHAUST_VALVE T-Ev
  Tree         3
  Template     A
  Function     0x2004
  Cr                             40.0          
  Inc                               3.0
  Qref                             0.10
  Tau                            40.0
  Rh                             70.0

;;; Xmas-tree bladder
BLADDER      T-Bl
  Tree         3
  Template     A
  Function     0x2004
  Vmax                           86.0          
  Vmin                             0.10
  Dia                            11.0
  Len                            3.0
  Rh                             70.0
  In_vol                         86.0          

;;; SCM supply line
LINE         Ss
  Tree         3
  Template     A
  Function     0x1003
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Xmas tree return line
LINE         Tr
  Tree         3
  Template     A
  Function     0x2004
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; SCM bladder
BLADDER      S-Bl
  Tree         3
  Template     A
  Function     0x3
  Vmax                           1.0          
  Vmin                             0.10
  Dia                            11.0
  Len                            3.0
  Rh                             70.0
  In_vol                         1.0          

;;; SCM exhaust valve
EXHAUST_VALVE S-Ev
  Tree         3
  Template     A
  Function     0x3
  Cr                                3.0
  Inc                               3.0
  Qref                             0.10
  Tau                            40.0
  Rh                             70.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_5"-690_bar
  Tree         3
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
Sdf       4       ; Stem Seal dynamic friction factor.        [%] 
Msdf      0.06    ; Min dynamic friction in Stem seal.        [kN] 
Ssf       6       ; Stem packing seal static friction factor  [%] 
Mssf      0.09    ; Min static friction in Stem Packing Seal  [kN] 
Gdf       10      ; Gate Seat dynamic friction factor.        [%]  
Mgdf      0.42    ; Min dynamic friction in Gate Seals        [kN] 
Gsf       15      ; Gate Seal static friction factor          [%] 
Mgsf      0.83    ; Min static friction in Gate Seals         [kN] 
Bsf        2.09   ; Average Belville spring force             [kN] 
Spfric      5     ; Spring friction loss                      [%] 
Sf1  -1073.74            ; Disc spring factor 1 
Sf2   1373.4            ; Disc spring factor 2 
Sf3         0.71684    ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         3
  Template     A
  Function     0x1015
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         3
  Template     A
  Function     0x2015
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_5"-690_bar
  Tree         3
  Template     A
  Function     0x25
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
Sdf       4       ; Stem Seal dynamic friction factor.        [%] 
Msdf      0.06    ; Min dynamic friction in Stem seal.        [kN] 
Ssf       6       ; Stem packing seal static friction factor  [%] 
Mssf      0.09    ; Min static friction in Stem Packing Seal  [kN] 
Gdf       10      ; Gate Seat dynamic friction factor.        [%]  
Mgdf      0.42    ; Min dynamic friction in Gate Seals        [kN] 
Gsf       15      ; Gate Seal static friction factor          [%] 
Mgsf      0.83    ; Min static friction in Gate Seals         [kN] 
Bsf        2.09   ; Average Belville spring force             [kN] 
Spfric      5     ; Spring friction loss                      [%] 
Sf1  -1073.74            ; Disc spring factor 1 
Sf2   1373.4            ; Disc spring factor 2 
Sf3         0.71684    ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         3
  Template     A
  Function     0x1025
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         3
  Template     A
  Function     0x2025
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-690_bar
  Tree         3
  Template     A
  Function     0x35
Pdia       114.3        ; Actuator piston diameter  [mm] 
  Msdia                             0.0
Sc        0        ; Actuator spring constant = 0 forces the disc sping parameters to be used 
Spre       0.1172        ; Spring pretension   [m] 
Mass       50           ; Mass of accelerated components   [kg] 
Smax      0.06502        ; Actuator stroke.   [m] 
Voc       .6           ; Pressurized volume in opening cavity  
Vsdia     38.1         ; Valve stem diameter  [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        4             ; Actuator Seal dynamic (colomb) friction factor.  
Mdf       0.04          ; Min dynamic friction in actuator seals. 
Sf        10            ; Actuator Seal static (stiction) friction factor  
Msf       0.1          ; Min static friction in actuator seals. 
Ld        10.0          ; Linear damping of actuator. 
Vlim      0.0002        ; Velocity limit between stiction and colomb fric 
Adf             2.45            ; Acceleration damping factor   
Psl         10.92         ; piston seal width 
Vsl         9.5          ; valve stem seal width 
Osdia     34.93         ; Overide stem diameter 
Ossl      9.5         ; Overide stem seal width  
Vcc       1          ; Pressurized volume in closing cavity 
Vssl      47.8         ; Valve stem seal width 
Sodia    69.77        ; Gate seat OD 
Sidia     52.39        ; Gate seat ID  
Sw        8.89          ; Gate seat face width 
Gcop      12.65         ; Gate crack open point 
Ghdia    5          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen      20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff       0.01 ; Gate seal U-seal flow factor.  
Scff       0.05 ; Gate seal flow factor 
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3.     ; Pressurized volume in gate cavity  
Sdf       4             ; Stem Seal dynamic friction factor. 
Msdf      0.06          ; Min dynamic friction in Stem seal. 
Ssf       6             ; Stem packing seal static friction factor 
Mssf      0.09          ; Min static friction in Stem Packing Seal 
Gdf       10            ; Gate Seat dynamic friction factor. 
Mgdf      0.42          ; Min dynamic friction in Gate Seals 
Gsf       15            ; Gate Seal static friction factor 
Mgsf      0.63          ; Min static friction in Gate Seals 
Bsf       0.58          ; Average Belville spring force                [kN] 
Spfric      5              ; Spring friction loss                               [%] 
Sf1  -1155.75          ; Disc spring factor 1 
Sf2   1196.17            ; Disc spring factor 2 
Sf3         0.85539               ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         3
  Template     A
  Function     0x1035
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         3
  Template     A
  Function     0x2035
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-690_bar
  Tree         3
  Template     A
  Function     0x45
Pdia       114.3        ; Actuator piston diameter  [mm] 
  Msdia                             0.0
Sc        0        ; Actuator spring constant = 0 forces the disc sping parameters to be used 
Spre       0.1172        ; Spring pretension   [m] 
Mass       50           ; Mass of accelerated components   [kg] 
Smax      0.06502        ; Actuator stroke.   [m] 
Voc       .6           ; Pressurized volume in opening cavity  
Vsdia     38.1         ; Valve stem diameter  [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        4             ; Actuator Seal dynamic (colomb) friction factor.  
Mdf       0.04          ; Min dynamic friction in actuator seals. 
Sf        10            ; Actuator Seal static (stiction) friction factor  
Msf       0.1          ; Min static friction in actuator seals. 
Ld        10.0          ; Linear damping of actuator. 
Vlim      0.0002        ; Velocity limit between stiction and colomb fric 
Adf             2.45            ; Acceleration damping factor   
Psl         10.92         ; piston seal width 
Vsl         9.5          ; valve stem seal width 
Osdia     34.93         ; Overide stem diameter 
Ossl      9.5         ; Overide stem seal width  
Vcc       1          ; Pressurized volume in closing cavity 
Vssl      47.8         ; Valve stem seal width 
Sodia    69.77        ; Gate seat OD 
Sidia     52.39        ; Gate seat ID  
Sw        8.89          ; Gate seat face width 
Gcop      12.65         ; Gate crack open point 
Ghdia    5          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen      20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff       0.01 ; Gate seal U-seal flow factor.  
Scff       0.05 ; Gate seal flow factor 
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3.     ; Pressurized volume in gate cavity  
Sdf       4             ; Stem Seal dynamic friction factor. 
Msdf      0.06          ; Min dynamic friction in Stem seal. 
Ssf       6             ; Stem packing seal static friction factor 
Mssf      0.09          ; Min static friction in Stem Packing Seal 
Gdf       10            ; Gate Seat dynamic friction factor. 
Mgdf      0.42          ; Min dynamic friction in Gate Seals 
Gsf       15            ; Gate Seal static friction factor 
Mgsf      0.63          ; Min static friction in Gate Seals 
Bsf       0.58          ; Average Belville spring force                [kN] 
Spfric      5              ; Spring friction loss                               [%] 
Sf1  -1155.75          ; Disc spring factor 1 
Sf2   1196.17            ; Disc spring factor 2 
Sf3         0.85539               ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         3
  Template     A
  Function     0x1045
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         3
  Template     A
  Function     0x2045
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-690_bar
  Tree         3
  Template     A
  Function     0x55
Pdia       114.3        ; Actuator piston diameter  [mm] 
  Msdia                             0.0
Sc        0        ; Actuator spring constant = 0 forces the disc sping parameters to be used 
Spre       0.1172        ; Spring pretension   [m] 
Mass       50           ; Mass of accelerated components   [kg] 
Smax      0.06502        ; Actuator stroke.   [m] 
Voc       .6           ; Pressurized volume in opening cavity  
Vsdia     38.1         ; Valve stem diameter  [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        4             ; Actuator Seal dynamic (colomb) friction factor.  
Mdf       0.04          ; Min dynamic friction in actuator seals. 
Sf        10            ; Actuator Seal static (stiction) friction factor  
Msf       0.1          ; Min static friction in actuator seals. 
Ld        10.0          ; Linear damping of actuator. 
Vlim      0.0002        ; Velocity limit between stiction and colomb fric 
Adf             2.45            ; Acceleration damping factor   
Psl         10.92         ; piston seal width 
Vsl         9.5          ; valve stem seal width 
Osdia     34.93         ; Overide stem diameter 
Ossl      9.5         ; Overide stem seal width  
Vcc       1          ; Pressurized volume in closing cavity 
Vssl      47.8         ; Valve stem seal width 
Sodia    69.77        ; Gate seat OD 
Sidia     52.39        ; Gate seat ID  
Sw        8.89          ; Gate seat face width 
Gcop      12.65         ; Gate crack open point 
Ghdia    5          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen      20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff       0.01 ; Gate seal U-seal flow factor.  
Scff       0.05 ; Gate seal flow factor 
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3.     ; Pressurized volume in gate cavity  
Sdf       4             ; Stem Seal dynamic friction factor. 
Msdf      0.06          ; Min dynamic friction in Stem seal. 
Ssf       6             ; Stem packing seal static friction factor 
Mssf      0.09          ; Min static friction in Stem Packing Seal 
Gdf       10            ; Gate Seat dynamic friction factor. 
Mgdf      0.42          ; Min dynamic friction in Gate Seals 
Gsf       15            ; Gate Seal static friction factor 
Mgsf      0.63          ; Min static friction in Gate Seals 
Bsf       0.58          ; Average Belville spring force                [kN] 
Spfric      5              ; Spring friction loss                               [%] 
Sf1  -1155.75          ; Disc spring factor 1 
Sf2   1196.17            ; Disc spring factor 2 
Sf3         0.85539               ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         3
  Template     A
  Function     0x1055
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         3
  Template     A
  Function     0x2055
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Subsea Control Module
SCM          S
  Tree         4
  Template     A
  Function     0x3
  Depth                           1862.     
  Cv_fwr                          0.250
  Cv_fwq                         6.0e-3
  Svol                              4.0
  Rvol                              4.0
  PPrup                          593.0          
  PPrdo                             1.0
  Cvrhp_a                           0.0

;;; Xmas tree return manifold
MANIFOLD     T
  Tree         4
  Template     A
  Function     0x2004
  Depth                           1862.     
  Volume                         10.0          
  AssistFlowGain                   0.20
EXHAUST_VALVE T-Ev
  Tree         4
  Template     A
  Function     0x2004
  Cr                             40.0          
  Inc                               3.0
  Qref                             0.10
  Tau                            40.0
  Rh                             70.0

;;; Xmas-tree bladder
BLADDER      T-Bl
  Tree         4
  Template     A
  Function     0x2004
  Vmax                           86.0          
  Vmin                             0.10
  Dia                            11.0
  Len                            3.0
  Rh                             70.0
  In_vol                         86.0          

;;; SCM supply line
LINE         Ss
  Tree         4
  Template     A
  Function     0x1003
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Xmas tree return line
LINE         Tr
  Tree         4
  Template     A
  Function     0x2004
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; SCM bladder
BLADDER      S-Bl
  Tree         4
  Template     A
  Function     0x3
  Vmax                           1.0          
  Vmin                             0.10
  Dia                            11.0
  Len                            3.0
  Rh                             70.0
  In_vol                         1.0          

;;; SCM exhaust valve
EXHAUST_VALVE S-Ev
  Tree         4
  Template     A
  Function     0x3
  Cr                                3.0
  Inc                               3.0
  Qref                             0.10
  Tau                            40.0
  Rh                             70.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_5"-690_bar
  Tree         4
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
Sdf       4       ; Stem Seal dynamic friction factor.        [%] 
Msdf      0.06    ; Min dynamic friction in Stem seal.        [kN] 
Ssf       6       ; Stem packing seal static friction factor  [%] 
Mssf      0.09    ; Min static friction in Stem Packing Seal  [kN] 
Gdf       10      ; Gate Seat dynamic friction factor.        [%]  
Mgdf      0.42    ; Min dynamic friction in Gate Seals        [kN] 
Gsf       15      ; Gate Seal static friction factor          [%] 
Mgsf      0.83    ; Min static friction in Gate Seals         [kN] 
Bsf        2.09   ; Average Belville spring force             [kN] 
Spfric      5     ; Spring friction loss                      [%] 
Sf1  -1073.74            ; Disc spring factor 1 
Sf2   1373.4            ; Disc spring factor 2 
Sf3         0.71684    ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         4
  Template     A
  Function     0x1015
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         4
  Template     A
  Function     0x2015
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_5"-690_bar
  Tree         4
  Template     A
  Function     0x25
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
Sdf       4       ; Stem Seal dynamic friction factor.        [%] 
Msdf      0.06    ; Min dynamic friction in Stem seal.        [kN] 
Ssf       6       ; Stem packing seal static friction factor  [%] 
Mssf      0.09    ; Min static friction in Stem Packing Seal  [kN] 
Gdf       10      ; Gate Seat dynamic friction factor.        [%]  
Mgdf      0.42    ; Min dynamic friction in Gate Seals        [kN] 
Gsf       15      ; Gate Seal static friction factor          [%] 
Mgsf      0.83    ; Min static friction in Gate Seals         [kN] 
Bsf        2.09   ; Average Belville spring force             [kN] 
Spfric      5     ; Spring friction loss                      [%] 
Sf1  -1073.74            ; Disc spring factor 1 
Sf2   1373.4            ; Disc spring factor 2 
Sf3         0.71684    ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         4
  Template     A
  Function     0x1025
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         4
  Template     A
  Function     0x2025
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-690_bar
  Tree         4
  Template     A
  Function     0x35
Pdia       114.3        ; Actuator piston diameter  [mm] 
  Msdia                             0.0
Sc        0        ; Actuator spring constant = 0 forces the disc sping parameters to be used 
Spre       0.1172        ; Spring pretension   [m] 
Mass       50           ; Mass of accelerated components   [kg] 
Smax      0.06502        ; Actuator stroke.   [m] 
Voc       .6           ; Pressurized volume in opening cavity  
Vsdia     38.1         ; Valve stem diameter  [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        4             ; Actuator Seal dynamic (colomb) friction factor.  
Mdf       0.04          ; Min dynamic friction in actuator seals. 
Sf        10            ; Actuator Seal static (stiction) friction factor  
Msf       0.1          ; Min static friction in actuator seals. 
Ld        10.0          ; Linear damping of actuator. 
Vlim      0.0002        ; Velocity limit between stiction and colomb fric 
Adf             2.45            ; Acceleration damping factor   
Psl         10.92         ; piston seal width 
Vsl         9.5          ; valve stem seal width 
Osdia     34.93         ; Overide stem diameter 
Ossl      9.5         ; Overide stem seal width  
Vcc       1          ; Pressurized volume in closing cavity 
Vssl      47.8         ; Valve stem seal width 
Sodia    69.77        ; Gate seat OD 
Sidia     52.39        ; Gate seat ID  
Sw        8.89          ; Gate seat face width 
Gcop      12.65         ; Gate crack open point 
Ghdia    5          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen      20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff       0.01 ; Gate seal U-seal flow factor.  
Scff       0.05 ; Gate seal flow factor 
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3.     ; Pressurized volume in gate cavity  
Sdf       4             ; Stem Seal dynamic friction factor. 
Msdf      0.06          ; Min dynamic friction in Stem seal. 
Ssf       6             ; Stem packing seal static friction factor 
Mssf      0.09          ; Min static friction in Stem Packing Seal 
Gdf       10            ; Gate Seat dynamic friction factor. 
Mgdf      0.42          ; Min dynamic friction in Gate Seals 
Gsf       15            ; Gate Seal static friction factor 
Mgsf      0.63          ; Min static friction in Gate Seals 
Bsf       0.58          ; Average Belville spring force                [kN] 
Spfric      5              ; Spring friction loss                               [%] 
Sf1  -1155.75          ; Disc spring factor 1 
Sf2   1196.17            ; Disc spring factor 2 
Sf3         0.85539               ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         4
  Template     A
  Function     0x1035
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         4
  Template     A
  Function     0x2035
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-690_bar
  Tree         4
  Template     A
  Function     0x45
Pdia       114.3        ; Actuator piston diameter  [mm] 
  Msdia                             0.0
Sc        0        ; Actuator spring constant = 0 forces the disc sping parameters to be used 
Spre       0.1172        ; Spring pretension   [m] 
Mass       50           ; Mass of accelerated components   [kg] 
Smax      0.06502        ; Actuator stroke.   [m] 
Voc       .6           ; Pressurized volume in opening cavity  
Vsdia     38.1         ; Valve stem diameter  [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        4             ; Actuator Seal dynamic (colomb) friction factor.  
Mdf       0.04          ; Min dynamic friction in actuator seals. 
Sf        10            ; Actuator Seal static (stiction) friction factor  
Msf       0.1          ; Min static friction in actuator seals. 
Ld        10.0          ; Linear damping of actuator. 
Vlim      0.0002        ; Velocity limit between stiction and colomb fric 
Adf             2.45            ; Acceleration damping factor   
Psl         10.92         ; piston seal width 
Vsl         9.5          ; valve stem seal width 
Osdia     34.93         ; Overide stem diameter 
Ossl      9.5         ; Overide stem seal width  
Vcc       1          ; Pressurized volume in closing cavity 
Vssl      47.8         ; Valve stem seal width 
Sodia    69.77        ; Gate seat OD 
Sidia     52.39        ; Gate seat ID  
Sw        8.89          ; Gate seat face width 
Gcop      12.65         ; Gate crack open point 
Ghdia    5          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen      20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff       0.01 ; Gate seal U-seal flow factor.  
Scff       0.05 ; Gate seal flow factor 
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3.     ; Pressurized volume in gate cavity  
Sdf       4             ; Stem Seal dynamic friction factor. 
Msdf      0.06          ; Min dynamic friction in Stem seal. 
Ssf       6             ; Stem packing seal static friction factor 
Mssf      0.09          ; Min static friction in Stem Packing Seal 
Gdf       10            ; Gate Seat dynamic friction factor. 
Mgdf      0.42          ; Min dynamic friction in Gate Seals 
Gsf       15            ; Gate Seal static friction factor 
Mgsf      0.63          ; Min static friction in Gate Seals 
Bsf       0.58          ; Average Belville spring force                [kN] 
Spfric      5              ; Spring friction loss                               [%] 
Sf1  -1155.75          ; Disc spring factor 1 
Sf2   1196.17            ; Disc spring factor 2 
Sf3         0.85539               ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         4
  Template     A
  Function     0x1045
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         4
  Template     A
  Function     0x2045
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-690_bar
  Tree         4
  Template     A
  Function     0x55
Pdia       114.3        ; Actuator piston diameter  [mm] 
  Msdia                             0.0
Sc        0        ; Actuator spring constant = 0 forces the disc sping parameters to be used 
Spre       0.1172        ; Spring pretension   [m] 
Mass       50           ; Mass of accelerated components   [kg] 
Smax      0.06502        ; Actuator stroke.   [m] 
Voc       .6           ; Pressurized volume in opening cavity  
Vsdia     38.1         ; Valve stem diameter  [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        4             ; Actuator Seal dynamic (colomb) friction factor.  
Mdf       0.04          ; Min dynamic friction in actuator seals. 
Sf        10            ; Actuator Seal static (stiction) friction factor  
Msf       0.1          ; Min static friction in actuator seals. 
Ld        10.0          ; Linear damping of actuator. 
Vlim      0.0002        ; Velocity limit between stiction and colomb fric 
Adf             2.45            ; Acceleration damping factor   
Psl         10.92         ; piston seal width 
Vsl         9.5          ; valve stem seal width 
Osdia     34.93         ; Overide stem diameter 
Ossl      9.5         ; Overide stem seal width  
Vcc       1          ; Pressurized volume in closing cavity 
Vssl      47.8         ; Valve stem seal width 
Sodia    69.77        ; Gate seat OD 
Sidia     52.39        ; Gate seat ID  
Sw        8.89          ; Gate seat face width 
Gcop      12.65         ; Gate crack open point 
Ghdia    5          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen      20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff       0.01 ; Gate seal U-seal flow factor.  
Scff       0.05 ; Gate seal flow factor 
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3.     ; Pressurized volume in gate cavity  
Sdf       4             ; Stem Seal dynamic friction factor. 
Msdf      0.06          ; Min dynamic friction in Stem seal. 
Ssf       6             ; Stem packing seal static friction factor 
Mssf      0.09          ; Min static friction in Stem Packing Seal 
Gdf       10            ; Gate Seat dynamic friction factor. 
Mgdf      0.42          ; Min dynamic friction in Gate Seals 
Gsf       15            ; Gate Seal static friction factor 
Mgsf      0.63          ; Min static friction in Gate Seals 
Bsf       0.58          ; Average Belville spring force                [kN] 
Spfric      5              ; Spring friction loss                               [%] 
Sf1  -1155.75          ; Disc spring factor 1 
Sf2   1196.17            ; Disc spring factor 2 
Sf3         0.85539               ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         4
  Template     A
  Function     0x1055
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         4
  Template     A
  Function     0x2055
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Subsea Control Module
SCM          S
  Tree         1
  Template     B
  Function     0x3
  Depth                           1862.     
  Cv_fwr                          0.250
  Cv_fwq                         6.0e-3
  Svol                              4.0
  Rvol                              4.0
  PPrup                          593.0          
  PPrdo                             1.0
  Cvrhp_a                           0.0

;;; Xmas tree return manifold
MANIFOLD     T
  Tree         1
  Template     B
  Function     0x2004
  Depth                           1862.     
  Volume                         10.0          
  AssistFlowGain                   0.20
EXHAUST_VALVE T-Ev
  Tree         1
  Template     B
  Function     0x2004
  Cr                             40.0          
  Inc                               3.0
  Qref                             0.10
  Tau                            40.0
  Rh                             70.0

;;; Xmas-tree bladder
BLADDER      T-Bl
  Tree         1
  Template     B
  Function     0x2004
  Vmax                           86.0          
  Vmin                             0.10
  Dia                            11.0
  Len                            3.0
  Rh                             70.0
  In_vol                         86.0          

;;; SCM supply line
LINE         Ss
  Tree         1
  Template     B
  Function     0x1003
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
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
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; SCM bladder
BLADDER      S-Bl
  Tree         1
  Template     B
  Function     0x3
  Vmax                           1.0          
  Vmin                             0.10
  Dia                            11.0
  Len                            3.0
  Rh                             70.0
  In_vol                         1.0          

;;; SCM exhaust valve
EXHAUST_VALVE S-Ev
  Tree         1
  Template     B
  Function     0x3
  Cr                                3.0
  Inc                               3.0
  Qref                             0.10
  Tau                            40.0
  Rh                             70.0

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
Sdf       4       ; Stem Seal dynamic friction factor.        [%] 
Msdf      0.06    ; Min dynamic friction in Stem seal.        [kN] 
Ssf       6       ; Stem packing seal static friction factor  [%] 
Mssf      0.09    ; Min static friction in Stem Packing Seal  [kN] 
Gdf       10      ; Gate Seat dynamic friction factor.        [%]  
Mgdf      0.42    ; Min dynamic friction in Gate Seals        [kN] 
Gsf       15      ; Gate Seal static friction factor          [%] 
Mgsf      0.83    ; Min static friction in Gate Seals         [kN] 
Bsf        2.09   ; Average Belville spring force             [kN] 
Spfric      5     ; Spring friction loss                      [%] 
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
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
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
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_5"-690_bar
  Tree         1
  Template     B
  Function     0x25
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
Sdf       4       ; Stem Seal dynamic friction factor.        [%] 
Msdf      0.06    ; Min dynamic friction in Stem seal.        [kN] 
Ssf       6       ; Stem packing seal static friction factor  [%] 
Mssf      0.09    ; Min static friction in Stem Packing Seal  [kN] 
Gdf       10      ; Gate Seat dynamic friction factor.        [%]  
Mgdf      0.42    ; Min dynamic friction in Gate Seals        [kN] 
Gsf       15      ; Gate Seal static friction factor          [%] 
Mgsf      0.83    ; Min static friction in Gate Seals         [kN] 
Bsf        2.09   ; Average Belville spring force             [kN] 
Spfric      5     ; Spring friction loss                      [%] 
Sf1  -1073.74            ; Disc spring factor 1 
Sf2   1373.4            ; Disc spring factor 2 
Sf3         0.71684    ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     B
  Function     0x1025
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         1
  Template     B
  Function     0x2025
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-690_bar
  Tree         1
  Template     B
  Function     0x35
Pdia       114.3        ; Actuator piston diameter  [mm] 
  Msdia                             0.0
Sc        0        ; Actuator spring constant = 0 forces the disc sping parameters to be used 
Spre       0.1172        ; Spring pretension   [m] 
Mass       50           ; Mass of accelerated components   [kg] 
Smax      0.06502        ; Actuator stroke.   [m] 
Voc       .6           ; Pressurized volume in opening cavity  
Vsdia     38.1         ; Valve stem diameter  [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        4             ; Actuator Seal dynamic (colomb) friction factor.  
Mdf       0.04          ; Min dynamic friction in actuator seals. 
Sf        10            ; Actuator Seal static (stiction) friction factor  
Msf       0.1          ; Min static friction in actuator seals. 
Ld        10.0          ; Linear damping of actuator. 
Vlim      0.0002        ; Velocity limit between stiction and colomb fric 
Adf             2.45            ; Acceleration damping factor   
Psl         10.92         ; piston seal width 
Vsl         9.5          ; valve stem seal width 
Osdia     34.93         ; Overide stem diameter 
Ossl      9.5         ; Overide stem seal width  
Vcc       1          ; Pressurized volume in closing cavity 
Vssl      47.8         ; Valve stem seal width 
Sodia    69.77        ; Gate seat OD 
Sidia     52.39        ; Gate seat ID  
Sw        8.89          ; Gate seat face width 
Gcop      12.65         ; Gate crack open point 
Ghdia    5          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen      20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff       0.01 ; Gate seal U-seal flow factor.  
Scff       0.05 ; Gate seal flow factor 
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3.     ; Pressurized volume in gate cavity  
Sdf       4             ; Stem Seal dynamic friction factor. 
Msdf      0.06          ; Min dynamic friction in Stem seal. 
Ssf       6             ; Stem packing seal static friction factor 
Mssf      0.09          ; Min static friction in Stem Packing Seal 
Gdf       10            ; Gate Seat dynamic friction factor. 
Mgdf      0.42          ; Min dynamic friction in Gate Seals 
Gsf       15            ; Gate Seal static friction factor 
Mgsf      0.63          ; Min static friction in Gate Seals 
Bsf       0.58          ; Average Belville spring force                [kN] 
Spfric      5              ; Spring friction loss                               [%] 
Sf1  -1155.75          ; Disc spring factor 1 
Sf2   1196.17            ; Disc spring factor 2 
Sf3         0.85539               ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     B
  Function     0x1035
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         1
  Template     B
  Function     0x2035
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-690_bar
  Tree         1
  Template     B
  Function     0x45
Pdia       114.3        ; Actuator piston diameter  [mm] 
  Msdia                             0.0
Sc        0        ; Actuator spring constant = 0 forces the disc sping parameters to be used 
Spre       0.1172        ; Spring pretension   [m] 
Mass       50           ; Mass of accelerated components   [kg] 
Smax      0.06502        ; Actuator stroke.   [m] 
Voc       .6           ; Pressurized volume in opening cavity  
Vsdia     38.1         ; Valve stem diameter  [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        4             ; Actuator Seal dynamic (colomb) friction factor.  
Mdf       0.04          ; Min dynamic friction in actuator seals. 
Sf        10            ; Actuator Seal static (stiction) friction factor  
Msf       0.1          ; Min static friction in actuator seals. 
Ld        10.0          ; Linear damping of actuator. 
Vlim      0.0002        ; Velocity limit between stiction and colomb fric 
Adf             2.45            ; Acceleration damping factor   
Psl         10.92         ; piston seal width 
Vsl         9.5          ; valve stem seal width 
Osdia     34.93         ; Overide stem diameter 
Ossl      9.5         ; Overide stem seal width  
Vcc       1          ; Pressurized volume in closing cavity 
Vssl      47.8         ; Valve stem seal width 
Sodia    69.77        ; Gate seat OD 
Sidia     52.39        ; Gate seat ID  
Sw        8.89          ; Gate seat face width 
Gcop      12.65         ; Gate crack open point 
Ghdia    5          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen      20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff       0.01 ; Gate seal U-seal flow factor.  
Scff       0.05 ; Gate seal flow factor 
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3.     ; Pressurized volume in gate cavity  
Sdf       4             ; Stem Seal dynamic friction factor. 
Msdf      0.06          ; Min dynamic friction in Stem seal. 
Ssf       6             ; Stem packing seal static friction factor 
Mssf      0.09          ; Min static friction in Stem Packing Seal 
Gdf       10            ; Gate Seat dynamic friction factor. 
Mgdf      0.42          ; Min dynamic friction in Gate Seals 
Gsf       15            ; Gate Seal static friction factor 
Mgsf      0.63          ; Min static friction in Gate Seals 
Bsf       0.58          ; Average Belville spring force                [kN] 
Spfric      5              ; Spring friction loss                               [%] 
Sf1  -1155.75          ; Disc spring factor 1 
Sf2   1196.17            ; Disc spring factor 2 
Sf3         0.85539               ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     B
  Function     0x1045
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         1
  Template     B
  Function     0x2045
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-690_bar
  Tree         1
  Template     B
  Function     0x55
Pdia       114.3        ; Actuator piston diameter  [mm] 
  Msdia                             0.0
Sc        0        ; Actuator spring constant = 0 forces the disc sping parameters to be used 
Spre       0.1172        ; Spring pretension   [m] 
Mass       50           ; Mass of accelerated components   [kg] 
Smax      0.06502        ; Actuator stroke.   [m] 
Voc       .6           ; Pressurized volume in opening cavity  
Vsdia     38.1         ; Valve stem diameter  [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        4             ; Actuator Seal dynamic (colomb) friction factor.  
Mdf       0.04          ; Min dynamic friction in actuator seals. 
Sf        10            ; Actuator Seal static (stiction) friction factor  
Msf       0.1          ; Min static friction in actuator seals. 
Ld        10.0          ; Linear damping of actuator. 
Vlim      0.0002        ; Velocity limit between stiction and colomb fric 
Adf             2.45            ; Acceleration damping factor   
Psl         10.92         ; piston seal width 
Vsl         9.5          ; valve stem seal width 
Osdia     34.93         ; Overide stem diameter 
Ossl      9.5         ; Overide stem seal width  
Vcc       1          ; Pressurized volume in closing cavity 
Vssl      47.8         ; Valve stem seal width 
Sodia    69.77        ; Gate seat OD 
Sidia     52.39        ; Gate seat ID  
Sw        8.89          ; Gate seat face width 
Gcop      12.65         ; Gate crack open point 
Ghdia    5          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen      20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff       0.01 ; Gate seal U-seal flow factor.  
Scff       0.05 ; Gate seal flow factor 
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3.     ; Pressurized volume in gate cavity  
Sdf       4             ; Stem Seal dynamic friction factor. 
Msdf      0.06          ; Min dynamic friction in Stem seal. 
Ssf       6             ; Stem packing seal static friction factor 
Mssf      0.09          ; Min static friction in Stem Packing Seal 
Gdf       10            ; Gate Seat dynamic friction factor. 
Mgdf      0.42          ; Min dynamic friction in Gate Seals 
Gsf       15            ; Gate Seal static friction factor 
Mgsf      0.63          ; Min static friction in Gate Seals 
Bsf       0.58          ; Average Belville spring force                [kN] 
Spfric      5              ; Spring friction loss                               [%] 
Sf1  -1155.75          ; Disc spring factor 1 
Sf2   1196.17            ; Disc spring factor 2 
Sf3         0.85539               ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     B
  Function     0x1055
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         1
  Template     B
  Function     0x2055
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Subsea Control Module
SCM          S
  Tree         2
  Template     B
  Function     0x3
  Depth                           1862.     
  Cv_fwr                          0.250
  Cv_fwq                         6.0e-3
  Svol                              4.0
  Rvol                              4.0
  PPrup                          593.0          
  PPrdo                             1.0
  Cvrhp_a                           0.0

;;; Xmas tree return manifold
MANIFOLD     T
  Tree         2
  Template     B
  Function     0x2004
  Depth                           1862.     
  Volume                         10.0          
  AssistFlowGain                   0.20
EXHAUST_VALVE T-Ev
  Tree         2
  Template     B
  Function     0x2004
  Cr                             40.0          
  Inc                               3.0
  Qref                             0.10
  Tau                            40.0
  Rh                             70.0

;;; Xmas-tree bladder
BLADDER      T-Bl
  Tree         2
  Template     B
  Function     0x2004
  Vmax                           86.0          
  Vmin                             0.10
  Dia                            11.0
  Len                            3.0
  Rh                             70.0
  In_vol                         86.0          

;;; SCM supply line
LINE         Ss
  Tree         2
  Template     B
  Function     0x1003
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Xmas tree return line
LINE         Tr
  Tree         2
  Template     B
  Function     0x2004
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; SCM bladder
BLADDER      S-Bl
  Tree         2
  Template     B
  Function     0x3
  Vmax                           1.0          
  Vmin                             0.10
  Dia                            11.0
  Len                            3.0
  Rh                             70.0
  In_vol                         1.0          

;;; SCM exhaust valve
EXHAUST_VALVE S-Ev
  Tree         2
  Template     B
  Function     0x3
  Cr                                3.0
  Inc                               3.0
  Qref                             0.10
  Tau                            40.0
  Rh                             70.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_5"-690_bar
  Tree         2
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
Sdf       4       ; Stem Seal dynamic friction factor.        [%] 
Msdf      0.06    ; Min dynamic friction in Stem seal.        [kN] 
Ssf       6       ; Stem packing seal static friction factor  [%] 
Mssf      0.09    ; Min static friction in Stem Packing Seal  [kN] 
Gdf       10      ; Gate Seat dynamic friction factor.        [%]  
Mgdf      0.42    ; Min dynamic friction in Gate Seals        [kN] 
Gsf       15      ; Gate Seal static friction factor          [%] 
Mgsf      0.83    ; Min static friction in Gate Seals         [kN] 
Bsf        2.09   ; Average Belville spring force             [kN] 
Spfric      5     ; Spring friction loss                      [%] 
Sf1  -1073.74            ; Disc spring factor 1 
Sf2   1373.4            ; Disc spring factor 2 
Sf3         0.71684    ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         2
  Template     B
  Function     0x1015
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         2
  Template     B
  Function     0x2015
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_5"-690_bar
  Tree         2
  Template     B
  Function     0x25
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
Sdf       4       ; Stem Seal dynamic friction factor.        [%] 
Msdf      0.06    ; Min dynamic friction in Stem seal.        [kN] 
Ssf       6       ; Stem packing seal static friction factor  [%] 
Mssf      0.09    ; Min static friction in Stem Packing Seal  [kN] 
Gdf       10      ; Gate Seat dynamic friction factor.        [%]  
Mgdf      0.42    ; Min dynamic friction in Gate Seals        [kN] 
Gsf       15      ; Gate Seal static friction factor          [%] 
Mgsf      0.83    ; Min static friction in Gate Seals         [kN] 
Bsf        2.09   ; Average Belville spring force             [kN] 
Spfric      5     ; Spring friction loss                      [%] 
Sf1  -1073.74            ; Disc spring factor 1 
Sf2   1373.4            ; Disc spring factor 2 
Sf3         0.71684    ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         2
  Template     B
  Function     0x1025
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         2
  Template     B
  Function     0x2025
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-690_bar
  Tree         2
  Template     B
  Function     0x35
Pdia       114.3        ; Actuator piston diameter  [mm] 
  Msdia                             0.0
Sc        0        ; Actuator spring constant = 0 forces the disc sping parameters to be used 
Spre       0.1172        ; Spring pretension   [m] 
Mass       50           ; Mass of accelerated components   [kg] 
Smax      0.06502        ; Actuator stroke.   [m] 
Voc       .6           ; Pressurized volume in opening cavity  
Vsdia     38.1         ; Valve stem diameter  [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        4             ; Actuator Seal dynamic (colomb) friction factor.  
Mdf       0.04          ; Min dynamic friction in actuator seals. 
Sf        10            ; Actuator Seal static (stiction) friction factor  
Msf       0.1          ; Min static friction in actuator seals. 
Ld        10.0          ; Linear damping of actuator. 
Vlim      0.0002        ; Velocity limit between stiction and colomb fric 
Adf             2.45            ; Acceleration damping factor   
Psl         10.92         ; piston seal width 
Vsl         9.5          ; valve stem seal width 
Osdia     34.93         ; Overide stem diameter 
Ossl      9.5         ; Overide stem seal width  
Vcc       1          ; Pressurized volume in closing cavity 
Vssl      47.8         ; Valve stem seal width 
Sodia    69.77        ; Gate seat OD 
Sidia     52.39        ; Gate seat ID  
Sw        8.89          ; Gate seat face width 
Gcop      12.65         ; Gate crack open point 
Ghdia    5          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen      20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff       0.01 ; Gate seal U-seal flow factor.  
Scff       0.05 ; Gate seal flow factor 
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3.     ; Pressurized volume in gate cavity  
Sdf       4             ; Stem Seal dynamic friction factor. 
Msdf      0.06          ; Min dynamic friction in Stem seal. 
Ssf       6             ; Stem packing seal static friction factor 
Mssf      0.09          ; Min static friction in Stem Packing Seal 
Gdf       10            ; Gate Seat dynamic friction factor. 
Mgdf      0.42          ; Min dynamic friction in Gate Seals 
Gsf       15            ; Gate Seal static friction factor 
Mgsf      0.63          ; Min static friction in Gate Seals 
Bsf       0.58          ; Average Belville spring force                [kN] 
Spfric      5              ; Spring friction loss                               [%] 
Sf1  -1155.75          ; Disc spring factor 1 
Sf2   1196.17            ; Disc spring factor 2 
Sf3         0.85539               ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         2
  Template     B
  Function     0x1035
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         2
  Template     B
  Function     0x2035
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-690_bar
  Tree         2
  Template     B
  Function     0x45
Pdia       114.3        ; Actuator piston diameter  [mm] 
  Msdia                             0.0
Sc        0        ; Actuator spring constant = 0 forces the disc sping parameters to be used 
Spre       0.1172        ; Spring pretension   [m] 
Mass       50           ; Mass of accelerated components   [kg] 
Smax      0.06502        ; Actuator stroke.   [m] 
Voc       .6           ; Pressurized volume in opening cavity  
Vsdia     38.1         ; Valve stem diameter  [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        4             ; Actuator Seal dynamic (colomb) friction factor.  
Mdf       0.04          ; Min dynamic friction in actuator seals. 
Sf        10            ; Actuator Seal static (stiction) friction factor  
Msf       0.1          ; Min static friction in actuator seals. 
Ld        10.0          ; Linear damping of actuator. 
Vlim      0.0002        ; Velocity limit between stiction and colomb fric 
Adf             2.45            ; Acceleration damping factor   
Psl         10.92         ; piston seal width 
Vsl         9.5          ; valve stem seal width 
Osdia     34.93         ; Overide stem diameter 
Ossl      9.5         ; Overide stem seal width  
Vcc       1          ; Pressurized volume in closing cavity 
Vssl      47.8         ; Valve stem seal width 
Sodia    69.77        ; Gate seat OD 
Sidia     52.39        ; Gate seat ID  
Sw        8.89          ; Gate seat face width 
Gcop      12.65         ; Gate crack open point 
Ghdia    5          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen      20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff       0.01 ; Gate seal U-seal flow factor.  
Scff       0.05 ; Gate seal flow factor 
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3.     ; Pressurized volume in gate cavity  
Sdf       4             ; Stem Seal dynamic friction factor. 
Msdf      0.06          ; Min dynamic friction in Stem seal. 
Ssf       6             ; Stem packing seal static friction factor 
Mssf      0.09          ; Min static friction in Stem Packing Seal 
Gdf       10            ; Gate Seat dynamic friction factor. 
Mgdf      0.42          ; Min dynamic friction in Gate Seals 
Gsf       15            ; Gate Seal static friction factor 
Mgsf      0.63          ; Min static friction in Gate Seals 
Bsf       0.58          ; Average Belville spring force                [kN] 
Spfric      5              ; Spring friction loss                               [%] 
Sf1  -1155.75          ; Disc spring factor 1 
Sf2   1196.17            ; Disc spring factor 2 
Sf3         0.85539               ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         2
  Template     B
  Function     0x1045
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         2
  Template     B
  Function     0x2045
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-690_bar
  Tree         2
  Template     B
  Function     0x55
Pdia       114.3        ; Actuator piston diameter  [mm] 
  Msdia                             0.0
Sc        0        ; Actuator spring constant = 0 forces the disc sping parameters to be used 
Spre       0.1172        ; Spring pretension   [m] 
Mass       50           ; Mass of accelerated components   [kg] 
Smax      0.06502        ; Actuator stroke.   [m] 
Voc       .6           ; Pressurized volume in opening cavity  
Vsdia     38.1         ; Valve stem diameter  [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        4             ; Actuator Seal dynamic (colomb) friction factor.  
Mdf       0.04          ; Min dynamic friction in actuator seals. 
Sf        10            ; Actuator Seal static (stiction) friction factor  
Msf       0.1          ; Min static friction in actuator seals. 
Ld        10.0          ; Linear damping of actuator. 
Vlim      0.0002        ; Velocity limit between stiction and colomb fric 
Adf             2.45            ; Acceleration damping factor   
Psl         10.92         ; piston seal width 
Vsl         9.5          ; valve stem seal width 
Osdia     34.93         ; Overide stem diameter 
Ossl      9.5         ; Overide stem seal width  
Vcc       1          ; Pressurized volume in closing cavity 
Vssl      47.8         ; Valve stem seal width 
Sodia    69.77        ; Gate seat OD 
Sidia     52.39        ; Gate seat ID  
Sw        8.89          ; Gate seat face width 
Gcop      12.65         ; Gate crack open point 
Ghdia    5          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen      20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff       0.01 ; Gate seal U-seal flow factor.  
Scff       0.05 ; Gate seal flow factor 
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3.     ; Pressurized volume in gate cavity  
Sdf       4             ; Stem Seal dynamic friction factor. 
Msdf      0.06          ; Min dynamic friction in Stem seal. 
Ssf       6             ; Stem packing seal static friction factor 
Mssf      0.09          ; Min static friction in Stem Packing Seal 
Gdf       10            ; Gate Seat dynamic friction factor. 
Mgdf      0.42          ; Min dynamic friction in Gate Seals 
Gsf       15            ; Gate Seal static friction factor 
Mgsf      0.63          ; Min static friction in Gate Seals 
Bsf       0.58          ; Average Belville spring force                [kN] 
Spfric      5              ; Spring friction loss                               [%] 
Sf1  -1155.75          ; Disc spring factor 1 
Sf2   1196.17            ; Disc spring factor 2 
Sf3         0.85539               ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         2
  Template     B
  Function     0x1055
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         2
  Template     B
  Function     0x2055
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Subsea Control Module
SCM          S
  Tree         3
  Template     B
  Function     0x3
  Depth                           1862.     
  Cv_fwr                          0.250
  Cv_fwq                         6.0e-3
  Svol                              4.0
  Rvol                              4.0
  PPrup                          593.0          
  PPrdo                             1.0
  Cvrhp_a                           0.0

;;; Xmas tree return manifold
MANIFOLD     T
  Tree         3
  Template     B
  Function     0x2004
  Depth                           1862.     
  Volume                         10.0          
  AssistFlowGain                   0.20
EXHAUST_VALVE T-Ev
  Tree         3
  Template     B
  Function     0x2004
  Cr                             40.0          
  Inc                               3.0
  Qref                             0.10
  Tau                            40.0
  Rh                             70.0

;;; Xmas-tree bladder
BLADDER      T-Bl
  Tree         3
  Template     B
  Function     0x2004
  Vmax                           86.0          
  Vmin                             0.10
  Dia                            11.0
  Len                            3.0
  Rh                             70.0
  In_vol                         86.0          

;;; SCM supply line
LINE         Ss
  Tree         3
  Template     B
  Function     0x1003
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Xmas tree return line
LINE         Tr
  Tree         3
  Template     B
  Function     0x2004
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; SCM bladder
BLADDER      S-Bl
  Tree         3
  Template     B
  Function     0x3
  Vmax                           1.0          
  Vmin                             0.10
  Dia                            11.0
  Len                            3.0
  Rh                             70.0
  In_vol                         1.0          

;;; SCM exhaust valve
EXHAUST_VALVE S-Ev
  Tree         3
  Template     B
  Function     0x3
  Cr                                3.0
  Inc                               3.0
  Qref                             0.10
  Tau                            40.0
  Rh                             70.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_5"-690_bar
  Tree         3
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
Sdf       4       ; Stem Seal dynamic friction factor.        [%] 
Msdf      0.06    ; Min dynamic friction in Stem seal.        [kN] 
Ssf       6       ; Stem packing seal static friction factor  [%] 
Mssf      0.09    ; Min static friction in Stem Packing Seal  [kN] 
Gdf       10      ; Gate Seat dynamic friction factor.        [%]  
Mgdf      0.42    ; Min dynamic friction in Gate Seals        [kN] 
Gsf       15      ; Gate Seal static friction factor          [%] 
Mgsf      0.83    ; Min static friction in Gate Seals         [kN] 
Bsf        2.09   ; Average Belville spring force             [kN] 
Spfric      5     ; Spring friction loss                      [%] 
Sf1  -1073.74            ; Disc spring factor 1 
Sf2   1373.4            ; Disc spring factor 2 
Sf3         0.71684    ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         3
  Template     B
  Function     0x1015
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         3
  Template     B
  Function     0x2015
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_5"-690_bar
  Tree         3
  Template     B
  Function     0x25
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
Sdf       4       ; Stem Seal dynamic friction factor.        [%] 
Msdf      0.06    ; Min dynamic friction in Stem seal.        [kN] 
Ssf       6       ; Stem packing seal static friction factor  [%] 
Mssf      0.09    ; Min static friction in Stem Packing Seal  [kN] 
Gdf       10      ; Gate Seat dynamic friction factor.        [%]  
Mgdf      0.42    ; Min dynamic friction in Gate Seals        [kN] 
Gsf       15      ; Gate Seal static friction factor          [%] 
Mgsf      0.83    ; Min static friction in Gate Seals         [kN] 
Bsf        2.09   ; Average Belville spring force             [kN] 
Spfric      5     ; Spring friction loss                      [%] 
Sf1  -1073.74            ; Disc spring factor 1 
Sf2   1373.4            ; Disc spring factor 2 
Sf3         0.71684    ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         3
  Template     B
  Function     0x1025
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         3
  Template     B
  Function     0x2025
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-690_bar
  Tree         3
  Template     B
  Function     0x35
Pdia       114.3        ; Actuator piston diameter  [mm] 
  Msdia                             0.0
Sc        0        ; Actuator spring constant = 0 forces the disc sping parameters to be used 
Spre       0.1172        ; Spring pretension   [m] 
Mass       50           ; Mass of accelerated components   [kg] 
Smax      0.06502        ; Actuator stroke.   [m] 
Voc       .6           ; Pressurized volume in opening cavity  
Vsdia     38.1         ; Valve stem diameter  [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        4             ; Actuator Seal dynamic (colomb) friction factor.  
Mdf       0.04          ; Min dynamic friction in actuator seals. 
Sf        10            ; Actuator Seal static (stiction) friction factor  
Msf       0.1          ; Min static friction in actuator seals. 
Ld        10.0          ; Linear damping of actuator. 
Vlim      0.0002        ; Velocity limit between stiction and colomb fric 
Adf             2.45            ; Acceleration damping factor   
Psl         10.92         ; piston seal width 
Vsl         9.5          ; valve stem seal width 
Osdia     34.93         ; Overide stem diameter 
Ossl      9.5         ; Overide stem seal width  
Vcc       1          ; Pressurized volume in closing cavity 
Vssl      47.8         ; Valve stem seal width 
Sodia    69.77        ; Gate seat OD 
Sidia     52.39        ; Gate seat ID  
Sw        8.89          ; Gate seat face width 
Gcop      12.65         ; Gate crack open point 
Ghdia    5          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen      20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff       0.01 ; Gate seal U-seal flow factor.  
Scff       0.05 ; Gate seal flow factor 
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3.     ; Pressurized volume in gate cavity  
Sdf       4             ; Stem Seal dynamic friction factor. 
Msdf      0.06          ; Min dynamic friction in Stem seal. 
Ssf       6             ; Stem packing seal static friction factor 
Mssf      0.09          ; Min static friction in Stem Packing Seal 
Gdf       10            ; Gate Seat dynamic friction factor. 
Mgdf      0.42          ; Min dynamic friction in Gate Seals 
Gsf       15            ; Gate Seal static friction factor 
Mgsf      0.63          ; Min static friction in Gate Seals 
Bsf       0.58          ; Average Belville spring force                [kN] 
Spfric      5              ; Spring friction loss                               [%] 
Sf1  -1155.75          ; Disc spring factor 1 
Sf2   1196.17            ; Disc spring factor 2 
Sf3         0.85539               ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         3
  Template     B
  Function     0x1035
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         3
  Template     B
  Function     0x2035
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-690_bar
  Tree         3
  Template     B
  Function     0x45
Pdia       114.3        ; Actuator piston diameter  [mm] 
  Msdia                             0.0
Sc        0        ; Actuator spring constant = 0 forces the disc sping parameters to be used 
Spre       0.1172        ; Spring pretension   [m] 
Mass       50           ; Mass of accelerated components   [kg] 
Smax      0.06502        ; Actuator stroke.   [m] 
Voc       .6           ; Pressurized volume in opening cavity  
Vsdia     38.1         ; Valve stem diameter  [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        4             ; Actuator Seal dynamic (colomb) friction factor.  
Mdf       0.04          ; Min dynamic friction in actuator seals. 
Sf        10            ; Actuator Seal static (stiction) friction factor  
Msf       0.1          ; Min static friction in actuator seals. 
Ld        10.0          ; Linear damping of actuator. 
Vlim      0.0002        ; Velocity limit between stiction and colomb fric 
Adf             2.45            ; Acceleration damping factor   
Psl         10.92         ; piston seal width 
Vsl         9.5          ; valve stem seal width 
Osdia     34.93         ; Overide stem diameter 
Ossl      9.5         ; Overide stem seal width  
Vcc       1          ; Pressurized volume in closing cavity 
Vssl      47.8         ; Valve stem seal width 
Sodia    69.77        ; Gate seat OD 
Sidia     52.39        ; Gate seat ID  
Sw        8.89          ; Gate seat face width 
Gcop      12.65         ; Gate crack open point 
Ghdia    5          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen      20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff       0.01 ; Gate seal U-seal flow factor.  
Scff       0.05 ; Gate seal flow factor 
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3.     ; Pressurized volume in gate cavity  
Sdf       4             ; Stem Seal dynamic friction factor. 
Msdf      0.06          ; Min dynamic friction in Stem seal. 
Ssf       6             ; Stem packing seal static friction factor 
Mssf      0.09          ; Min static friction in Stem Packing Seal 
Gdf       10            ; Gate Seat dynamic friction factor. 
Mgdf      0.42          ; Min dynamic friction in Gate Seals 
Gsf       15            ; Gate Seal static friction factor 
Mgsf      0.63          ; Min static friction in Gate Seals 
Bsf       0.58          ; Average Belville spring force                [kN] 
Spfric      5              ; Spring friction loss                               [%] 
Sf1  -1155.75          ; Disc spring factor 1 
Sf2   1196.17            ; Disc spring factor 2 
Sf3         0.85539               ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         3
  Template     B
  Function     0x1045
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         3
  Template     B
  Function     0x2045
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-690_bar
  Tree         3
  Template     B
  Function     0x55
Pdia       114.3        ; Actuator piston diameter  [mm] 
  Msdia                             0.0
Sc        0        ; Actuator spring constant = 0 forces the disc sping parameters to be used 
Spre       0.1172        ; Spring pretension   [m] 
Mass       50           ; Mass of accelerated components   [kg] 
Smax      0.06502        ; Actuator stroke.   [m] 
Voc       .6           ; Pressurized volume in opening cavity  
Vsdia     38.1         ; Valve stem diameter  [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        4             ; Actuator Seal dynamic (colomb) friction factor.  
Mdf       0.04          ; Min dynamic friction in actuator seals. 
Sf        10            ; Actuator Seal static (stiction) friction factor  
Msf       0.1          ; Min static friction in actuator seals. 
Ld        10.0          ; Linear damping of actuator. 
Vlim      0.0002        ; Velocity limit between stiction and colomb fric 
Adf             2.45            ; Acceleration damping factor   
Psl         10.92         ; piston seal width 
Vsl         9.5          ; valve stem seal width 
Osdia     34.93         ; Overide stem diameter 
Ossl      9.5         ; Overide stem seal width  
Vcc       1          ; Pressurized volume in closing cavity 
Vssl      47.8         ; Valve stem seal width 
Sodia    69.77        ; Gate seat OD 
Sidia     52.39        ; Gate seat ID  
Sw        8.89          ; Gate seat face width 
Gcop      12.65         ; Gate crack open point 
Ghdia    5          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen      20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff       0.01 ; Gate seal U-seal flow factor.  
Scff       0.05 ; Gate seal flow factor 
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3.     ; Pressurized volume in gate cavity  
Sdf       4             ; Stem Seal dynamic friction factor. 
Msdf      0.06          ; Min dynamic friction in Stem seal. 
Ssf       6             ; Stem packing seal static friction factor 
Mssf      0.09          ; Min static friction in Stem Packing Seal 
Gdf       10            ; Gate Seat dynamic friction factor. 
Mgdf      0.42          ; Min dynamic friction in Gate Seals 
Gsf       15            ; Gate Seal static friction factor 
Mgsf      0.63          ; Min static friction in Gate Seals 
Bsf       0.58          ; Average Belville spring force                [kN] 
Spfric      5              ; Spring friction loss                               [%] 
Sf1  -1155.75          ; Disc spring factor 1 
Sf2   1196.17            ; Disc spring factor 2 
Sf3         0.85539               ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         3
  Template     B
  Function     0x1055
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         3
  Template     B
  Function     0x2055
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Subsea Control Module
SCM          S
  Tree         4
  Template     B
  Function     0x3
  Depth                           1862.     
  Cv_fwr                          0.250
  Cv_fwq                         6.0e-3
  Svol                              4.0
  Rvol                              4.0
  PPrup                          593.0          
  PPrdo                             1.0
  Cvrhp_a                           0.0

;;; Xmas tree return manifold
MANIFOLD     T
  Tree         4
  Template     B
  Function     0x2004
  Depth                           1862.     
  Volume                         10.0          
  AssistFlowGain                   0.20
EXHAUST_VALVE T-Ev
  Tree         4
  Template     B
  Function     0x2004
  Cr                             40.0          
  Inc                               3.0
  Qref                             0.10
  Tau                            40.0
  Rh                             70.0

;;; Xmas-tree bladder
BLADDER      T-Bl
  Tree         4
  Template     B
  Function     0x2004
  Vmax                           86.0          
  Vmin                             0.10
  Dia                            11.0
  Len                            3.0
  Rh                             70.0
  In_vol                         86.0          

;;; SCM supply line
LINE         Ss
  Tree         4
  Template     B
  Function     0x1003
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Xmas tree return line
LINE         Tr
  Tree         4
  Template     B
  Function     0x2004
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; SCM bladder
BLADDER      S-Bl
  Tree         4
  Template     B
  Function     0x3
  Vmax                           1.0          
  Vmin                             0.10
  Dia                            11.0
  Len                            3.0
  Rh                             70.0
  In_vol                         1.0          

;;; SCM exhaust valve
EXHAUST_VALVE S-Ev
  Tree         4
  Template     B
  Function     0x3
  Cr                                3.0
  Inc                               3.0
  Qref                             0.10
  Tau                            40.0
  Rh                             70.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_5"-690_bar
  Tree         4
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
Sdf       4       ; Stem Seal dynamic friction factor.        [%] 
Msdf      0.06    ; Min dynamic friction in Stem seal.        [kN] 
Ssf       6       ; Stem packing seal static friction factor  [%] 
Mssf      0.09    ; Min static friction in Stem Packing Seal  [kN] 
Gdf       10      ; Gate Seat dynamic friction factor.        [%]  
Mgdf      0.42    ; Min dynamic friction in Gate Seals        [kN] 
Gsf       15      ; Gate Seal static friction factor          [%] 
Mgsf      0.83    ; Min static friction in Gate Seals         [kN] 
Bsf        2.09   ; Average Belville spring force             [kN] 
Spfric      5     ; Spring friction loss                      [%] 
Sf1  -1073.74            ; Disc spring factor 1 
Sf2   1373.4            ; Disc spring factor 2 
Sf3         0.71684    ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         4
  Template     B
  Function     0x1015
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         4
  Template     B
  Function     0x2015
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_5"-690_bar
  Tree         4
  Template     B
  Function     0x25
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
Sdf       4       ; Stem Seal dynamic friction factor.        [%] 
Msdf      0.06    ; Min dynamic friction in Stem seal.        [kN] 
Ssf       6       ; Stem packing seal static friction factor  [%] 
Mssf      0.09    ; Min static friction in Stem Packing Seal  [kN] 
Gdf       10      ; Gate Seat dynamic friction factor.        [%]  
Mgdf      0.42    ; Min dynamic friction in Gate Seals        [kN] 
Gsf       15      ; Gate Seal static friction factor          [%] 
Mgsf      0.83    ; Min static friction in Gate Seals         [kN] 
Bsf        2.09   ; Average Belville spring force             [kN] 
Spfric      5     ; Spring friction loss                      [%] 
Sf1  -1073.74            ; Disc spring factor 1 
Sf2   1373.4            ; Disc spring factor 2 
Sf3         0.71684    ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         4
  Template     B
  Function     0x1025
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         4
  Template     B
  Function     0x2025
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-690_bar
  Tree         4
  Template     B
  Function     0x35
Pdia       114.3        ; Actuator piston diameter  [mm] 
  Msdia                             0.0
Sc        0        ; Actuator spring constant = 0 forces the disc sping parameters to be used 
Spre       0.1172        ; Spring pretension   [m] 
Mass       50           ; Mass of accelerated components   [kg] 
Smax      0.06502        ; Actuator stroke.   [m] 
Voc       .6           ; Pressurized volume in opening cavity  
Vsdia     38.1         ; Valve stem diameter  [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        4             ; Actuator Seal dynamic (colomb) friction factor.  
Mdf       0.04          ; Min dynamic friction in actuator seals. 
Sf        10            ; Actuator Seal static (stiction) friction factor  
Msf       0.1          ; Min static friction in actuator seals. 
Ld        10.0          ; Linear damping of actuator. 
Vlim      0.0002        ; Velocity limit between stiction and colomb fric 
Adf             2.45            ; Acceleration damping factor   
Psl         10.92         ; piston seal width 
Vsl         9.5          ; valve stem seal width 
Osdia     34.93         ; Overide stem diameter 
Ossl      9.5         ; Overide stem seal width  
Vcc       1          ; Pressurized volume in closing cavity 
Vssl      47.8         ; Valve stem seal width 
Sodia    69.77        ; Gate seat OD 
Sidia     52.39        ; Gate seat ID  
Sw        8.89          ; Gate seat face width 
Gcop      12.65         ; Gate crack open point 
Ghdia    5          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen      20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff       0.01 ; Gate seal U-seal flow factor.  
Scff       0.05 ; Gate seal flow factor 
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3.     ; Pressurized volume in gate cavity  
Sdf       4             ; Stem Seal dynamic friction factor. 
Msdf      0.06          ; Min dynamic friction in Stem seal. 
Ssf       6             ; Stem packing seal static friction factor 
Mssf      0.09          ; Min static friction in Stem Packing Seal 
Gdf       10            ; Gate Seat dynamic friction factor. 
Mgdf      0.42          ; Min dynamic friction in Gate Seals 
Gsf       15            ; Gate Seal static friction factor 
Mgsf      0.63          ; Min static friction in Gate Seals 
Bsf       0.58          ; Average Belville spring force                [kN] 
Spfric      5              ; Spring friction loss                               [%] 
Sf1  -1155.75          ; Disc spring factor 1 
Sf2   1196.17            ; Disc spring factor 2 
Sf3         0.85539               ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         4
  Template     B
  Function     0x1035
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         4
  Template     B
  Function     0x2035
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-690_bar
  Tree         4
  Template     B
  Function     0x45
Pdia       114.3        ; Actuator piston diameter  [mm] 
  Msdia                             0.0
Sc        0        ; Actuator spring constant = 0 forces the disc sping parameters to be used 
Spre       0.1172        ; Spring pretension   [m] 
Mass       50           ; Mass of accelerated components   [kg] 
Smax      0.06502        ; Actuator stroke.   [m] 
Voc       .6           ; Pressurized volume in opening cavity  
Vsdia     38.1         ; Valve stem diameter  [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        4             ; Actuator Seal dynamic (colomb) friction factor.  
Mdf       0.04          ; Min dynamic friction in actuator seals. 
Sf        10            ; Actuator Seal static (stiction) friction factor  
Msf       0.1          ; Min static friction in actuator seals. 
Ld        10.0          ; Linear damping of actuator. 
Vlim      0.0002        ; Velocity limit between stiction and colomb fric 
Adf             2.45            ; Acceleration damping factor   
Psl         10.92         ; piston seal width 
Vsl         9.5          ; valve stem seal width 
Osdia     34.93         ; Overide stem diameter 
Ossl      9.5         ; Overide stem seal width  
Vcc       1          ; Pressurized volume in closing cavity 
Vssl      47.8         ; Valve stem seal width 
Sodia    69.77        ; Gate seat OD 
Sidia     52.39        ; Gate seat ID  
Sw        8.89          ; Gate seat face width 
Gcop      12.65         ; Gate crack open point 
Ghdia    5          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen      20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff       0.01 ; Gate seal U-seal flow factor.  
Scff       0.05 ; Gate seal flow factor 
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3.     ; Pressurized volume in gate cavity  
Sdf       4             ; Stem Seal dynamic friction factor. 
Msdf      0.06          ; Min dynamic friction in Stem seal. 
Ssf       6             ; Stem packing seal static friction factor 
Mssf      0.09          ; Min static friction in Stem Packing Seal 
Gdf       10            ; Gate Seat dynamic friction factor. 
Mgdf      0.42          ; Min dynamic friction in Gate Seals 
Gsf       15            ; Gate Seal static friction factor 
Mgsf      0.63          ; Min static friction in Gate Seals 
Bsf       0.58          ; Average Belville spring force                [kN] 
Spfric      5              ; Spring friction loss                               [%] 
Sf1  -1155.75          ; Disc spring factor 1 
Sf2   1196.17            ; Disc spring factor 2 
Sf3         0.85539               ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         4
  Template     B
  Function     0x1045
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         4
  Template     B
  Function     0x2045
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-690_bar
  Tree         4
  Template     B
  Function     0x55
Pdia       114.3        ; Actuator piston diameter  [mm] 
  Msdia                             0.0
Sc        0        ; Actuator spring constant = 0 forces the disc sping parameters to be used 
Spre       0.1172        ; Spring pretension   [m] 
Mass       50           ; Mass of accelerated components   [kg] 
Smax      0.06502        ; Actuator stroke.   [m] 
Voc       .6           ; Pressurized volume in opening cavity  
Vsdia     38.1         ; Valve stem diameter  [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        4             ; Actuator Seal dynamic (colomb) friction factor.  
Mdf       0.04          ; Min dynamic friction in actuator seals. 
Sf        10            ; Actuator Seal static (stiction) friction factor  
Msf       0.1          ; Min static friction in actuator seals. 
Ld        10.0          ; Linear damping of actuator. 
Vlim      0.0002        ; Velocity limit between stiction and colomb fric 
Adf             2.45            ; Acceleration damping factor   
Psl         10.92         ; piston seal width 
Vsl         9.5          ; valve stem seal width 
Osdia     34.93         ; Overide stem diameter 
Ossl      9.5         ; Overide stem seal width  
Vcc       1          ; Pressurized volume in closing cavity 
Vssl      47.8         ; Valve stem seal width 
Sodia    69.77        ; Gate seat OD 
Sidia     52.39        ; Gate seat ID  
Sw        8.89          ; Gate seat face width 
Gcop      12.65         ; Gate crack open point 
Ghdia    5          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen      20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff       0.01 ; Gate seal U-seal flow factor.  
Scff       0.05 ; Gate seal flow factor 
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3.     ; Pressurized volume in gate cavity  
Sdf       4             ; Stem Seal dynamic friction factor. 
Msdf      0.06          ; Min dynamic friction in Stem seal. 
Ssf       6             ; Stem packing seal static friction factor 
Mssf      0.09          ; Min static friction in Stem Packing Seal 
Gdf       10            ; Gate Seat dynamic friction factor. 
Mgdf      0.42          ; Min dynamic friction in Gate Seals 
Gsf       15            ; Gate Seal static friction factor 
Mgsf      0.63          ; Min static friction in Gate Seals 
Bsf       0.58          ; Average Belville spring force                [kN] 
Spfric      5              ; Spring friction loss                               [%] 
Sf1  -1155.75          ; Disc spring factor 1 
Sf2   1196.17            ; Disc spring factor 2 
Sf3         0.85539               ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         4
  Template     B
  Function     0x1055
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         4
  Template     B
  Function     0x2055
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Subsea Control Module
SCM          S
  Tree         1
  Template     C
  Function     0x3
  Depth                           1862.     
  Cv_fwr                          0.250
  Cv_fwq                         6.0e-3
  Svol                              4.0
  Rvol                              4.0
  PPrup                          593.0          
  PPrdo                             1.0
  Cvrhp_a                           0.0

;;; Xmas tree return manifold
MANIFOLD     T
  Tree         1
  Template     C
  Function     0x2004
  Depth                           1862.     
  Volume                         10.0          
  AssistFlowGain                   0.20
EXHAUST_VALVE T-Ev
  Tree         1
  Template     C
  Function     0x2004
  Cr                             40.0          
  Inc                               3.0
  Qref                             0.10
  Tau                            40.0
  Rh                             70.0

;;; Xmas-tree bladder
BLADDER      T-Bl
  Tree         1
  Template     C
  Function     0x2004
  Vmax                           86.0          
  Vmin                             0.10
  Dia                            11.0
  Len                            3.0
  Rh                             70.0
  In_vol                         86.0          

;;; SCM supply line
LINE         Ss
  Tree         1
  Template     C
  Function     0x1003
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Xmas tree return line
LINE         Tr
  Tree         1
  Template     C
  Function     0x2004
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; SCM bladder
BLADDER      S-Bl
  Tree         1
  Template     C
  Function     0x3
  Vmax                           1.0          
  Vmin                             0.10
  Dia                            11.0
  Len                            3.0
  Rh                             70.0
  In_vol                         1.0          

;;; SCM exhaust valve
EXHAUST_VALVE S-Ev
  Tree         1
  Template     C
  Function     0x3
  Cr                                3.0
  Inc                               3.0
  Qref                             0.10
  Tau                            40.0
  Rh                             70.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_5"-690_bar
  Tree         1
  Template     C
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
Sdf       4       ; Stem Seal dynamic friction factor.        [%] 
Msdf      0.06    ; Min dynamic friction in Stem seal.        [kN] 
Ssf       6       ; Stem packing seal static friction factor  [%] 
Mssf      0.09    ; Min static friction in Stem Packing Seal  [kN] 
Gdf       10      ; Gate Seat dynamic friction factor.        [%]  
Mgdf      0.42    ; Min dynamic friction in Gate Seals        [kN] 
Gsf       15      ; Gate Seal static friction factor          [%] 
Mgsf      0.83    ; Min static friction in Gate Seals         [kN] 
Bsf        2.09   ; Average Belville spring force             [kN] 
Spfric      5     ; Spring friction loss                      [%] 
Sf1  -1073.74            ; Disc spring factor 1 
Sf2   1373.4            ; Disc spring factor 2 
Sf3         0.71684    ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     C
  Function     0x1015
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         1
  Template     C
  Function     0x2015
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_5"-690_bar
  Tree         1
  Template     C
  Function     0x25
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
Sdf       4       ; Stem Seal dynamic friction factor.        [%] 
Msdf      0.06    ; Min dynamic friction in Stem seal.        [kN] 
Ssf       6       ; Stem packing seal static friction factor  [%] 
Mssf      0.09    ; Min static friction in Stem Packing Seal  [kN] 
Gdf       10      ; Gate Seat dynamic friction factor.        [%]  
Mgdf      0.42    ; Min dynamic friction in Gate Seals        [kN] 
Gsf       15      ; Gate Seal static friction factor          [%] 
Mgsf      0.83    ; Min static friction in Gate Seals         [kN] 
Bsf        2.09   ; Average Belville spring force             [kN] 
Spfric      5     ; Spring friction loss                      [%] 
Sf1  -1073.74            ; Disc spring factor 1 
Sf2   1373.4            ; Disc spring factor 2 
Sf3         0.71684    ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     C
  Function     0x1025
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         1
  Template     C
  Function     0x2025
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-690_bar
  Tree         1
  Template     C
  Function     0x35
Pdia       114.3        ; Actuator piston diameter  [mm] 
  Msdia                             0.0
Sc        0        ; Actuator spring constant = 0 forces the disc sping parameters to be used 
Spre       0.1172        ; Spring pretension   [m] 
Mass       50           ; Mass of accelerated components   [kg] 
Smax      0.06502        ; Actuator stroke.   [m] 
Voc       .6           ; Pressurized volume in opening cavity  
Vsdia     38.1         ; Valve stem diameter  [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        4             ; Actuator Seal dynamic (colomb) friction factor.  
Mdf       0.04          ; Min dynamic friction in actuator seals. 
Sf        10            ; Actuator Seal static (stiction) friction factor  
Msf       0.1          ; Min static friction in actuator seals. 
Ld        10.0          ; Linear damping of actuator. 
Vlim      0.0002        ; Velocity limit between stiction and colomb fric 
Adf             2.45            ; Acceleration damping factor   
Psl         10.92         ; piston seal width 
Vsl         9.5          ; valve stem seal width 
Osdia     34.93         ; Overide stem diameter 
Ossl      9.5         ; Overide stem seal width  
Vcc       1          ; Pressurized volume in closing cavity 
Vssl      47.8         ; Valve stem seal width 
Sodia    69.77        ; Gate seat OD 
Sidia     52.39        ; Gate seat ID  
Sw        8.89          ; Gate seat face width 
Gcop      12.65         ; Gate crack open point 
Ghdia    5          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen      20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff       0.01 ; Gate seal U-seal flow factor.  
Scff       0.05 ; Gate seal flow factor 
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3.     ; Pressurized volume in gate cavity  
Sdf       4             ; Stem Seal dynamic friction factor. 
Msdf      0.06          ; Min dynamic friction in Stem seal. 
Ssf       6             ; Stem packing seal static friction factor 
Mssf      0.09          ; Min static friction in Stem Packing Seal 
Gdf       10            ; Gate Seat dynamic friction factor. 
Mgdf      0.42          ; Min dynamic friction in Gate Seals 
Gsf       15            ; Gate Seal static friction factor 
Mgsf      0.63          ; Min static friction in Gate Seals 
Bsf       0.58          ; Average Belville spring force                [kN] 
Spfric      5              ; Spring friction loss                               [%] 
Sf1  -1155.75          ; Disc spring factor 1 
Sf2   1196.17            ; Disc spring factor 2 
Sf3         0.85539               ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     C
  Function     0x1035
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         1
  Template     C
  Function     0x2035
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-690_bar
  Tree         1
  Template     C
  Function     0x45
Pdia       114.3        ; Actuator piston diameter  [mm] 
  Msdia                             0.0
Sc        0        ; Actuator spring constant = 0 forces the disc sping parameters to be used 
Spre       0.1172        ; Spring pretension   [m] 
Mass       50           ; Mass of accelerated components   [kg] 
Smax      0.06502        ; Actuator stroke.   [m] 
Voc       .6           ; Pressurized volume in opening cavity  
Vsdia     38.1         ; Valve stem diameter  [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        4             ; Actuator Seal dynamic (colomb) friction factor.  
Mdf       0.04          ; Min dynamic friction in actuator seals. 
Sf        10            ; Actuator Seal static (stiction) friction factor  
Msf       0.1          ; Min static friction in actuator seals. 
Ld        10.0          ; Linear damping of actuator. 
Vlim      0.0002        ; Velocity limit between stiction and colomb fric 
Adf             2.45            ; Acceleration damping factor   
Psl         10.92         ; piston seal width 
Vsl         9.5          ; valve stem seal width 
Osdia     34.93         ; Overide stem diameter 
Ossl      9.5         ; Overide stem seal width  
Vcc       1          ; Pressurized volume in closing cavity 
Vssl      47.8         ; Valve stem seal width 
Sodia    69.77        ; Gate seat OD 
Sidia     52.39        ; Gate seat ID  
Sw        8.89          ; Gate seat face width 
Gcop      12.65         ; Gate crack open point 
Ghdia    5          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen      20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff       0.01 ; Gate seal U-seal flow factor.  
Scff       0.05 ; Gate seal flow factor 
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3.     ; Pressurized volume in gate cavity  
Sdf       4             ; Stem Seal dynamic friction factor. 
Msdf      0.06          ; Min dynamic friction in Stem seal. 
Ssf       6             ; Stem packing seal static friction factor 
Mssf      0.09          ; Min static friction in Stem Packing Seal 
Gdf       10            ; Gate Seat dynamic friction factor. 
Mgdf      0.42          ; Min dynamic friction in Gate Seals 
Gsf       15            ; Gate Seal static friction factor 
Mgsf      0.63          ; Min static friction in Gate Seals 
Bsf       0.58          ; Average Belville spring force                [kN] 
Spfric      5              ; Spring friction loss                               [%] 
Sf1  -1155.75          ; Disc spring factor 1 
Sf2   1196.17            ; Disc spring factor 2 
Sf3         0.85539               ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     C
  Function     0x1045
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         1
  Template     C
  Function     0x2045
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-690_bar
  Tree         1
  Template     C
  Function     0x55
Pdia       114.3        ; Actuator piston diameter  [mm] 
  Msdia                             0.0
Sc        0        ; Actuator spring constant = 0 forces the disc sping parameters to be used 
Spre       0.1172        ; Spring pretension   [m] 
Mass       50           ; Mass of accelerated components   [kg] 
Smax      0.06502        ; Actuator stroke.   [m] 
Voc       .6           ; Pressurized volume in opening cavity  
Vsdia     38.1         ; Valve stem diameter  [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        4             ; Actuator Seal dynamic (colomb) friction factor.  
Mdf       0.04          ; Min dynamic friction in actuator seals. 
Sf        10            ; Actuator Seal static (stiction) friction factor  
Msf       0.1          ; Min static friction in actuator seals. 
Ld        10.0          ; Linear damping of actuator. 
Vlim      0.0002        ; Velocity limit between stiction and colomb fric 
Adf             2.45            ; Acceleration damping factor   
Psl         10.92         ; piston seal width 
Vsl         9.5          ; valve stem seal width 
Osdia     34.93         ; Overide stem diameter 
Ossl      9.5         ; Overide stem seal width  
Vcc       1          ; Pressurized volume in closing cavity 
Vssl      47.8         ; Valve stem seal width 
Sodia    69.77        ; Gate seat OD 
Sidia     52.39        ; Gate seat ID  
Sw        8.89          ; Gate seat face width 
Gcop      12.65         ; Gate crack open point 
Ghdia    5          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen      20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff       0.01 ; Gate seal U-seal flow factor.  
Scff       0.05 ; Gate seal flow factor 
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3.     ; Pressurized volume in gate cavity  
Sdf       4             ; Stem Seal dynamic friction factor. 
Msdf      0.06          ; Min dynamic friction in Stem seal. 
Ssf       6             ; Stem packing seal static friction factor 
Mssf      0.09          ; Min static friction in Stem Packing Seal 
Gdf       10            ; Gate Seat dynamic friction factor. 
Mgdf      0.42          ; Min dynamic friction in Gate Seals 
Gsf       15            ; Gate Seal static friction factor 
Mgsf      0.63          ; Min static friction in Gate Seals 
Bsf       0.58          ; Average Belville spring force                [kN] 
Spfric      5              ; Spring friction loss                               [%] 
Sf1  -1155.75          ; Disc spring factor 1 
Sf2   1196.17            ; Disc spring factor 2 
Sf3         0.85539               ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     C
  Function     0x1055
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         1
  Template     C
  Function     0x2055
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Subsea Control Module
SCM          S
  Tree         2
  Template     C
  Function     0x3
  Depth                           1862.     
  Cv_fwr                          0.250
  Cv_fwq                         6.0e-3
  Svol                              4.0
  Rvol                              4.0
  PPrup                          593.0          
  PPrdo                             1.0
  Cvrhp_a                           0.0

;;; Xmas tree return manifold
MANIFOLD     T
  Tree         2
  Template     C
  Function     0x2004
  Depth                           1862.     
  Volume                         10.0          
  AssistFlowGain                   0.20
EXHAUST_VALVE T-Ev
  Tree         2
  Template     C
  Function     0x2004
  Cr                             40.0          
  Inc                               3.0
  Qref                             0.10
  Tau                            40.0
  Rh                             70.0

;;; Xmas-tree bladder
BLADDER      T-Bl
  Tree         2
  Template     C
  Function     0x2004
  Vmax                           86.0          
  Vmin                             0.10
  Dia                            11.0
  Len                            3.0
  Rh                             70.0
  In_vol                         86.0          

;;; SCM supply line
LINE         Ss
  Tree         2
  Template     C
  Function     0x1003
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Xmas tree return line
LINE         Tr
  Tree         2
  Template     C
  Function     0x2004
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; SCM bladder
BLADDER      S-Bl
  Tree         2
  Template     C
  Function     0x3
  Vmax                           1.0          
  Vmin                             0.10
  Dia                            11.0
  Len                            3.0
  Rh                             70.0
  In_vol                         1.0          

;;; SCM exhaust valve
EXHAUST_VALVE S-Ev
  Tree         2
  Template     C
  Function     0x3
  Cr                                3.0
  Inc                               3.0
  Qref                             0.10
  Tau                            40.0
  Rh                             70.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_5"-690_bar
  Tree         2
  Template     C
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
Sdf       4       ; Stem Seal dynamic friction factor.        [%] 
Msdf      0.06    ; Min dynamic friction in Stem seal.        [kN] 
Ssf       6       ; Stem packing seal static friction factor  [%] 
Mssf      0.09    ; Min static friction in Stem Packing Seal  [kN] 
Gdf       10      ; Gate Seat dynamic friction factor.        [%]  
Mgdf      0.42    ; Min dynamic friction in Gate Seals        [kN] 
Gsf       15      ; Gate Seal static friction factor          [%] 
Mgsf      0.83    ; Min static friction in Gate Seals         [kN] 
Bsf        2.09   ; Average Belville spring force             [kN] 
Spfric      5     ; Spring friction loss                      [%] 
Sf1  -1073.74            ; Disc spring factor 1 
Sf2   1373.4            ; Disc spring factor 2 
Sf3         0.71684    ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         2
  Template     C
  Function     0x1015
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         2
  Template     C
  Function     0x2015
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_5"-690_bar
  Tree         2
  Template     C
  Function     0x25
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
Sdf       4       ; Stem Seal dynamic friction factor.        [%] 
Msdf      0.06    ; Min dynamic friction in Stem seal.        [kN] 
Ssf       6       ; Stem packing seal static friction factor  [%] 
Mssf      0.09    ; Min static friction in Stem Packing Seal  [kN] 
Gdf       10      ; Gate Seat dynamic friction factor.        [%]  
Mgdf      0.42    ; Min dynamic friction in Gate Seals        [kN] 
Gsf       15      ; Gate Seal static friction factor          [%] 
Mgsf      0.83    ; Min static friction in Gate Seals         [kN] 
Bsf        2.09   ; Average Belville spring force             [kN] 
Spfric      5     ; Spring friction loss                      [%] 
Sf1  -1073.74            ; Disc spring factor 1 
Sf2   1373.4            ; Disc spring factor 2 
Sf3         0.71684    ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         2
  Template     C
  Function     0x1025
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         2
  Template     C
  Function     0x2025
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-690_bar
  Tree         2
  Template     C
  Function     0x35
Pdia       114.3        ; Actuator piston diameter  [mm] 
  Msdia                             0.0
Sc        0        ; Actuator spring constant = 0 forces the disc sping parameters to be used 
Spre       0.1172        ; Spring pretension   [m] 
Mass       50           ; Mass of accelerated components   [kg] 
Smax      0.06502        ; Actuator stroke.   [m] 
Voc       .6           ; Pressurized volume in opening cavity  
Vsdia     38.1         ; Valve stem diameter  [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        4             ; Actuator Seal dynamic (colomb) friction factor.  
Mdf       0.04          ; Min dynamic friction in actuator seals. 
Sf        10            ; Actuator Seal static (stiction) friction factor  
Msf       0.1          ; Min static friction in actuator seals. 
Ld        10.0          ; Linear damping of actuator. 
Vlim      0.0002        ; Velocity limit between stiction and colomb fric 
Adf             2.45            ; Acceleration damping factor   
Psl         10.92         ; piston seal width 
Vsl         9.5          ; valve stem seal width 
Osdia     34.93         ; Overide stem diameter 
Ossl      9.5         ; Overide stem seal width  
Vcc       1          ; Pressurized volume in closing cavity 
Vssl      47.8         ; Valve stem seal width 
Sodia    69.77        ; Gate seat OD 
Sidia     52.39        ; Gate seat ID  
Sw        8.89          ; Gate seat face width 
Gcop      12.65         ; Gate crack open point 
Ghdia    5          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen      20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff       0.01 ; Gate seal U-seal flow factor.  
Scff       0.05 ; Gate seal flow factor 
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3.     ; Pressurized volume in gate cavity  
Sdf       4             ; Stem Seal dynamic friction factor. 
Msdf      0.06          ; Min dynamic friction in Stem seal. 
Ssf       6             ; Stem packing seal static friction factor 
Mssf      0.09          ; Min static friction in Stem Packing Seal 
Gdf       10            ; Gate Seat dynamic friction factor. 
Mgdf      0.42          ; Min dynamic friction in Gate Seals 
Gsf       15            ; Gate Seal static friction factor 
Mgsf      0.63          ; Min static friction in Gate Seals 
Bsf       0.58          ; Average Belville spring force                [kN] 
Spfric      5              ; Spring friction loss                               [%] 
Sf1  -1155.75          ; Disc spring factor 1 
Sf2   1196.17            ; Disc spring factor 2 
Sf3         0.85539               ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         2
  Template     C
  Function     0x1035
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         2
  Template     C
  Function     0x2035
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-690_bar
  Tree         2
  Template     C
  Function     0x45
Pdia       114.3        ; Actuator piston diameter  [mm] 
  Msdia                             0.0
Sc        0        ; Actuator spring constant = 0 forces the disc sping parameters to be used 
Spre       0.1172        ; Spring pretension   [m] 
Mass       50           ; Mass of accelerated components   [kg] 
Smax      0.06502        ; Actuator stroke.   [m] 
Voc       .6           ; Pressurized volume in opening cavity  
Vsdia     38.1         ; Valve stem diameter  [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        4             ; Actuator Seal dynamic (colomb) friction factor.  
Mdf       0.04          ; Min dynamic friction in actuator seals. 
Sf        10            ; Actuator Seal static (stiction) friction factor  
Msf       0.1          ; Min static friction in actuator seals. 
Ld        10.0          ; Linear damping of actuator. 
Vlim      0.0002        ; Velocity limit between stiction and colomb fric 
Adf             2.45            ; Acceleration damping factor   
Psl         10.92         ; piston seal width 
Vsl         9.5          ; valve stem seal width 
Osdia     34.93         ; Overide stem diameter 
Ossl      9.5         ; Overide stem seal width  
Vcc       1          ; Pressurized volume in closing cavity 
Vssl      47.8         ; Valve stem seal width 
Sodia    69.77        ; Gate seat OD 
Sidia     52.39        ; Gate seat ID  
Sw        8.89          ; Gate seat face width 
Gcop      12.65         ; Gate crack open point 
Ghdia    5          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen      20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff       0.01 ; Gate seal U-seal flow factor.  
Scff       0.05 ; Gate seal flow factor 
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3.     ; Pressurized volume in gate cavity  
Sdf       4             ; Stem Seal dynamic friction factor. 
Msdf      0.06          ; Min dynamic friction in Stem seal. 
Ssf       6             ; Stem packing seal static friction factor 
Mssf      0.09          ; Min static friction in Stem Packing Seal 
Gdf       10            ; Gate Seat dynamic friction factor. 
Mgdf      0.42          ; Min dynamic friction in Gate Seals 
Gsf       15            ; Gate Seal static friction factor 
Mgsf      0.63          ; Min static friction in Gate Seals 
Bsf       0.58          ; Average Belville spring force                [kN] 
Spfric      5              ; Spring friction loss                               [%] 
Sf1  -1155.75          ; Disc spring factor 1 
Sf2   1196.17            ; Disc spring factor 2 
Sf3         0.85539               ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         2
  Template     C
  Function     0x1045
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         2
  Template     C
  Function     0x2045
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-690_bar
  Tree         2
  Template     C
  Function     0x55
Pdia       114.3        ; Actuator piston diameter  [mm] 
  Msdia                             0.0
Sc        0        ; Actuator spring constant = 0 forces the disc sping parameters to be used 
Spre       0.1172        ; Spring pretension   [m] 
Mass       50           ; Mass of accelerated components   [kg] 
Smax      0.06502        ; Actuator stroke.   [m] 
Voc       .6           ; Pressurized volume in opening cavity  
Vsdia     38.1         ; Valve stem diameter  [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        4             ; Actuator Seal dynamic (colomb) friction factor.  
Mdf       0.04          ; Min dynamic friction in actuator seals. 
Sf        10            ; Actuator Seal static (stiction) friction factor  
Msf       0.1          ; Min static friction in actuator seals. 
Ld        10.0          ; Linear damping of actuator. 
Vlim      0.0002        ; Velocity limit between stiction and colomb fric 
Adf             2.45            ; Acceleration damping factor   
Psl         10.92         ; piston seal width 
Vsl         9.5          ; valve stem seal width 
Osdia     34.93         ; Overide stem diameter 
Ossl      9.5         ; Overide stem seal width  
Vcc       1          ; Pressurized volume in closing cavity 
Vssl      47.8         ; Valve stem seal width 
Sodia    69.77        ; Gate seat OD 
Sidia     52.39        ; Gate seat ID  
Sw        8.89          ; Gate seat face width 
Gcop      12.65         ; Gate crack open point 
Ghdia    5          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen      20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff       0.01 ; Gate seal U-seal flow factor.  
Scff       0.05 ; Gate seal flow factor 
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3.     ; Pressurized volume in gate cavity  
Sdf       4             ; Stem Seal dynamic friction factor. 
Msdf      0.06          ; Min dynamic friction in Stem seal. 
Ssf       6             ; Stem packing seal static friction factor 
Mssf      0.09          ; Min static friction in Stem Packing Seal 
Gdf       10            ; Gate Seat dynamic friction factor. 
Mgdf      0.42          ; Min dynamic friction in Gate Seals 
Gsf       15            ; Gate Seal static friction factor 
Mgsf      0.63          ; Min static friction in Gate Seals 
Bsf       0.58          ; Average Belville spring force                [kN] 
Spfric      5              ; Spring friction loss                               [%] 
Sf1  -1155.75          ; Disc spring factor 1 
Sf2   1196.17            ; Disc spring factor 2 
Sf3         0.85539               ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         2
  Template     C
  Function     0x1055
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         2
  Template     C
  Function     0x2055
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Subsea Control Module
SCM          S
  Tree         3
  Template     C
  Function     0x3
  Depth                           1862.     
  Cv_fwr                          0.250
  Cv_fwq                         6.0e-3
  Svol                              4.0
  Rvol                              4.0
  PPrup                          593.0          
  PPrdo                             1.0
  Cvrhp_a                           0.0

;;; Xmas tree return manifold
MANIFOLD     T
  Tree         3
  Template     C
  Function     0x2004
  Depth                           1862.     
  Volume                         10.0          
  AssistFlowGain                   0.20
EXHAUST_VALVE T-Ev
  Tree         3
  Template     C
  Function     0x2004
  Cr                             40.0          
  Inc                               3.0
  Qref                             0.10
  Tau                            40.0
  Rh                             70.0

;;; Xmas-tree bladder
BLADDER      T-Bl
  Tree         3
  Template     C
  Function     0x2004
  Vmax                           86.0          
  Vmin                             0.10
  Dia                            11.0
  Len                            3.0
  Rh                             70.0
  In_vol                         86.0          

;;; SCM supply line
LINE         Ss
  Tree         3
  Template     C
  Function     0x1003
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Xmas tree return line
LINE         Tr
  Tree         3
  Template     C
  Function     0x2004
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; SCM bladder
BLADDER      S-Bl
  Tree         3
  Template     C
  Function     0x3
  Vmax                           1.0          
  Vmin                             0.10
  Dia                            11.0
  Len                            3.0
  Rh                             70.0
  In_vol                         1.0          

;;; SCM exhaust valve
EXHAUST_VALVE S-Ev
  Tree         3
  Template     C
  Function     0x3
  Cr                                3.0
  Inc                               3.0
  Qref                             0.10
  Tau                            40.0
  Rh                             70.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_5"-690_bar
  Tree         3
  Template     C
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
Sdf       4       ; Stem Seal dynamic friction factor.        [%] 
Msdf      0.06    ; Min dynamic friction in Stem seal.        [kN] 
Ssf       6       ; Stem packing seal static friction factor  [%] 
Mssf      0.09    ; Min static friction in Stem Packing Seal  [kN] 
Gdf       10      ; Gate Seat dynamic friction factor.        [%]  
Mgdf      0.42    ; Min dynamic friction in Gate Seals        [kN] 
Gsf       15      ; Gate Seal static friction factor          [%] 
Mgsf      0.83    ; Min static friction in Gate Seals         [kN] 
Bsf        2.09   ; Average Belville spring force             [kN] 
Spfric      5     ; Spring friction loss                      [%] 
Sf1  -1073.74            ; Disc spring factor 1 
Sf2   1373.4            ; Disc spring factor 2 
Sf3         0.71684    ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         3
  Template     C
  Function     0x1015
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         3
  Template     C
  Function     0x2015
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_5"-690_bar
  Tree         3
  Template     C
  Function     0x25
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
Sdf       4       ; Stem Seal dynamic friction factor.        [%] 
Msdf      0.06    ; Min dynamic friction in Stem seal.        [kN] 
Ssf       6       ; Stem packing seal static friction factor  [%] 
Mssf      0.09    ; Min static friction in Stem Packing Seal  [kN] 
Gdf       10      ; Gate Seat dynamic friction factor.        [%]  
Mgdf      0.42    ; Min dynamic friction in Gate Seals        [kN] 
Gsf       15      ; Gate Seal static friction factor          [%] 
Mgsf      0.83    ; Min static friction in Gate Seals         [kN] 
Bsf        2.09   ; Average Belville spring force             [kN] 
Spfric      5     ; Spring friction loss                      [%] 
Sf1  -1073.74            ; Disc spring factor 1 
Sf2   1373.4            ; Disc spring factor 2 
Sf3         0.71684    ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         3
  Template     C
  Function     0x1025
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         3
  Template     C
  Function     0x2025
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-690_bar
  Tree         3
  Template     C
  Function     0x35
Pdia       114.3        ; Actuator piston diameter  [mm] 
  Msdia                             0.0
Sc        0        ; Actuator spring constant = 0 forces the disc sping parameters to be used 
Spre       0.1172        ; Spring pretension   [m] 
Mass       50           ; Mass of accelerated components   [kg] 
Smax      0.06502        ; Actuator stroke.   [m] 
Voc       .6           ; Pressurized volume in opening cavity  
Vsdia     38.1         ; Valve stem diameter  [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        4             ; Actuator Seal dynamic (colomb) friction factor.  
Mdf       0.04          ; Min dynamic friction in actuator seals. 
Sf        10            ; Actuator Seal static (stiction) friction factor  
Msf       0.1          ; Min static friction in actuator seals. 
Ld        10.0          ; Linear damping of actuator. 
Vlim      0.0002        ; Velocity limit between stiction and colomb fric 
Adf             2.45            ; Acceleration damping factor   
Psl         10.92         ; piston seal width 
Vsl         9.5          ; valve stem seal width 
Osdia     34.93         ; Overide stem diameter 
Ossl      9.5         ; Overide stem seal width  
Vcc       1          ; Pressurized volume in closing cavity 
Vssl      47.8         ; Valve stem seal width 
Sodia    69.77        ; Gate seat OD 
Sidia     52.39        ; Gate seat ID  
Sw        8.89          ; Gate seat face width 
Gcop      12.65         ; Gate crack open point 
Ghdia    5          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen      20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff       0.01 ; Gate seal U-seal flow factor.  
Scff       0.05 ; Gate seal flow factor 
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3.     ; Pressurized volume in gate cavity  
Sdf       4             ; Stem Seal dynamic friction factor. 
Msdf      0.06          ; Min dynamic friction in Stem seal. 
Ssf       6             ; Stem packing seal static friction factor 
Mssf      0.09          ; Min static friction in Stem Packing Seal 
Gdf       10            ; Gate Seat dynamic friction factor. 
Mgdf      0.42          ; Min dynamic friction in Gate Seals 
Gsf       15            ; Gate Seal static friction factor 
Mgsf      0.63          ; Min static friction in Gate Seals 
Bsf       0.58          ; Average Belville spring force                [kN] 
Spfric      5              ; Spring friction loss                               [%] 
Sf1  -1155.75          ; Disc spring factor 1 
Sf2   1196.17            ; Disc spring factor 2 
Sf3         0.85539               ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         3
  Template     C
  Function     0x1035
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         3
  Template     C
  Function     0x2035
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-690_bar
  Tree         3
  Template     C
  Function     0x45
Pdia       114.3        ; Actuator piston diameter  [mm] 
  Msdia                             0.0
Sc        0        ; Actuator spring constant = 0 forces the disc sping parameters to be used 
Spre       0.1172        ; Spring pretension   [m] 
Mass       50           ; Mass of accelerated components   [kg] 
Smax      0.06502        ; Actuator stroke.   [m] 
Voc       .6           ; Pressurized volume in opening cavity  
Vsdia     38.1         ; Valve stem diameter  [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        4             ; Actuator Seal dynamic (colomb) friction factor.  
Mdf       0.04          ; Min dynamic friction in actuator seals. 
Sf        10            ; Actuator Seal static (stiction) friction factor  
Msf       0.1          ; Min static friction in actuator seals. 
Ld        10.0          ; Linear damping of actuator. 
Vlim      0.0002        ; Velocity limit between stiction and colomb fric 
Adf             2.45            ; Acceleration damping factor   
Psl         10.92         ; piston seal width 
Vsl         9.5          ; valve stem seal width 
Osdia     34.93         ; Overide stem diameter 
Ossl      9.5         ; Overide stem seal width  
Vcc       1          ; Pressurized volume in closing cavity 
Vssl      47.8         ; Valve stem seal width 
Sodia    69.77        ; Gate seat OD 
Sidia     52.39        ; Gate seat ID  
Sw        8.89          ; Gate seat face width 
Gcop      12.65         ; Gate crack open point 
Ghdia    5          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen      20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff       0.01 ; Gate seal U-seal flow factor.  
Scff       0.05 ; Gate seal flow factor 
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3.     ; Pressurized volume in gate cavity  
Sdf       4             ; Stem Seal dynamic friction factor. 
Msdf      0.06          ; Min dynamic friction in Stem seal. 
Ssf       6             ; Stem packing seal static friction factor 
Mssf      0.09          ; Min static friction in Stem Packing Seal 
Gdf       10            ; Gate Seat dynamic friction factor. 
Mgdf      0.42          ; Min dynamic friction in Gate Seals 
Gsf       15            ; Gate Seal static friction factor 
Mgsf      0.63          ; Min static friction in Gate Seals 
Bsf       0.58          ; Average Belville spring force                [kN] 
Spfric      5              ; Spring friction loss                               [%] 
Sf1  -1155.75          ; Disc spring factor 1 
Sf2   1196.17            ; Disc spring factor 2 
Sf3         0.85539               ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         3
  Template     C
  Function     0x1045
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         3
  Template     C
  Function     0x2045
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-690_bar
  Tree         3
  Template     C
  Function     0x55
Pdia       114.3        ; Actuator piston diameter  [mm] 
  Msdia                             0.0
Sc        0        ; Actuator spring constant = 0 forces the disc sping parameters to be used 
Spre       0.1172        ; Spring pretension   [m] 
Mass       50           ; Mass of accelerated components   [kg] 
Smax      0.06502        ; Actuator stroke.   [m] 
Voc       .6           ; Pressurized volume in opening cavity  
Vsdia     38.1         ; Valve stem diameter  [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        4             ; Actuator Seal dynamic (colomb) friction factor.  
Mdf       0.04          ; Min dynamic friction in actuator seals. 
Sf        10            ; Actuator Seal static (stiction) friction factor  
Msf       0.1          ; Min static friction in actuator seals. 
Ld        10.0          ; Linear damping of actuator. 
Vlim      0.0002        ; Velocity limit between stiction and colomb fric 
Adf             2.45            ; Acceleration damping factor   
Psl         10.92         ; piston seal width 
Vsl         9.5          ; valve stem seal width 
Osdia     34.93         ; Overide stem diameter 
Ossl      9.5         ; Overide stem seal width  
Vcc       1          ; Pressurized volume in closing cavity 
Vssl      47.8         ; Valve stem seal width 
Sodia    69.77        ; Gate seat OD 
Sidia     52.39        ; Gate seat ID  
Sw        8.89          ; Gate seat face width 
Gcop      12.65         ; Gate crack open point 
Ghdia    5          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen      20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff       0.01 ; Gate seal U-seal flow factor.  
Scff       0.05 ; Gate seal flow factor 
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3.     ; Pressurized volume in gate cavity  
Sdf       4             ; Stem Seal dynamic friction factor. 
Msdf      0.06          ; Min dynamic friction in Stem seal. 
Ssf       6             ; Stem packing seal static friction factor 
Mssf      0.09          ; Min static friction in Stem Packing Seal 
Gdf       10            ; Gate Seat dynamic friction factor. 
Mgdf      0.42          ; Min dynamic friction in Gate Seals 
Gsf       15            ; Gate Seal static friction factor 
Mgsf      0.63          ; Min static friction in Gate Seals 
Bsf       0.58          ; Average Belville spring force                [kN] 
Spfric      5              ; Spring friction loss                               [%] 
Sf1  -1155.75          ; Disc spring factor 1 
Sf2   1196.17            ; Disc spring factor 2 
Sf3         0.85539               ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         3
  Template     C
  Function     0x1055
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         3
  Template     C
  Function     0x2055
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Subsea Control Module
SCM          S
  Tree         4
  Template     C
  Function     0x3
  Depth                           1862.     
  Cv_fwr                          0.250
  Cv_fwq                         6.0e-3
  Svol                              4.0
  Rvol                              4.0
  PPrup                          593.0          
  PPrdo                             1.0
  Cvrhp_a                           0.0

;;; Xmas tree return manifold
MANIFOLD     T
  Tree         4
  Template     C
  Function     0x2004
  Depth                           1862.     
  Volume                         10.0          
  AssistFlowGain                   0.20
EXHAUST_VALVE T-Ev
  Tree         4
  Template     C
  Function     0x2004
  Cr                             40.0          
  Inc                               3.0
  Qref                             0.10
  Tau                            40.0
  Rh                             70.0

;;; Xmas-tree bladder
BLADDER      T-Bl
  Tree         4
  Template     C
  Function     0x2004
  Vmax                           86.0          
  Vmin                             0.10
  Dia                            11.0
  Len                            3.0
  Rh                             70.0
  In_vol                         86.0          

;;; SCM supply line
LINE         Ss
  Tree         4
  Template     C
  Function     0x1003
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Xmas tree return line
LINE         Tr
  Tree         4
  Template     C
  Function     0x2004
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; SCM bladder
BLADDER      S-Bl
  Tree         4
  Template     C
  Function     0x3
  Vmax                           1.0          
  Vmin                             0.10
  Dia                            11.0
  Len                            3.0
  Rh                             70.0
  In_vol                         1.0          

;;; SCM exhaust valve
EXHAUST_VALVE S-Ev
  Tree         4
  Template     C
  Function     0x3
  Cr                                3.0
  Inc                               3.0
  Qref                             0.10
  Tau                            40.0
  Rh                             70.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_5"-690_bar
  Tree         4
  Template     C
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
Sdf       4       ; Stem Seal dynamic friction factor.        [%] 
Msdf      0.06    ; Min dynamic friction in Stem seal.        [kN] 
Ssf       6       ; Stem packing seal static friction factor  [%] 
Mssf      0.09    ; Min static friction in Stem Packing Seal  [kN] 
Gdf       10      ; Gate Seat dynamic friction factor.        [%]  
Mgdf      0.42    ; Min dynamic friction in Gate Seals        [kN] 
Gsf       15      ; Gate Seal static friction factor          [%] 
Mgsf      0.83    ; Min static friction in Gate Seals         [kN] 
Bsf        2.09   ; Average Belville spring force             [kN] 
Spfric      5     ; Spring friction loss                      [%] 
Sf1  -1073.74            ; Disc spring factor 1 
Sf2   1373.4            ; Disc spring factor 2 
Sf3         0.71684    ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         4
  Template     C
  Function     0x1015
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         4
  Template     C
  Function     0x2015
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_5"-690_bar
  Tree         4
  Template     C
  Function     0x25
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
Sdf       4       ; Stem Seal dynamic friction factor.        [%] 
Msdf      0.06    ; Min dynamic friction in Stem seal.        [kN] 
Ssf       6       ; Stem packing seal static friction factor  [%] 
Mssf      0.09    ; Min static friction in Stem Packing Seal  [kN] 
Gdf       10      ; Gate Seat dynamic friction factor.        [%]  
Mgdf      0.42    ; Min dynamic friction in Gate Seals        [kN] 
Gsf       15      ; Gate Seal static friction factor          [%] 
Mgsf      0.83    ; Min static friction in Gate Seals         [kN] 
Bsf        2.09   ; Average Belville spring force             [kN] 
Spfric      5     ; Spring friction loss                      [%] 
Sf1  -1073.74            ; Disc spring factor 1 
Sf2   1373.4            ; Disc spring factor 2 
Sf3         0.71684    ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         4
  Template     C
  Function     0x1025
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         4
  Template     C
  Function     0x2025
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-690_bar
  Tree         4
  Template     C
  Function     0x35
Pdia       114.3        ; Actuator piston diameter  [mm] 
  Msdia                             0.0
Sc        0        ; Actuator spring constant = 0 forces the disc sping parameters to be used 
Spre       0.1172        ; Spring pretension   [m] 
Mass       50           ; Mass of accelerated components   [kg] 
Smax      0.06502        ; Actuator stroke.   [m] 
Voc       .6           ; Pressurized volume in opening cavity  
Vsdia     38.1         ; Valve stem diameter  [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        4             ; Actuator Seal dynamic (colomb) friction factor.  
Mdf       0.04          ; Min dynamic friction in actuator seals. 
Sf        10            ; Actuator Seal static (stiction) friction factor  
Msf       0.1          ; Min static friction in actuator seals. 
Ld        10.0          ; Linear damping of actuator. 
Vlim      0.0002        ; Velocity limit between stiction and colomb fric 
Adf             2.45            ; Acceleration damping factor   
Psl         10.92         ; piston seal width 
Vsl         9.5          ; valve stem seal width 
Osdia     34.93         ; Overide stem diameter 
Ossl      9.5         ; Overide stem seal width  
Vcc       1          ; Pressurized volume in closing cavity 
Vssl      47.8         ; Valve stem seal width 
Sodia    69.77        ; Gate seat OD 
Sidia     52.39        ; Gate seat ID  
Sw        8.89          ; Gate seat face width 
Gcop      12.65         ; Gate crack open point 
Ghdia    5          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen      20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff       0.01 ; Gate seal U-seal flow factor.  
Scff       0.05 ; Gate seal flow factor 
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3.     ; Pressurized volume in gate cavity  
Sdf       4             ; Stem Seal dynamic friction factor. 
Msdf      0.06          ; Min dynamic friction in Stem seal. 
Ssf       6             ; Stem packing seal static friction factor 
Mssf      0.09          ; Min static friction in Stem Packing Seal 
Gdf       10            ; Gate Seat dynamic friction factor. 
Mgdf      0.42          ; Min dynamic friction in Gate Seals 
Gsf       15            ; Gate Seal static friction factor 
Mgsf      0.63          ; Min static friction in Gate Seals 
Bsf       0.58          ; Average Belville spring force                [kN] 
Spfric      5              ; Spring friction loss                               [%] 
Sf1  -1155.75          ; Disc spring factor 1 
Sf2   1196.17            ; Disc spring factor 2 
Sf3         0.85539               ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         4
  Template     C
  Function     0x1035
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         4
  Template     C
  Function     0x2035
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-690_bar
  Tree         4
  Template     C
  Function     0x45
Pdia       114.3        ; Actuator piston diameter  [mm] 
  Msdia                             0.0
Sc        0        ; Actuator spring constant = 0 forces the disc sping parameters to be used 
Spre       0.1172        ; Spring pretension   [m] 
Mass       50           ; Mass of accelerated components   [kg] 
Smax      0.06502        ; Actuator stroke.   [m] 
Voc       .6           ; Pressurized volume in opening cavity  
Vsdia     38.1         ; Valve stem diameter  [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        4             ; Actuator Seal dynamic (colomb) friction factor.  
Mdf       0.04          ; Min dynamic friction in actuator seals. 
Sf        10            ; Actuator Seal static (stiction) friction factor  
Msf       0.1          ; Min static friction in actuator seals. 
Ld        10.0          ; Linear damping of actuator. 
Vlim      0.0002        ; Velocity limit between stiction and colomb fric 
Adf             2.45            ; Acceleration damping factor   
Psl         10.92         ; piston seal width 
Vsl         9.5          ; valve stem seal width 
Osdia     34.93         ; Overide stem diameter 
Ossl      9.5         ; Overide stem seal width  
Vcc       1          ; Pressurized volume in closing cavity 
Vssl      47.8         ; Valve stem seal width 
Sodia    69.77        ; Gate seat OD 
Sidia     52.39        ; Gate seat ID  
Sw        8.89          ; Gate seat face width 
Gcop      12.65         ; Gate crack open point 
Ghdia    5          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen      20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff       0.01 ; Gate seal U-seal flow factor.  
Scff       0.05 ; Gate seal flow factor 
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3.     ; Pressurized volume in gate cavity  
Sdf       4             ; Stem Seal dynamic friction factor. 
Msdf      0.06          ; Min dynamic friction in Stem seal. 
Ssf       6             ; Stem packing seal static friction factor 
Mssf      0.09          ; Min static friction in Stem Packing Seal 
Gdf       10            ; Gate Seat dynamic friction factor. 
Mgdf      0.42          ; Min dynamic friction in Gate Seals 
Gsf       15            ; Gate Seal static friction factor 
Mgsf      0.63          ; Min static friction in Gate Seals 
Bsf       0.58          ; Average Belville spring force                [kN] 
Spfric      5              ; Spring friction loss                               [%] 
Sf1  -1155.75          ; Disc spring factor 1 
Sf2   1196.17            ; Disc spring factor 2 
Sf3         0.85539               ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         4
  Template     C
  Function     0x1045
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         4
  Template     C
  Function     0x2045
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-690_bar
  Tree         4
  Template     C
  Function     0x55
Pdia       114.3        ; Actuator piston diameter  [mm] 
  Msdia                             0.0
Sc        0        ; Actuator spring constant = 0 forces the disc sping parameters to be used 
Spre       0.1172        ; Spring pretension   [m] 
Mass       50           ; Mass of accelerated components   [kg] 
Smax      0.06502        ; Actuator stroke.   [m] 
Voc       .6           ; Pressurized volume in opening cavity  
Vsdia     38.1         ; Valve stem diameter  [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        4             ; Actuator Seal dynamic (colomb) friction factor.  
Mdf       0.04          ; Min dynamic friction in actuator seals. 
Sf        10            ; Actuator Seal static (stiction) friction factor  
Msf       0.1          ; Min static friction in actuator seals. 
Ld        10.0          ; Linear damping of actuator. 
Vlim      0.0002        ; Velocity limit between stiction and colomb fric 
Adf             2.45            ; Acceleration damping factor   
Psl         10.92         ; piston seal width 
Vsl         9.5          ; valve stem seal width 
Osdia     34.93         ; Overide stem diameter 
Ossl      9.5         ; Overide stem seal width  
Vcc       1          ; Pressurized volume in closing cavity 
Vssl      47.8         ; Valve stem seal width 
Sodia    69.77        ; Gate seat OD 
Sidia     52.39        ; Gate seat ID  
Sw        8.89          ; Gate seat face width 
Gcop      12.65         ; Gate crack open point 
Ghdia    5          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen      20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff       0.01 ; Gate seal U-seal flow factor.  
Scff       0.05 ; Gate seal flow factor 
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3.     ; Pressurized volume in gate cavity  
Sdf       4             ; Stem Seal dynamic friction factor. 
Msdf      0.06          ; Min dynamic friction in Stem seal. 
Ssf       6             ; Stem packing seal static friction factor 
Mssf      0.09          ; Min static friction in Stem Packing Seal 
Gdf       10            ; Gate Seat dynamic friction factor. 
Mgdf      0.42          ; Min dynamic friction in Gate Seals 
Gsf       15            ; Gate Seal static friction factor 
Mgsf      0.63          ; Min static friction in Gate Seals 
Bsf       0.58          ; Average Belville spring force                [kN] 
Spfric      5              ; Spring friction loss                               [%] 
Sf1  -1155.75          ; Disc spring factor 1 
Sf2   1196.17            ; Disc spring factor 2 
Sf3         0.85539               ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         4
  Template     C
  Function     0x1055
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         4
  Template     C
  Function     0x2055
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Subsea Control Module
SCM          S
  Tree         2
  Template     D
  Function     0x3
  Depth                           1862.     
  Cv_fwr                          0.250
  Cv_fwq                         6.0e-3
  Svol                              4.0
  Rvol                              4.0
  PPrup                          593.0          
  PPrdo                             1.0
  Cvrhp_a                           0.0

;;; Xmas tree return manifold
MANIFOLD     T
  Tree         2
  Template     D
  Function     0x2004
  Depth                           1862.     
  Volume                         10.0          
  AssistFlowGain                   0.20
EXHAUST_VALVE T-Ev
  Tree         2
  Template     D
  Function     0x2004
  Cr                             40.0          
  Inc                               3.0
  Qref                             0.10
  Tau                            40.0
  Rh                             70.0

;;; Xmas-tree bladder
BLADDER      T-Bl
  Tree         2
  Template     D
  Function     0x2004
  Vmax                           86.0          
  Vmin                             0.10
  Dia                            11.0
  Len                            3.0
  Rh                             70.0
  In_vol                         86.0          

;;; SCM supply line
LINE         Ss
  Tree         2
  Template     D
  Function     0x1003
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Xmas tree return line
LINE         Tr
  Tree         2
  Template     D
  Function     0x2004
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; SCM bladder
BLADDER      S-Bl
  Tree         2
  Template     D
  Function     0x3
  Vmax                           1.0          
  Vmin                             0.10
  Dia                            11.0
  Len                            3.0
  Rh                             70.0
  In_vol                         1.0          

;;; SCM exhaust valve
EXHAUST_VALVE S-Ev
  Tree         2
  Template     D
  Function     0x3
  Cr                                3.0
  Inc                               3.0
  Qref                             0.10
  Tau                            40.0
  Rh                             70.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_5"-690_bar
  Tree         2
  Template     D
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
Sdf       4       ; Stem Seal dynamic friction factor.        [%] 
Msdf      0.06    ; Min dynamic friction in Stem seal.        [kN] 
Ssf       6       ; Stem packing seal static friction factor  [%] 
Mssf      0.09    ; Min static friction in Stem Packing Seal  [kN] 
Gdf       10      ; Gate Seat dynamic friction factor.        [%]  
Mgdf      0.42    ; Min dynamic friction in Gate Seals        [kN] 
Gsf       15      ; Gate Seal static friction factor          [%] 
Mgsf      0.83    ; Min static friction in Gate Seals         [kN] 
Bsf        2.09   ; Average Belville spring force             [kN] 
Spfric      5     ; Spring friction loss                      [%] 
Sf1  -1073.74            ; Disc spring factor 1 
Sf2   1373.4            ; Disc spring factor 2 
Sf3         0.71684    ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         2
  Template     D
  Function     0x1015
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         2
  Template     D
  Function     0x2015
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_5"-690_bar
  Tree         2
  Template     D
  Function     0x25
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
Sdf       4       ; Stem Seal dynamic friction factor.        [%] 
Msdf      0.06    ; Min dynamic friction in Stem seal.        [kN] 
Ssf       6       ; Stem packing seal static friction factor  [%] 
Mssf      0.09    ; Min static friction in Stem Packing Seal  [kN] 
Gdf       10      ; Gate Seat dynamic friction factor.        [%]  
Mgdf      0.42    ; Min dynamic friction in Gate Seals        [kN] 
Gsf       15      ; Gate Seal static friction factor          [%] 
Mgsf      0.83    ; Min static friction in Gate Seals         [kN] 
Bsf        2.09   ; Average Belville spring force             [kN] 
Spfric      5     ; Spring friction loss                      [%] 
Sf1  -1073.74            ; Disc spring factor 1 
Sf2   1373.4            ; Disc spring factor 2 
Sf3         0.71684    ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         2
  Template     D
  Function     0x1025
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         2
  Template     D
  Function     0x2025
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-690_bar
  Tree         2
  Template     D
  Function     0x35
Pdia       114.3        ; Actuator piston diameter  [mm] 
  Msdia                             0.0
Sc        0        ; Actuator spring constant = 0 forces the disc sping parameters to be used 
Spre       0.1172        ; Spring pretension   [m] 
Mass       50           ; Mass of accelerated components   [kg] 
Smax      0.06502        ; Actuator stroke.   [m] 
Voc       .6           ; Pressurized volume in opening cavity  
Vsdia     38.1         ; Valve stem diameter  [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        4             ; Actuator Seal dynamic (colomb) friction factor.  
Mdf       0.04          ; Min dynamic friction in actuator seals. 
Sf        10            ; Actuator Seal static (stiction) friction factor  
Msf       0.1          ; Min static friction in actuator seals. 
Ld        10.0          ; Linear damping of actuator. 
Vlim      0.0002        ; Velocity limit between stiction and colomb fric 
Adf             2.45            ; Acceleration damping factor   
Psl         10.92         ; piston seal width 
Vsl         9.5          ; valve stem seal width 
Osdia     34.93         ; Overide stem diameter 
Ossl      9.5         ; Overide stem seal width  
Vcc       1          ; Pressurized volume in closing cavity 
Vssl      47.8         ; Valve stem seal width 
Sodia    69.77        ; Gate seat OD 
Sidia     52.39        ; Gate seat ID  
Sw        8.89          ; Gate seat face width 
Gcop      12.65         ; Gate crack open point 
Ghdia    5          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen      20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff       0.01 ; Gate seal U-seal flow factor.  
Scff       0.05 ; Gate seal flow factor 
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3.     ; Pressurized volume in gate cavity  
Sdf       4             ; Stem Seal dynamic friction factor. 
Msdf      0.06          ; Min dynamic friction in Stem seal. 
Ssf       6             ; Stem packing seal static friction factor 
Mssf      0.09          ; Min static friction in Stem Packing Seal 
Gdf       10            ; Gate Seat dynamic friction factor. 
Mgdf      0.42          ; Min dynamic friction in Gate Seals 
Gsf       15            ; Gate Seal static friction factor 
Mgsf      0.63          ; Min static friction in Gate Seals 
Bsf       0.58          ; Average Belville spring force                [kN] 
Spfric      5              ; Spring friction loss                               [%] 
Sf1  -1155.75          ; Disc spring factor 1 
Sf2   1196.17            ; Disc spring factor 2 
Sf3         0.85539               ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         2
  Template     D
  Function     0x1035
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         2
  Template     D
  Function     0x2035
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-690_bar
  Tree         2
  Template     D
  Function     0x45
Pdia       114.3        ; Actuator piston diameter  [mm] 
  Msdia                             0.0
Sc        0        ; Actuator spring constant = 0 forces the disc sping parameters to be used 
Spre       0.1172        ; Spring pretension   [m] 
Mass       50           ; Mass of accelerated components   [kg] 
Smax      0.06502        ; Actuator stroke.   [m] 
Voc       .6           ; Pressurized volume in opening cavity  
Vsdia     38.1         ; Valve stem diameter  [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        4             ; Actuator Seal dynamic (colomb) friction factor.  
Mdf       0.04          ; Min dynamic friction in actuator seals. 
Sf        10            ; Actuator Seal static (stiction) friction factor  
Msf       0.1          ; Min static friction in actuator seals. 
Ld        10.0          ; Linear damping of actuator. 
Vlim      0.0002        ; Velocity limit between stiction and colomb fric 
Adf             2.45            ; Acceleration damping factor   
Psl         10.92         ; piston seal width 
Vsl         9.5          ; valve stem seal width 
Osdia     34.93         ; Overide stem diameter 
Ossl      9.5         ; Overide stem seal width  
Vcc       1          ; Pressurized volume in closing cavity 
Vssl      47.8         ; Valve stem seal width 
Sodia    69.77        ; Gate seat OD 
Sidia     52.39        ; Gate seat ID  
Sw        8.89          ; Gate seat face width 
Gcop      12.65         ; Gate crack open point 
Ghdia    5          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen      20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff       0.01 ; Gate seal U-seal flow factor.  
Scff       0.05 ; Gate seal flow factor 
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3.     ; Pressurized volume in gate cavity  
Sdf       4             ; Stem Seal dynamic friction factor. 
Msdf      0.06          ; Min dynamic friction in Stem seal. 
Ssf       6             ; Stem packing seal static friction factor 
Mssf      0.09          ; Min static friction in Stem Packing Seal 
Gdf       10            ; Gate Seat dynamic friction factor. 
Mgdf      0.42          ; Min dynamic friction in Gate Seals 
Gsf       15            ; Gate Seal static friction factor 
Mgsf      0.63          ; Min static friction in Gate Seals 
Bsf       0.58          ; Average Belville spring force                [kN] 
Spfric      5              ; Spring friction loss                               [%] 
Sf1  -1155.75          ; Disc spring factor 1 
Sf2   1196.17            ; Disc spring factor 2 
Sf3         0.85539               ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         2
  Template     D
  Function     0x1045
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         2
  Template     D
  Function     0x2045
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-690_bar
  Tree         2
  Template     D
  Function     0x55
Pdia       114.3        ; Actuator piston diameter  [mm] 
  Msdia                             0.0
Sc        0        ; Actuator spring constant = 0 forces the disc sping parameters to be used 
Spre       0.1172        ; Spring pretension   [m] 
Mass       50           ; Mass of accelerated components   [kg] 
Smax      0.06502        ; Actuator stroke.   [m] 
Voc       .6           ; Pressurized volume in opening cavity  
Vsdia     38.1         ; Valve stem diameter  [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        4             ; Actuator Seal dynamic (colomb) friction factor.  
Mdf       0.04          ; Min dynamic friction in actuator seals. 
Sf        10            ; Actuator Seal static (stiction) friction factor  
Msf       0.1          ; Min static friction in actuator seals. 
Ld        10.0          ; Linear damping of actuator. 
Vlim      0.0002        ; Velocity limit between stiction and colomb fric 
Adf             2.45            ; Acceleration damping factor   
Psl         10.92         ; piston seal width 
Vsl         9.5          ; valve stem seal width 
Osdia     34.93         ; Overide stem diameter 
Ossl      9.5         ; Overide stem seal width  
Vcc       1          ; Pressurized volume in closing cavity 
Vssl      47.8         ; Valve stem seal width 
Sodia    69.77        ; Gate seat OD 
Sidia     52.39        ; Gate seat ID  
Sw        8.89          ; Gate seat face width 
Gcop      12.65         ; Gate crack open point 
Ghdia    5          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen      20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff       0.01 ; Gate seal U-seal flow factor.  
Scff       0.05 ; Gate seal flow factor 
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3.     ; Pressurized volume in gate cavity  
Sdf       4             ; Stem Seal dynamic friction factor. 
Msdf      0.06          ; Min dynamic friction in Stem seal. 
Ssf       6             ; Stem packing seal static friction factor 
Mssf      0.09          ; Min static friction in Stem Packing Seal 
Gdf       10            ; Gate Seat dynamic friction factor. 
Mgdf      0.42          ; Min dynamic friction in Gate Seals 
Gsf       15            ; Gate Seal static friction factor 
Mgsf      0.63          ; Min static friction in Gate Seals 
Bsf       0.58          ; Average Belville spring force                [kN] 
Spfric      5              ; Spring friction loss                               [%] 
Sf1  -1155.75          ; Disc spring factor 1 
Sf2   1196.17            ; Disc spring factor 2 
Sf3         0.85539               ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         2
  Template     D
  Function     0x1055
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         2
  Template     D
  Function     0x2055
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Subsea Control Module
SCM          S
  Tree         3
  Template     D
  Function     0x3
  Depth                           1862.     
  Cv_fwr                          0.250
  Cv_fwq                         6.0e-3
  Svol                              4.0
  Rvol                              4.0
  PPrup                          593.0          
  PPrdo                             1.0
  Cvrhp_a                           0.0

;;; Xmas tree return manifold
MANIFOLD     T
  Tree         3
  Template     D
  Function     0x2004
  Depth                           1862.     
  Volume                         10.0          
  AssistFlowGain                   0.20
EXHAUST_VALVE T-Ev
  Tree         3
  Template     D
  Function     0x2004
  Cr                             40.0          
  Inc                               3.0
  Qref                             0.10
  Tau                            40.0
  Rh                             70.0

;;; Xmas-tree bladder
BLADDER      T-Bl
  Tree         3
  Template     D
  Function     0x2004
  Vmax                           86.0          
  Vmin                             0.10
  Dia                            11.0
  Len                            3.0
  Rh                             70.0
  In_vol                         86.0          

;;; SCM supply line
LINE         Ss
  Tree         3
  Template     D
  Function     0x1003
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Xmas tree return line
LINE         Tr
  Tree         3
  Template     D
  Function     0x2004
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; SCM bladder
BLADDER      S-Bl
  Tree         3
  Template     D
  Function     0x3
  Vmax                           1.0          
  Vmin                             0.10
  Dia                            11.0
  Len                            3.0
  Rh                             70.0
  In_vol                         1.0          

;;; SCM exhaust valve
EXHAUST_VALVE S-Ev
  Tree         3
  Template     D
  Function     0x3
  Cr                                3.0
  Inc                               3.0
  Qref                             0.10
  Tau                            40.0
  Rh                             70.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_5"-690_bar
  Tree         3
  Template     D
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
Sdf       4       ; Stem Seal dynamic friction factor.        [%] 
Msdf      0.06    ; Min dynamic friction in Stem seal.        [kN] 
Ssf       6       ; Stem packing seal static friction factor  [%] 
Mssf      0.09    ; Min static friction in Stem Packing Seal  [kN] 
Gdf       10      ; Gate Seat dynamic friction factor.        [%]  
Mgdf      0.42    ; Min dynamic friction in Gate Seals        [kN] 
Gsf       15      ; Gate Seal static friction factor          [%] 
Mgsf      0.83    ; Min static friction in Gate Seals         [kN] 
Bsf        2.09   ; Average Belville spring force             [kN] 
Spfric      5     ; Spring friction loss                      [%] 
Sf1  -1073.74            ; Disc spring factor 1 
Sf2   1373.4            ; Disc spring factor 2 
Sf3         0.71684    ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         3
  Template     D
  Function     0x1015
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         3
  Template     D
  Function     0x2015
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_5"-690_bar
  Tree         3
  Template     D
  Function     0x25
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
Sdf       4       ; Stem Seal dynamic friction factor.        [%] 
Msdf      0.06    ; Min dynamic friction in Stem seal.        [kN] 
Ssf       6       ; Stem packing seal static friction factor  [%] 
Mssf      0.09    ; Min static friction in Stem Packing Seal  [kN] 
Gdf       10      ; Gate Seat dynamic friction factor.        [%]  
Mgdf      0.42    ; Min dynamic friction in Gate Seals        [kN] 
Gsf       15      ; Gate Seal static friction factor          [%] 
Mgsf      0.83    ; Min static friction in Gate Seals         [kN] 
Bsf        2.09   ; Average Belville spring force             [kN] 
Spfric      5     ; Spring friction loss                      [%] 
Sf1  -1073.74            ; Disc spring factor 1 
Sf2   1373.4            ; Disc spring factor 2 
Sf3         0.71684    ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         3
  Template     D
  Function     0x1025
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         3
  Template     D
  Function     0x2025
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-690_bar
  Tree         3
  Template     D
  Function     0x35
Pdia       114.3        ; Actuator piston diameter  [mm] 
  Msdia                             0.0
Sc        0        ; Actuator spring constant = 0 forces the disc sping parameters to be used 
Spre       0.1172        ; Spring pretension   [m] 
Mass       50           ; Mass of accelerated components   [kg] 
Smax      0.06502        ; Actuator stroke.   [m] 
Voc       .6           ; Pressurized volume in opening cavity  
Vsdia     38.1         ; Valve stem diameter  [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        4             ; Actuator Seal dynamic (colomb) friction factor.  
Mdf       0.04          ; Min dynamic friction in actuator seals. 
Sf        10            ; Actuator Seal static (stiction) friction factor  
Msf       0.1          ; Min static friction in actuator seals. 
Ld        10.0          ; Linear damping of actuator. 
Vlim      0.0002        ; Velocity limit between stiction and colomb fric 
Adf             2.45            ; Acceleration damping factor   
Psl         10.92         ; piston seal width 
Vsl         9.5          ; valve stem seal width 
Osdia     34.93         ; Overide stem diameter 
Ossl      9.5         ; Overide stem seal width  
Vcc       1          ; Pressurized volume in closing cavity 
Vssl      47.8         ; Valve stem seal width 
Sodia    69.77        ; Gate seat OD 
Sidia     52.39        ; Gate seat ID  
Sw        8.89          ; Gate seat face width 
Gcop      12.65         ; Gate crack open point 
Ghdia    5          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen      20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff       0.01 ; Gate seal U-seal flow factor.  
Scff       0.05 ; Gate seal flow factor 
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3.     ; Pressurized volume in gate cavity  
Sdf       4             ; Stem Seal dynamic friction factor. 
Msdf      0.06          ; Min dynamic friction in Stem seal. 
Ssf       6             ; Stem packing seal static friction factor 
Mssf      0.09          ; Min static friction in Stem Packing Seal 
Gdf       10            ; Gate Seat dynamic friction factor. 
Mgdf      0.42          ; Min dynamic friction in Gate Seals 
Gsf       15            ; Gate Seal static friction factor 
Mgsf      0.63          ; Min static friction in Gate Seals 
Bsf       0.58          ; Average Belville spring force                [kN] 
Spfric      5              ; Spring friction loss                               [%] 
Sf1  -1155.75          ; Disc spring factor 1 
Sf2   1196.17            ; Disc spring factor 2 
Sf3         0.85539               ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         3
  Template     D
  Function     0x1035
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         3
  Template     D
  Function     0x2035
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-690_bar
  Tree         3
  Template     D
  Function     0x45
Pdia       114.3        ; Actuator piston diameter  [mm] 
  Msdia                             0.0
Sc        0        ; Actuator spring constant = 0 forces the disc sping parameters to be used 
Spre       0.1172        ; Spring pretension   [m] 
Mass       50           ; Mass of accelerated components   [kg] 
Smax      0.06502        ; Actuator stroke.   [m] 
Voc       .6           ; Pressurized volume in opening cavity  
Vsdia     38.1         ; Valve stem diameter  [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        4             ; Actuator Seal dynamic (colomb) friction factor.  
Mdf       0.04          ; Min dynamic friction in actuator seals. 
Sf        10            ; Actuator Seal static (stiction) friction factor  
Msf       0.1          ; Min static friction in actuator seals. 
Ld        10.0          ; Linear damping of actuator. 
Vlim      0.0002        ; Velocity limit between stiction and colomb fric 
Adf             2.45            ; Acceleration damping factor   
Psl         10.92         ; piston seal width 
Vsl         9.5          ; valve stem seal width 
Osdia     34.93         ; Overide stem diameter 
Ossl      9.5         ; Overide stem seal width  
Vcc       1          ; Pressurized volume in closing cavity 
Vssl      47.8         ; Valve stem seal width 
Sodia    69.77        ; Gate seat OD 
Sidia     52.39        ; Gate seat ID  
Sw        8.89          ; Gate seat face width 
Gcop      12.65         ; Gate crack open point 
Ghdia    5          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen      20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff       0.01 ; Gate seal U-seal flow factor.  
Scff       0.05 ; Gate seal flow factor 
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3.     ; Pressurized volume in gate cavity  
Sdf       4             ; Stem Seal dynamic friction factor. 
Msdf      0.06          ; Min dynamic friction in Stem seal. 
Ssf       6             ; Stem packing seal static friction factor 
Mssf      0.09          ; Min static friction in Stem Packing Seal 
Gdf       10            ; Gate Seat dynamic friction factor. 
Mgdf      0.42          ; Min dynamic friction in Gate Seals 
Gsf       15            ; Gate Seal static friction factor 
Mgsf      0.63          ; Min static friction in Gate Seals 
Bsf       0.58          ; Average Belville spring force                [kN] 
Spfric      5              ; Spring friction loss                               [%] 
Sf1  -1155.75          ; Disc spring factor 1 
Sf2   1196.17            ; Disc spring factor 2 
Sf3         0.85539               ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         3
  Template     D
  Function     0x1045
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         3
  Template     D
  Function     0x2045
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-690_bar
  Tree         3
  Template     D
  Function     0x55
Pdia       114.3        ; Actuator piston diameter  [mm] 
  Msdia                             0.0
Sc        0        ; Actuator spring constant = 0 forces the disc sping parameters to be used 
Spre       0.1172        ; Spring pretension   [m] 
Mass       50           ; Mass of accelerated components   [kg] 
Smax      0.06502        ; Actuator stroke.   [m] 
Voc       .6           ; Pressurized volume in opening cavity  
Vsdia     38.1         ; Valve stem diameter  [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        4             ; Actuator Seal dynamic (colomb) friction factor.  
Mdf       0.04          ; Min dynamic friction in actuator seals. 
Sf        10            ; Actuator Seal static (stiction) friction factor  
Msf       0.1          ; Min static friction in actuator seals. 
Ld        10.0          ; Linear damping of actuator. 
Vlim      0.0002        ; Velocity limit between stiction and colomb fric 
Adf             2.45            ; Acceleration damping factor   
Psl         10.92         ; piston seal width 
Vsl         9.5          ; valve stem seal width 
Osdia     34.93         ; Overide stem diameter 
Ossl      9.5         ; Overide stem seal width  
Vcc       1          ; Pressurized volume in closing cavity 
Vssl      47.8         ; Valve stem seal width 
Sodia    69.77        ; Gate seat OD 
Sidia     52.39        ; Gate seat ID  
Sw        8.89          ; Gate seat face width 
Gcop      12.65         ; Gate crack open point 
Ghdia    5          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen      20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff       0.01 ; Gate seal U-seal flow factor.  
Scff       0.05 ; Gate seal flow factor 
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3.     ; Pressurized volume in gate cavity  
Sdf       4             ; Stem Seal dynamic friction factor. 
Msdf      0.06          ; Min dynamic friction in Stem seal. 
Ssf       6             ; Stem packing seal static friction factor 
Mssf      0.09          ; Min static friction in Stem Packing Seal 
Gdf       10            ; Gate Seat dynamic friction factor. 
Mgdf      0.42          ; Min dynamic friction in Gate Seals 
Gsf       15            ; Gate Seal static friction factor 
Mgsf      0.63          ; Min static friction in Gate Seals 
Bsf       0.58          ; Average Belville spring force                [kN] 
Spfric      5              ; Spring friction loss                               [%] 
Sf1  -1155.75          ; Disc spring factor 1 
Sf2   1196.17            ; Disc spring factor 2 
Sf3         0.85539               ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         3
  Template     D
  Function     0x1055
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         3
  Template     D
  Function     0x2055
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Subsea Control Module
SCM          S
  Tree         4
  Template     D
  Function     0x3
  Depth                           1862.     
  Cv_fwr                          0.250
  Cv_fwq                         6.0e-3
  Svol                              4.0
  Rvol                              4.0
  PPrup                          593.0          
  PPrdo                             1.0
  Cvrhp_a                           0.0

;;; Xmas tree return manifold
MANIFOLD     T
  Tree         4
  Template     D
  Function     0x2004
  Depth                           1862.     
  Volume                         10.0          
  AssistFlowGain                   0.20
EXHAUST_VALVE T-Ev
  Tree         4
  Template     D
  Function     0x2004
  Cr                             40.0          
  Inc                               3.0
  Qref                             0.10
  Tau                            40.0
  Rh                             70.0

;;; Xmas-tree bladder
BLADDER      T-Bl
  Tree         4
  Template     D
  Function     0x2004
  Vmax                           86.0          
  Vmin                             0.10
  Dia                            11.0
  Len                            3.0
  Rh                             70.0
  In_vol                         86.0          

;;; SCM supply line
LINE         Ss
  Tree         4
  Template     D
  Function     0x1003
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Xmas tree return line
LINE         Tr
  Tree         4
  Template     D
  Function     0x2004
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; SCM bladder
BLADDER      S-Bl
  Tree         4
  Template     D
  Function     0x3
  Vmax                           1.0          
  Vmin                             0.10
  Dia                            11.0
  Len                            3.0
  Rh                             70.0
  In_vol                         1.0          

;;; SCM exhaust valve
EXHAUST_VALVE S-Ev
  Tree         4
  Template     D
  Function     0x3
  Cr                                3.0
  Inc                               3.0
  Qref                             0.10
  Tau                            40.0
  Rh                             70.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_5"-690_bar
  Tree         4
  Template     D
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
Sdf       4       ; Stem Seal dynamic friction factor.        [%] 
Msdf      0.06    ; Min dynamic friction in Stem seal.        [kN] 
Ssf       6       ; Stem packing seal static friction factor  [%] 
Mssf      0.09    ; Min static friction in Stem Packing Seal  [kN] 
Gdf       10      ; Gate Seat dynamic friction factor.        [%]  
Mgdf      0.42    ; Min dynamic friction in Gate Seals        [kN] 
Gsf       15      ; Gate Seal static friction factor          [%] 
Mgsf      0.83    ; Min static friction in Gate Seals         [kN] 
Bsf        2.09   ; Average Belville spring force             [kN] 
Spfric      5     ; Spring friction loss                      [%] 
Sf1  -1073.74            ; Disc spring factor 1 
Sf2   1373.4            ; Disc spring factor 2 
Sf3         0.71684    ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         4
  Template     D
  Function     0x1015
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         4
  Template     D
  Function     0x2015
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_5"-690_bar
  Tree         4
  Template     D
  Function     0x25
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
Sdf       4       ; Stem Seal dynamic friction factor.        [%] 
Msdf      0.06    ; Min dynamic friction in Stem seal.        [kN] 
Ssf       6       ; Stem packing seal static friction factor  [%] 
Mssf      0.09    ; Min static friction in Stem Packing Seal  [kN] 
Gdf       10      ; Gate Seat dynamic friction factor.        [%]  
Mgdf      0.42    ; Min dynamic friction in Gate Seals        [kN] 
Gsf       15      ; Gate Seal static friction factor          [%] 
Mgsf      0.83    ; Min static friction in Gate Seals         [kN] 
Bsf        2.09   ; Average Belville spring force             [kN] 
Spfric      5     ; Spring friction loss                      [%] 
Sf1  -1073.74            ; Disc spring factor 1 
Sf2   1373.4            ; Disc spring factor 2 
Sf3         0.71684    ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         4
  Template     D
  Function     0x1025
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         4
  Template     D
  Function     0x2025
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-690_bar
  Tree         4
  Template     D
  Function     0x35
Pdia       114.3        ; Actuator piston diameter  [mm] 
  Msdia                             0.0
Sc        0        ; Actuator spring constant = 0 forces the disc sping parameters to be used 
Spre       0.1172        ; Spring pretension   [m] 
Mass       50           ; Mass of accelerated components   [kg] 
Smax      0.06502        ; Actuator stroke.   [m] 
Voc       .6           ; Pressurized volume in opening cavity  
Vsdia     38.1         ; Valve stem diameter  [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        4             ; Actuator Seal dynamic (colomb) friction factor.  
Mdf       0.04          ; Min dynamic friction in actuator seals. 
Sf        10            ; Actuator Seal static (stiction) friction factor  
Msf       0.1          ; Min static friction in actuator seals. 
Ld        10.0          ; Linear damping of actuator. 
Vlim      0.0002        ; Velocity limit between stiction and colomb fric 
Adf             2.45            ; Acceleration damping factor   
Psl         10.92         ; piston seal width 
Vsl         9.5          ; valve stem seal width 
Osdia     34.93         ; Overide stem diameter 
Ossl      9.5         ; Overide stem seal width  
Vcc       1          ; Pressurized volume in closing cavity 
Vssl      47.8         ; Valve stem seal width 
Sodia    69.77        ; Gate seat OD 
Sidia     52.39        ; Gate seat ID  
Sw        8.89          ; Gate seat face width 
Gcop      12.65         ; Gate crack open point 
Ghdia    5          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen      20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff       0.01 ; Gate seal U-seal flow factor.  
Scff       0.05 ; Gate seal flow factor 
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3.     ; Pressurized volume in gate cavity  
Sdf       4             ; Stem Seal dynamic friction factor. 
Msdf      0.06          ; Min dynamic friction in Stem seal. 
Ssf       6             ; Stem packing seal static friction factor 
Mssf      0.09          ; Min static friction in Stem Packing Seal 
Gdf       10            ; Gate Seat dynamic friction factor. 
Mgdf      0.42          ; Min dynamic friction in Gate Seals 
Gsf       15            ; Gate Seal static friction factor 
Mgsf      0.63          ; Min static friction in Gate Seals 
Bsf       0.58          ; Average Belville spring force                [kN] 
Spfric      5              ; Spring friction loss                               [%] 
Sf1  -1155.75          ; Disc spring factor 1 
Sf2   1196.17            ; Disc spring factor 2 
Sf3         0.85539               ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         4
  Template     D
  Function     0x1035
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         4
  Template     D
  Function     0x2035
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-690_bar
  Tree         4
  Template     D
  Function     0x45
Pdia       114.3        ; Actuator piston diameter  [mm] 
  Msdia                             0.0
Sc        0        ; Actuator spring constant = 0 forces the disc sping parameters to be used 
Spre       0.1172        ; Spring pretension   [m] 
Mass       50           ; Mass of accelerated components   [kg] 
Smax      0.06502        ; Actuator stroke.   [m] 
Voc       .6           ; Pressurized volume in opening cavity  
Vsdia     38.1         ; Valve stem diameter  [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        4             ; Actuator Seal dynamic (colomb) friction factor.  
Mdf       0.04          ; Min dynamic friction in actuator seals. 
Sf        10            ; Actuator Seal static (stiction) friction factor  
Msf       0.1          ; Min static friction in actuator seals. 
Ld        10.0          ; Linear damping of actuator. 
Vlim      0.0002        ; Velocity limit between stiction and colomb fric 
Adf             2.45            ; Acceleration damping factor   
Psl         10.92         ; piston seal width 
Vsl         9.5          ; valve stem seal width 
Osdia     34.93         ; Overide stem diameter 
Ossl      9.5         ; Overide stem seal width  
Vcc       1          ; Pressurized volume in closing cavity 
Vssl      47.8         ; Valve stem seal width 
Sodia    69.77        ; Gate seat OD 
Sidia     52.39        ; Gate seat ID  
Sw        8.89          ; Gate seat face width 
Gcop      12.65         ; Gate crack open point 
Ghdia    5          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen      20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff       0.01 ; Gate seal U-seal flow factor.  
Scff       0.05 ; Gate seal flow factor 
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3.     ; Pressurized volume in gate cavity  
Sdf       4             ; Stem Seal dynamic friction factor. 
Msdf      0.06          ; Min dynamic friction in Stem seal. 
Ssf       6             ; Stem packing seal static friction factor 
Mssf      0.09          ; Min static friction in Stem Packing Seal 
Gdf       10            ; Gate Seat dynamic friction factor. 
Mgdf      0.42          ; Min dynamic friction in Gate Seals 
Gsf       15            ; Gate Seal static friction factor 
Mgsf      0.63          ; Min static friction in Gate Seals 
Bsf       0.58          ; Average Belville spring force                [kN] 
Spfric      5              ; Spring friction loss                               [%] 
Sf1  -1155.75          ; Disc spring factor 1 
Sf2   1196.17            ; Disc spring factor 2 
Sf3         0.85539               ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         4
  Template     D
  Function     0x1045
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         4
  Template     D
  Function     0x2045
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-690_bar
  Tree         4
  Template     D
  Function     0x55
Pdia       114.3        ; Actuator piston diameter  [mm] 
  Msdia                             0.0
Sc        0        ; Actuator spring constant = 0 forces the disc sping parameters to be used 
Spre       0.1172        ; Spring pretension   [m] 
Mass       50           ; Mass of accelerated components   [kg] 
Smax      0.06502        ; Actuator stroke.   [m] 
Voc       .6           ; Pressurized volume in opening cavity  
Vsdia     38.1         ; Valve stem diameter  [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        4             ; Actuator Seal dynamic (colomb) friction factor.  
Mdf       0.04          ; Min dynamic friction in actuator seals. 
Sf        10            ; Actuator Seal static (stiction) friction factor  
Msf       0.1          ; Min static friction in actuator seals. 
Ld        10.0          ; Linear damping of actuator. 
Vlim      0.0002        ; Velocity limit between stiction and colomb fric 
Adf             2.45            ; Acceleration damping factor   
Psl         10.92         ; piston seal width 
Vsl         9.5          ; valve stem seal width 
Osdia     34.93         ; Overide stem diameter 
Ossl      9.5         ; Overide stem seal width  
Vcc       1          ; Pressurized volume in closing cavity 
Vssl      47.8         ; Valve stem seal width 
Sodia    69.77        ; Gate seat OD 
Sidia     52.39        ; Gate seat ID  
Sw        8.89          ; Gate seat face width 
Gcop      12.65         ; Gate crack open point 
Ghdia    5          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen      20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff       0.01 ; Gate seal U-seal flow factor.  
Scff       0.05 ; Gate seal flow factor 
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3.     ; Pressurized volume in gate cavity  
Sdf       4             ; Stem Seal dynamic friction factor. 
Msdf      0.06          ; Min dynamic friction in Stem seal. 
Ssf       6             ; Stem packing seal static friction factor 
Mssf      0.09          ; Min static friction in Stem Packing Seal 
Gdf       10            ; Gate Seat dynamic friction factor. 
Mgdf      0.42          ; Min dynamic friction in Gate Seals 
Gsf       15            ; Gate Seal static friction factor 
Mgsf      0.63          ; Min static friction in Gate Seals 
Bsf       0.58          ; Average Belville spring force                [kN] 
Spfric      5              ; Spring friction loss                               [%] 
Sf1  -1155.75          ; Disc spring factor 1 
Sf2   1196.17            ; Disc spring factor 2 
Sf3         0.85539               ; Disc spring factor 3 

;;; Actuator open line
LINE         Ao
  Tree         4
  Template     D
  Function     0x1055
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Actuator close line
LINE         Ac
  Tree         4
  Template     D
  Function     0x2055
  Plugs        1
  Form         1
  Diameter                       11.0
  Length                         3.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                           70.0
  Rhdo                           70.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                           24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0
; Animations:
Animate    Hsim

