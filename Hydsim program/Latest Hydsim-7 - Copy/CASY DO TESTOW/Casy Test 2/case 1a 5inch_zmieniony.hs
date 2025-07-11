$description 
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
$sequence_from C:/Users/asekula/OneDrive - Digicorner/Desktop/HA TRAINING/hydsim training 2024/case 1a.seq

;;; Hydraulic fluid used in entire system
FLUID        used in entire system
Ftmpr                             2136
Visc                             2136
Dens                            2136
Beta                            2136

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
Pstart                         2136
Pstop                          2
Pdepl                            2136
Rhp_a                            2136
Rha_r                            2136
Pset                            2136
  Pdrop                            20.0  
  Qref                             0.50  
Tamb                             2136
Height                           2136
PrRet                             2136
PrTreshold                        2136
QTreshold                        2136

;;; HPU accumulator
ACCUMULATOR  H-Acc
  Template     @
Tamb                             2136
Tau                              2136
Prepr                          2136
Prevol                         2136
Pretmpr                          2136
Dia                              2136
Len                               2
Rh                               2136

;;; Supply umbilical
LINE         Us
  Type         Constant
  Template     A
  Function     0x1002
  Plugs        200
  Form         1
  Diameter                      15.90            
  Length                          20000       
  Nplugs                         200.0            
  Rn                            1.50e-3  
  Rhup                             20.0  
  Rhdo                             30.0  
  Hdiff                          -520.0  
  Trnum                           2300.  
Beta                            2136
  Binc                              0.0  
  Bexp                              0.0  
  VEcorr                            1.0  
  Mwp                             300.0  

;;; Template supply manifold
MANIFOLD     Ms
  Template     A
  Function     0x1012
  Depth                          500.0            
  Volume                           10.0  
  AssistFlowGain                   0.20  

;;; Supply umbilical
LINE         Us
  Type         Constant
  Template     B
  Function     0x1002
  Plugs        100
  Form         0
  Diameter                        15.90  
  Length                          10000       
  Nplugs                         100.0            
  Rn                            1.50e-3  
  Rhup                             30.0  
  Rhdo                             30.0  
  Hdiff                             0.0  
  Trnum                           2300.  
Beta                            2136
  Binc                              0.0  
  Bexp                              0.0  
  VEcorr                            1.0  
  Mwp                             300.0  

;;; Template supply manifold
MANIFOLD     Ms
  Template     B
  Function     0x1022
  Depth                          500.0            
  Volume                           10.0  
  AssistFlowGain                   0.20  

;;; Subsea Control Module
SCM          S
  Tree         1
  Template     B
  Function     0x3
  Depth                           500.0      
  Cv_fwr                          0.250  
  Cv_fwq                         6.0e-3  
  Svol                              4.0  
  Rvol                              4.0  
  PPrup                           300.0      
  PPrdo                             1.0  
  Cvrhp_a                           0.0  

;;; Xmas tree return manifold
MANIFOLD     T
  Tree         1
  Template     B
  Function     0x2004
  Depth                           500.0      
  Volume                           20.0  
  AssistFlowGain                   0.20  

;;; Xmas-tree bladder
BLADDER      T-Bl
  Tree         1
  Template     B
  Function     0x2004
  Vmax                             20.0  
  Vmin                             0.10  
Dia                              2136
Len                               2
Rh                               2136
  In_vol                           20.0  

;;; SCM supply line
LINE         Ss
  Tree         1
  Template     B
  Function     0x1003
  Plugs        1
  Form         1
  Diameter                        15.90     
  Length                           50.0      
  Nplugs                            1.0  
  Rn                            1.50e-3  
  Rhup                           70.0            
  Rhdo                           137.0            
  Hdiff                           200.0  
  Trnum                           2300.  
Beta                            2136
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
Beta                            2136
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
Tau                             2136
Rh                               2136

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
Beta                            2136
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
Beta                            2136
  Binc                              0.0 
  Bexp                              0.0 
  VEcorr                            1.0 
  Mwp                             300.0 

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_5"-345_bar
  Tree         1
  Template     B
  Function     0x25
Pdia       181.08        ; Actuator piston diameter  
  Msdia                             0.0 
Sc        445.59        ; Actuator spring constant [kN/m]  NB!! Temporary until disk spring datais available  
Spre       0.2596        ; Spring pretension ?  
Mass       200           ; Mass of accelerated components ?  
Smax      0.14427        ; Actuator stroke.  
Voc       3           ; Pressurized volume in opening cavity ?  
Vsdia     50.8         ; Valve stem diameter  
  Cvrhp_a                         2030. 
  Cvrha_r                         430.0 
Df        4             ; Actuator Seal dynamic (colomb) friction factor. ?  
Mdf       0.14          ; Min dynamic friction in actuator seals.?  
Sf        10            ; Actuator Seal static (stiction) friction factor ?  
Msf       0.34          ; Min static friction in actuator seals.?  
Ld        10.0          ; Linear damping of actuator.  
Vlim      0.0002        ; Velocity limit between stiction and colomb fric  
Adf             2.45            ; Acceleration damping factor    
Psl         9.5         ; piston seal width?  
Vsl         9.5          ; valve stem seal width?  
Osdia     38.1         ; Overide stem diameter  
Ossl      14.0         ; Overide stem seal width ?  
Vcc       6           ; Pressurized volume in closing cavity?  
Vssl      47.8         ; Valve stem seal width ?  
Sodia    155.58        ; Gate seat OD  
Sidia     130.18        ; Gate seat ID   
Sw        12.7          ; Gate seat face width  
Gcop      18.9         ; Gate crack open point?  
Ghdia    9.40          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm]  
Ghlen      20.          ; Total hole length.                     [mm]  
Ghrn   .05           ;  Roughness of wetted hole surface    [mm]  
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow  
Suff       0.01 ; Gate seal U-seal flow factor.   
Scff       0.05 ; Gate seal flow factor  
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ...  
Vgc      3.     ; Pressurized volume in gate cavity   
Sdf       4         ; Stem Seal dynamic friction factor.       [%]  
Msdf      0.06      ; Min dynamic friction in Stem seal.       [kN]  
Ssf       6         ; Stem packing seal static friction factor [%]  
Mssf      0.09      ; Min static friction in Stem Packing Seal [kN]  
Gdf       10        ; Gate Seat dynamic friction factor.       [%]  
Mgdf      0.42      ; Min dynamic friction in Gate Seals       [kN]  
Gsf       15        ; Gate Seal static friction factor         [%]  
Mgsf      0.63      ; Min static friction in Gate Seals        [kN]  
Bsf        1.41     ; Average Belville spring force            [kN]  
Spfric      5       ; Spring friction loss                     [%]  
Sf1  0             ; Disc spring factor 1  
Sf2  0            ; Disc spring factor 2  
Sf3  0               ; Disc spring factor 3  

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     B
  Function     0x1025
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
Beta                            2136
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
  Diameter                         6.30 
  Length                            3.0 
  Nplugs                            1.0 
  Rn                            1.50e-3 
  Rhup                             30.0 
  Rhdo                             30.0 
  Hdiff                             0.0 
  Trnum                           2300. 
Beta                            2136
  Binc                              0.0 
  Bexp                              0.0 
  VEcorr                            1.0 
  Mwp                             300.0 

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     B
  Function     0x1035
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
Beta                            2136
  Binc                              0.0 
  Bexp                              0.0 
  VEcorr                            1.0 
  Mwp                             300.0 

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-345_bar
  Tree         1
  Template     B
  Function     0x45
Pdia   114.55   ; Actuator piston diameter  [mm]  
  Msdia                             0.0 
Sc     277      ; Actuator spring constant [kN/m]  NB!! Temporary until disk spring datais available  
Spre   0.1336   ; Spring pretension ?   [m]  
Mass   20       ; Mass of accelerated components ?  [kg]  
Smax   0.06502  ; Actuator stroke.   [m]  
Voc    1        ; Pressurized volume in opening cavity ? [l]  
Vsdia  34.93    ; Valve stem diameter  [mm]  
  Cvrhp_a                         2030. 
  Cvrha_r                         430.0 
Df     4        ; Actuator Seal dynamic (colomb) friction factor. ?  
Mdf    0.14     ; Min dynamic friction in actuator seals.?  
Sf     10       ; Actuator Seal static (stiction) friction factor ?  
Msf    0.34     ; Min static friction in actuator seals.?  
Ld     10.0     ; Linear damping of actuator.  
Vlim   0.0002   ; Velocity limit between stiction and colomb fric  
Adf    2.45     ; Acceleration damping factor    
Psl    9.5      ; piston seal width?  
Vsl    9.5      ; valve stem seal width?  
Osdia  35.56    ; Overide stem diameter  
Ossl   14.0     ; Overide stem seal width ?  
Vcc    2        ; Pressurized volume in closing cavity?  
Vssl   47.8     ; Valve stem seal width ?  
Sodia  66.47        ; Gate seat OD  
Sidia  52.4        ; Gate seat ID   
Sw     7.04          ; Gate seat face width  
Gcop   7.04         ; Gate crack open point?  
Ghdia  9.40          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm]  
Ghlen  20.          ; Total hole length.                     [mm]  
Ghrn   .05           ;  Roughness of wetted hole surface    [mm]  
Ghcq   0.7            ; Flow coefficient (CQ)for fully dev. turb. flow  
Suff   0.01 ; Gate seal U-seal flow factor.   
Scff   0.05 ; Gate seal flow factor  
Scrpr  31.65         ; Pressure diff between Prgc and Prup or Prdo causing ...  
Vgc    3.     ; Pressurized volume in gate cavity   
Sdf       4             ; Stem Seal dynamic friction factor.  
Msdf      0.06          ; Min dynamic friction in Stem seal.  
Ssf       6             ; Stem packing seal static friction factor  
Mssf      0.09          ; Min static friction in Stem Packing Seal  
Gdf       10            ; Gate Seat dynamic friction factor.  
Mgdf      0.42          ; Min dynamic friction in Gate Seals  
Gsf       15            ; Gate Seal static friction factor  
Mgsf      0.63          ; Min static friction in Gate Seals  
Bsf        1.41          ; Average Belville spring force                [kN]  
Spfric      5              ; Spring friction loss                               [%]  
Sf1  0             ; Disc spring factor 1  
Sf2   0           ; Disc spring factor 2  
Sf3    0             ; Disc spring factor 3  

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     B
  Function     0x1045
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
Beta                            2136
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
  Diameter                         6.30 
  Length                            3.0 
  Nplugs                            1.0 
  Rn                            1.50e-3 
  Rhup                             30.0 
  Rhdo                             30.0 
  Hdiff                             0.0 
  Trnum                           2300. 
Beta                            2136
  Binc                              0.0 
  Bexp                              0.0 
  VEcorr                            1.0 
  Mwp                             300.0 

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-345_bar
  Tree         1
  Template     B
  Function     0x55
Pdia   114.55   ; Actuator piston diameter  [mm]  
  Msdia                             0.0 
Sc     277      ; Actuator spring constant [kN/m]  NB!! Temporary until disk spring datais available  
Spre   0.1336   ; Spring pretension ?   [m]  
Mass   20       ; Mass of accelerated components ?  [kg]  
Smax   0.06502  ; Actuator stroke.   [m]  
Voc    1        ; Pressurized volume in opening cavity ? [l]  
Vsdia  34.93    ; Valve stem diameter  [mm]  
  Cvrhp_a                         2030. 
  Cvrha_r                         430.0 
Df     4        ; Actuator Seal dynamic (colomb) friction factor. ?  
Mdf    0.14     ; Min dynamic friction in actuator seals.?  
Sf     10       ; Actuator Seal static (stiction) friction factor ?  
Msf    0.34     ; Min static friction in actuator seals.?  
Ld     10.0     ; Linear damping of actuator.  
Vlim   0.0002   ; Velocity limit between stiction and colomb fric  
Adf    2.45     ; Acceleration damping factor    
Psl    9.5      ; piston seal width?  
Vsl    9.5      ; valve stem seal width?  
Osdia  35.56    ; Overide stem diameter  
Ossl   14.0     ; Overide stem seal width ?  
Vcc    2        ; Pressurized volume in closing cavity?  
Vssl   47.8     ; Valve stem seal width ?  
Sodia  66.47        ; Gate seat OD  
Sidia  52.4        ; Gate seat ID   
Sw     7.04          ; Gate seat face width  
Gcop   7.04         ; Gate crack open point?  
Ghdia  9.40          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm]  
Ghlen  20.          ; Total hole length.                     [mm]  
Ghrn   .05           ;  Roughness of wetted hole surface    [mm]  
Ghcq   0.7            ; Flow coefficient (CQ)for fully dev. turb. flow  
Suff   0.01 ; Gate seal U-seal flow factor.   
Scff   0.05 ; Gate seal flow factor  
Scrpr  31.65         ; Pressure diff between Prgc and Prup or Prdo causing ...  
Vgc    3.     ; Pressurized volume in gate cavity   
Sdf       4             ; Stem Seal dynamic friction factor.  
Msdf      0.06          ; Min dynamic friction in Stem seal.  
Ssf       6             ; Stem packing seal static friction factor  
Mssf      0.09          ; Min static friction in Stem Packing Seal  
Gdf       10            ; Gate Seat dynamic friction factor.  
Mgdf      0.42          ; Min dynamic friction in Gate Seals  
Gsf       15            ; Gate Seal static friction factor  
Mgsf      0.63          ; Min static friction in Gate Seals  
Bsf        1.41          ; Average Belville spring force                [kN]  
Spfric      5              ; Spring friction loss                               [%]  
Sf1  0             ; Disc spring factor 1  
Sf2   0           ; Disc spring factor 2  
Sf3    0             ; Disc spring factor 3  

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     B
  Function     0x1055
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
Beta                            2136
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
  Diameter                         6.30 
  Length                            3.0 
  Nplugs                            1.0 
  Rn                            1.50e-3 
  Rhup                             30.0 
  Rhdo                             30.0 
  Hdiff                             0.0 
  Trnum                           2300. 
Beta                            2136
  Binc                              0.0 
  Bexp                              0.0 
  VEcorr                            1.0 
  Mwp                             300.0 

;;; SCM accumulator
ACCUMULATOR  S-Ac
  Tree         1
  Template     B
  Function     0x3
Tamb                              2136
Tau                              2136
Prepr                          2136
Prevol                           2136
Pretmpr                          2136
Dia                              2136
Len                               2
Rh                               2136

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_5"-345_bar
  Tree         1
  Template     B
  Function     0x15
Pdia       181.08        ; Actuator piston diameter 
  Msdia                             0.0
Sc        445.59        ; Actuator spring constant [kN/m]  NB!! Temporary until disk spring datais available 
Spre       0.2596        ; Spring pretension ? 
Mass       200           ; Mass of accelerated components ? 
Smax      0.14427        ; Actuator stroke. 
Voc       3           ; Pressurized volume in opening cavity ? 
Vsdia     50.8         ; Valve stem diameter 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        4             ; Actuator Seal dynamic (colomb) friction factor. ? 
Mdf       0.14          ; Min dynamic friction in actuator seals.? 
Sf        10            ; Actuator Seal static (stiction) friction factor ? 
Msf       0.34          ; Min static friction in actuator seals.? 
Ld        10.0          ; Linear damping of actuator. 
Vlim      0.0002        ; Velocity limit between stiction and colomb fric 
Adf             2.45            ; Acceleration damping factor   
Psl         9.5         ; piston seal width? 
Vsl         9.5          ; valve stem seal width? 
Osdia     38.1         ; Overide stem diameter 
Ossl      14.0         ; Overide stem seal width ? 
Vcc       6           ; Pressurized volume in closing cavity? 
Vssl      47.8         ; Valve stem seal width ? 
Sodia    155.58        ; Gate seat OD 
Sidia     130.18        ; Gate seat ID  
Sw        12.7          ; Gate seat face width 
Gcop      18.9         ; Gate crack open point? 
Ghdia    9.40          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen      20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq      0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff       0.01 ; Gate seal U-seal flow factor.  
Scff       0.05 ; Gate seal flow factor 
Scrpr     31.65         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3.     ; Pressurized volume in gate cavity  
Sdf       4         ; Stem Seal dynamic friction factor.       [%] 
Msdf      0.06      ; Min dynamic friction in Stem seal.       [kN] 
Ssf       6         ; Stem packing seal static friction factor [%] 
Mssf      0.09      ; Min static friction in Stem Packing Seal [kN] 
Gdf       10        ; Gate Seat dynamic friction factor.       [%] 
Mgdf      0.42      ; Min dynamic friction in Gate Seals       [kN] 
Gsf       15        ; Gate Seal static friction factor         [%] 
Mgsf      0.63      ; Min static friction in Gate Seals        [kN] 
Bsf        1.41     ; Average Belville spring force            [kN] 
Spfric      5       ; Spring friction loss                     [%] 
Sf1  0             ; Disc spring factor 1 
Sf2  0            ; Disc spring factor 2 
Sf3  0               ; Disc spring factor 3 

;;; Actuator close line
LINE         Ac
  Tree         1
  Template     B
  Function     0x2035
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
Beta                            2136
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close deepwater valve, Model 3000
ACTUATOR     A
  Type         M3_FMC-M3000_2"-345_bar
  Tree         1
  Template     B
  Function     0x35
Pdia   114.55   ; Actuator piston diameter  [mm] 
  Msdia                             0.0
Sc     277      ; Actuator spring constant [kN/m]  NB!! Temporary until disk spring datais available 
Spre   0.1336   ; Spring pretension ?   [m] 
Mass   20       ; Mass of accelerated components ?  [kg] 
Smax   0.06502  ; Actuator stroke.   [m] 
Voc    1        ; Pressurized volume in opening cavity ? [l] 
Vsdia  34.93    ; Valve stem diameter  [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df     4        ; Actuator Seal dynamic (colomb) friction factor. ? 
Mdf    0.14     ; Min dynamic friction in actuator seals.? 
Sf     10       ; Actuator Seal static (stiction) friction factor ? 
Msf    0.34     ; Min static friction in actuator seals.? 
Ld     10.0     ; Linear damping of actuator. 
Vlim   0.0002   ; Velocity limit between stiction and colomb fric 
Adf    2.45     ; Acceleration damping factor   
Psl    9.5      ; piston seal width? 
Vsl    9.5      ; valve stem seal width? 
Osdia  35.56    ; Overide stem diameter 
Ossl   14.0     ; Overide stem seal width ? 
Vcc    2        ; Pressurized volume in closing cavity? 
Vssl   47.8     ; Valve stem seal width ? 
Sodia  66.47        ; Gate seat OD 
Sidia  52.4        ; Gate seat ID  
Sw     7.04          ; Gate seat face width 
Gcop   7.04         ; Gate crack open point? 
Ghdia  9.40          ; Gate hole (btwn process bore and gate cavity)  diameter             [mm] 
Ghlen  20.          ; Total hole length.                     [mm] 
Ghrn   .05           ;  Roughness of wetted hole surface    [mm] 
Ghcq   0.7            ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff   0.01 ; Gate seal U-seal flow factor.  
Scff   0.05 ; Gate seal flow factor 
Scrpr  31.65         ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc    3.     ; Pressurized volume in gate cavity  
Sdf       4             ; Stem Seal dynamic friction factor. 
Msdf      0.06          ; Min dynamic friction in Stem seal. 
Ssf       6             ; Stem packing seal static friction factor 
Mssf      0.09          ; Min static friction in Stem Packing Seal 
Gdf       10            ; Gate Seat dynamic friction factor. 
Mgdf      0.42          ; Min dynamic friction in Gate Seals 
Gsf       15            ; Gate Seal static friction factor 
Mgsf      0.63          ; Min static friction in Gate Seals 
Bsf        1.41          ; Average Belville spring force                [kN] 
Spfric      5              ; Spring friction loss                               [%] 
Sf1  0             ; Disc spring factor 1 
Sf2   0           ; Disc spring factor 2 
Sf3    0             ; Disc spring factor 3 

