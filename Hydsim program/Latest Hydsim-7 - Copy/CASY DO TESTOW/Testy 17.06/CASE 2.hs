$description --                      
$method      RKF23
$duration    5000.000000
$timestep    0.000500
$storestep   0.100000
$refreshinterval 0.100000
$maxsimstep  0.05
$minsimstep  1e-006
$tolerance   0.0001
$stepadjustpar 0.900000
$iterationlimit 10

;;; Hydraulic fluid used in entire system
FLUID        MBO-HW-443
  Ftmpr                        4.440                         
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
  Pstart                         310.0                         
  Pstop                          345.0                         
  Pdepl                        0.130                         
  Rhp_a                            20.0               
  Rha_r                            20.0               
  Pset                           276.0                         
  Pdrop                            20.0               
  Qref                             0.50               
  Tamb                           40.0                         
  Height                         30.0                         
  PrRet                             1.0               
  PrTreshold                        1.0               
  QTreshold                        1.20               

;;; HPU accumulator
ACCUMULATOR  H-Acc
  Template     @
  Tamb                             20.0               
  Tau                              40.0               
  Prepr                          184.0                         
  Prevol                         227.0                             
  Pretmpr                        40.0                         
  Dia                              11.0               
  Len                               3.0               
  Rh                               70.0               

;;; Supply umbilical
LINE         Us
  Type         Constant
  Template     A
  Function     0x1002
  Plugs        85
  Form         1
  Diameter                        12.70               
  Length                          8450.                              
  Nplugs                         85.0                                 
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

;;; Template supply manifold
MANIFOLD     Ms
  Template     A
  Function     0x1012
  Depth                           2100.                    
  Volume                           10.0               
  AssistFlowGain                   0.20               

;;; Supply umbilical
LINE         Us
  Type         Constant
  Template     B
  Function     0x1002
  Plugs        42
  Form         0
  Diameter                        12.70               
  Length                          4175.                              
  Nplugs                         42.0                                 
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

;;; Template supply manifold
MANIFOLD     Ms
  Template     B
  Function     0x1012
  Depth                           2100.                    
  Volume                           10.0               
  AssistFlowGain                   0.20               

;;; Supply umbilical
LINE         Us
  Type         Constant
  Template     C
  Function     0x1002
  Plugs        26
  Form         0
  Diameter                        12.70               
  Length                          2600.                              
  Nplugs                         26.0                                 
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

;;; Template supply manifold
MANIFOLD     Ms
  Template     C
  Function     0x1012
  Depth                           2100.                    
  Volume                           10.0               
  AssistFlowGain                   0.20               

;;; Supply umbilical
LINE         Us
  Type         Constant
  Template     D
  Function     0x1002
  Plugs        28
  Form         0
  Diameter                        12.70               
  Length                          2730.                              
  Nplugs                         28.0                                 
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

;;; Template supply manifold
MANIFOLD     Ms
  Template     D
  Function     0x1012
  Depth                           2100.                    
  Volume                           10.0               
  AssistFlowGain                   0.20               

;;; Supply umbilical
LINE         Us
  Type         Constant
  Template     E
  Function     0x1002
  Plugs        31
  Form         0
  Diameter                        12.70               
  Length                          3090.                         
  Nplugs                         31.0                             
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

;;; Template supply manifold
MANIFOLD     Ms
  Template     E
  Function     0x1012
  Depth                           2100.                    
  Volume                           10.0               
  AssistFlowGain                   0.20               

;;; Subsea Control Module
SCM          S
  Tree         1
  Template     E
  Function     0x3
  Depth                           2100.                    
  Cv_fwr                          0.250               
  Cv_fwq                         6.0e-3               
  Svol                              4.0               
  Rvol                              4.0               
  PPrup                          600.0                         
  PPrdo                             600.0                   
  Cvrhp_a                           0.0               

;;; Xmas tree return manifold
MANIFOLD     T
  Tree         1
  Template     E
  Function     0x2004
  Depth                           2100.                    
  Volume                           10.0               
  AssistFlowGain                   0.20               

;;; Xmas-tree bladder
BLADDER      T-Bl
  Tree         1
  Template     E
  Function     0x2004
  Vmax                             40.0                   
  Vmin                             0.10               
  Dia                              11.0               
  Len                               5.0               
  Rh                               20.0               
  In_vol                           40.0                   

;;; SCM supply line
LINE         Ss
  Type         Constant
  Tree         1
  Template     E
  Function     0x1003
  Plugs        1
  Form         1
  Diameter                        12.70               
  Length                         100.0                                 
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
  Template     E
  Function     0x2004
  Plugs        1
  Form         1
  Diameter                         9.40                  
  Length                            7.0                   
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
  Template     E
  Function     0x3
  Cr                                3.0               
  Inc                               3.0               
  Qref                             0.10               
  Tau                             0.010               
  Rh                               10.0               

;;; Fail close valves
ACTUATOR     A
  Type         FC_FMC-AH700_5"-GV-690_bar-2.9_L
  Tree         1
  Template     E
  Function     0x15
Pdia      162    ; Actuator piston diameter       [mm]                
Msdia     47.64      ; Middle (piston) stem diameter  [mm]                
Sc        598.6     ; Actuator spring constant        [kN/m]                
Spre      0.206     ; Spring pretension             [m]                
Mass      400        ; Mass of accelerated components  [kg]                
Smax      0.1537     ; Actuator stroke.               [m]                
Voc       2.9        ; Pressurized volume in opening cavity    [l]                
Vsdia     53.9       ; Valve (bonnet) stem diameter   [mm]                
  Cvrhp_a                         2030.               
  Cvrha_r                         430.0               
Df        1             ; Actuator Seal dynamic (colomb) friction factor.                                                                                                                                                                                      
Mdf       1.967          ; Min dynamic friction in actuator seals.           [kN]                
Sf        2            ; Actuator Seal static (stiction) friction factor  [%]                
Msf       2.295          ; Min static friction in actuator seals.           [kN]                
Ld        10            ; Linear damping of actuator.                
Vlim      0.0002         ; Velocity limit between stiction and colomb fric [m/s]                
Adf       2     ; Acceleration damping factor                 
Psl       12.7        ; piston seal width                    [mm]                
Vsl       9.525          ; valve stem seal width                [mm]                
Mssl      9.525          ; Middle stem seal width               [mm]                
Osdia     47.64          ; Overide (upper) stem diameter                [mm]                
Ossl      9.525          ; Overide stem seal width              [mm]                
Vcc        3             ; Pressurized volume in closing cavity [l]                
Vssl      47.8          ; Valve stem seal width                [mm]                
Sodia     143,7         ; Gate seat OD           [mm]                
Sidia     131         ; Gate seat ID           [mm]                
Sw        18.52          ; Gate seat face width   [mm]                
Gcop      22.7          ; Gate crack open point  [mm]                
Bsdia     0.0             ; Balance stem diameter                
Ghdia    6   ; Gate hole (btwn process bore and gate cavity) diameter [mm]                
Ghlen    20.  ; Total hole length.                                    [mm]                
Ghrn   .005     ;  Roughness of wetted hole surface                   [mm]                
Ghcq      0.7   ; Flow coefficient (CQ)for fully dev. turb. flow                
Suff     .01    ; Gate seal U-seal flow factor.                 
Scff     .05    ; Gate seal flow factor                
Scrpr   7.19    ; Pressure diff between Prgc and Prup or Prdo causing ...                
Vgc      3    ; Pressurized volume in gate cavity                 
Sdf       3     ; Stem Seal dynamic friction factor.        [%]                
Msdf      0.06  ; Min dynamic friction in Stem seal.        [kN]                
Ssf       6     ; Stem packing seal static friction factor  [%]                
Mssf      0.09  ; Min static friction in Stem Packing Seal  [kN]                
Gdf       12     ; Gate Seat dynamic friction factor.   [%]                
Mgdf      0.42   ; Min dynamic friction in Gate Seals   [kN]                
Gsf       14     ; Gate Seal static friction factor     [%]                
Mgsf      0.83   ; Min static friction in Gate Seals    [kN]                
Bsf       2.084  ; Average Belville spring force        [kN]                
Spfric    0     ; Spring friction loss                 [%]                

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     E
  Function     0x1015
  Plugs        1
  Form         1
  Diameter                         6.220                 
  Length                            5.0                   
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
  Template     E
  Function     0x2015
  Plugs        1
  Form         1
  Diameter                         6.220                 
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

;;; Fail close valves
ACTUATOR     A
  Type         FC_FMC-AH700_5"-GV-690_bar-2.9_L
  Tree         1
  Template     E
  Function     0x25
Pdia      162    ; Actuator piston diameter       [mm]                
Msdia     47.64      ; Middle (piston) stem diameter  [mm]                
Sc        598.6     ; Actuator spring constant        [kN/m]                
Spre      0.206     ; Spring pretension             [m]                
Mass      400        ; Mass of accelerated components  [kg]                
Smax      0.1537     ; Actuator stroke.               [m]                
Voc       2.9        ; Pressurized volume in opening cavity    [l]                
Vsdia     53.9       ; Valve (bonnet) stem diameter   [mm]                
  Cvrhp_a                         2030.               
  Cvrha_r                         430.0               
Df        1             ; Actuator Seal dynamic (colomb) friction factor.                                                                                                                                                                                      
Mdf       1.967          ; Min dynamic friction in actuator seals.           [kN]                
Sf        2            ; Actuator Seal static (stiction) friction factor  [%]                
Msf       2.295          ; Min static friction in actuator seals.           [kN]                
Ld        10            ; Linear damping of actuator.                
Vlim      0.0002         ; Velocity limit between stiction and colomb fric [m/s]                
Adf       2     ; Acceleration damping factor                 
Psl       12.7        ; piston seal width                    [mm]                
Vsl       9.525          ; valve stem seal width                [mm]                
Mssl      9.525          ; Middle stem seal width               [mm]                
Osdia     47.64          ; Overide (upper) stem diameter                [mm]                
Ossl      9.525          ; Overide stem seal width              [mm]                
Vcc        3             ; Pressurized volume in closing cavity [l]                
Vssl      47.8          ; Valve stem seal width                [mm]                
Sodia     143,7         ; Gate seat OD           [mm]                
Sidia     131         ; Gate seat ID           [mm]                
Sw        18.52          ; Gate seat face width   [mm]                
Gcop      22.7          ; Gate crack open point  [mm]                
Bsdia     0.0             ; Balance stem diameter                
Ghdia    6   ; Gate hole (btwn process bore and gate cavity) diameter [mm]                
Ghlen    20.  ; Total hole length.                                    [mm]                
Ghrn   .005     ;  Roughness of wetted hole surface                   [mm]                
Ghcq      0.7   ; Flow coefficient (CQ)for fully dev. turb. flow                
Suff     .01    ; Gate seal U-seal flow factor.                 
Scff     .05    ; Gate seal flow factor                
Scrpr   7.19    ; Pressure diff between Prgc and Prup or Prdo causing ...                
Vgc      3    ; Pressurized volume in gate cavity                 
Sdf       3     ; Stem Seal dynamic friction factor.        [%]                
Msdf      0.06  ; Min dynamic friction in Stem seal.        [kN]                
Ssf       6     ; Stem packing seal static friction factor  [%]                
Mssf      0.09  ; Min static friction in Stem Packing Seal  [kN]                
Gdf       12     ; Gate Seat dynamic friction factor.   [%]                
Mgdf      0.42   ; Min dynamic friction in Gate Seals   [kN]                
Gsf       14     ; Gate Seal static friction factor     [%]                
Mgsf      0.83   ; Min static friction in Gate Seals    [kN]                
Bsf       2.084  ; Average Belville spring force        [kN]                
Spfric    0     ; Spring friction loss                 [%]                

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     E
  Function     0x1025
  Plugs        1
  Form         1
  Diameter                         6.220                 
  Length                            5.0                   
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
  Template     E
  Function     0x2025
  Plugs        1
  Form         1
  Diameter                         6.220                 
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

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     E
  Function     0x1035
  Plugs        1
  Form         1
  Diameter                         6.220                 
  Length                            5.0                   
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
  Template     E
  Function     0x2035
  Plugs        1
  Form         1
  Diameter                         6.220                 
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

;;; Fail close valves
ACTUATOR     A
  Type         FC_FMC-AH700_2"-GV-690_bar-0.42_L
  Tree         1
  Template     E
  Function     0x45
Pdia      96.5     ; Actuator piston diameter       [mm]                
Msdia     28.45      ; Middle (piston) stem diameter  [mm]                
Sc        430     ; Actuator spring constant        [kN/m]                
Spre      0.0922     ; Spring pretension             [m]                
Mass      100        ; Mass of accelerated components  [kg]                
Smax      0.0645     ; Actuator stroke.               [m]                
Voc       2       ; Pressurized volume in opening cavity    [l]                
Vsdia     28.5      ; Valve (bonnet) stem diameter   [mm]                
  Cvrhp_a                         2030.               
  Cvrha_r                         430.0               
Df        13             ; Actuator Seal dynamic (colomb) friction factor.  [%]                
Mdf       0.14          ; Min dynamic friction in actuator seals.           [kN]                
Sf        15            ; Actuator Seal static (stiction) friction factor  [%]                
Msf       0.34          ; Min static friction in actuator seals.           [kN]                
Ld        10            ; Linear damping of actuator.                
Vlim      0.0002         ; Velocity limit between stiction and colomb fric [m/s]                
Adf       1.8     ; Acceleration damping factor                 
Psl       15.74        ; piston seal width                    [mm]                
Vsl       47.78          ; valve stem seal width                [mm]                
Mssl      47.3          ; Middle stem seal width               [mm]                
Osdia     28.5        ; Overide (upper) stem diameter                [mm]                
Ossl      22.23          ; Overide stem seal width              [mm]                
Vcc        2             ; Pressurized volume in closing cavity [l]                
Vssl      47.8          ; Valve stem seal width                [mm]                
Sodia     88.33         ; Gate seat OD           [mm]                
Sidia     52.81         ; Gate seat ID           [mm]                
Sw         7.51         ; Gate seat face width   [mm]                
Gcop      11.3          ; Gate crack open point  [mm]                
Bsdia     0.0             ; Balance stem diameter                
Ghdia    4   ; Gate hole (btwn process bore and gate cavity) diameter [mm]                
Ghlen    10.  ; Total hole length.                                    [mm]                
Ghrn   .005     ;  Roughness of wetted hole surface                   [mm]                
Ghcq      0.7   ; Flow coefficient (CQ)for fully dev. turb. flow                
Suff     .005    ; Gate seal U-seal flow factor.                 
Scff     .002    ; Gate seal flow factor                
Scrpr   10.56    ; Pressure diff between Prgc and Prup or Prdo causing ...                
Vgc      4.0    ; Pressurized volume in gate cavity                 
Sdf       4     ; Stem Seal dynamic friction factor.        [%]                
Msdf      0.06  ; Min dynamic friction in Stem seal.        [kN]                
Ssf       6     ; Stem packing seal static friction factor  [%]                
Mssf      0.09  ; Min static friction in Stem Packing Seal  [kN]                
Gdf       10     ; Gate Seat dynamic friction factor.                
Mgdf      0.42   ; Min dynamic friction in Gate Seals                
Gsf       20     ; Gate Seal static friction factor                
Mgsf      0.83   ; Min static friction in Gate Seals                
Bsf       2.084  ; Average Belville spring force                [kN]                
Spfric    4.     ; Spring friction loss                         [%]                

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     E
  Function     0x1045
  Plugs        1
  Form         1
  Diameter                         6.220                 
  Length                            5.0                   
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
  Template     E
  Function     0x2045
  Plugs        1
  Form         1
  Diameter                         6.220                 
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

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     E
  Function     0x1055
  Plugs        1
  Form         1
  Diameter                         6.220                 
  Length                            5.0                   
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
  Template     E
  Function     0x2055
  Plugs        1
  Form         1
  Diameter                         6.220                 
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

;;; Fail close valves
ACTUATOR     A
  Type         FC_FMC-AH700_2"-GV-690_bar-0.42_L
  Tree         1
  Template     E
  Function     0x55
Pdia      96.5     ; Actuator piston diameter       [mm]                
Msdia     28.45      ; Middle (piston) stem diameter  [mm]                
Sc        430     ; Actuator spring constant        [kN/m]                
Spre      0.0922     ; Spring pretension             [m]                
Mass      100        ; Mass of accelerated components  [kg]                
Smax      0.0645     ; Actuator stroke.               [m]                
Voc       2       ; Pressurized volume in opening cavity    [l]                
Vsdia     28.5      ; Valve (bonnet) stem diameter   [mm]                
  Cvrhp_a                         2030.               
  Cvrha_r                         430.0               
Df        13             ; Actuator Seal dynamic (colomb) friction factor.  [%]                
Mdf       0.14          ; Min dynamic friction in actuator seals.           [kN]                
Sf        15            ; Actuator Seal static (stiction) friction factor  [%]                
Msf       0.34          ; Min static friction in actuator seals.           [kN]                
Ld        10            ; Linear damping of actuator.                
Vlim      0.0002         ; Velocity limit between stiction and colomb fric [m/s]                
Adf       1.8     ; Acceleration damping factor                 
Psl       15.74        ; piston seal width                    [mm]                
Vsl       47.78          ; valve stem seal width                [mm]                
Mssl      47.3          ; Middle stem seal width               [mm]                
Osdia     28.5        ; Overide (upper) stem diameter                [mm]                
Ossl      22.23          ; Overide stem seal width              [mm]                
Vcc        2             ; Pressurized volume in closing cavity [l]                
Vssl      47.8          ; Valve stem seal width                [mm]                
Sodia     88.33         ; Gate seat OD           [mm]                
Sidia     52.81         ; Gate seat ID           [mm]                
Sw         7.51         ; Gate seat face width   [mm]                
Gcop      11.3          ; Gate crack open point  [mm]                
Bsdia     0.0             ; Balance stem diameter                
Ghdia    4   ; Gate hole (btwn process bore and gate cavity) diameter [mm]                
Ghlen    10.  ; Total hole length.                                    [mm]                
Ghrn   .005     ;  Roughness of wetted hole surface                   [mm]                
Ghcq      0.7   ; Flow coefficient (CQ)for fully dev. turb. flow                
Suff     .005    ; Gate seal U-seal flow factor.                 
Scff     .002    ; Gate seal flow factor                
Scrpr   10.56    ; Pressure diff between Prgc and Prup or Prdo causing ...                
Vgc      4.0    ; Pressurized volume in gate cavity                 
Sdf       4     ; Stem Seal dynamic friction factor.        [%]                
Msdf      0.06  ; Min dynamic friction in Stem seal.        [kN]                
Ssf       6     ; Stem packing seal static friction factor  [%]                
Mssf      0.09  ; Min static friction in Stem Packing Seal  [kN]                
Gdf       10     ; Gate Seat dynamic friction factor.                
Mgdf      0.42   ; Min dynamic friction in Gate Seals                
Gsf       20     ; Gate Seal static friction factor                
Mgsf      0.83   ; Min static friction in Gate Seals                
Bsf       2.084  ; Average Belville spring force                [kN]                
Spfric    4.     ; Spring friction loss                         [%]                

;;; Fail close valves
ACTUATOR     A
  Type         FC_FMC-AH700_5"-GV-690_bar-2.9_L
  Tree         1
  Template     E
  Function     0x35
Pdia      162    ; Actuator piston diameter       [mm]           
Msdia     47.64      ; Middle (piston) stem diameter  [mm]           
Sc        598.6     ; Actuator spring constant        [kN/m]           
Spre      0.206     ; Spring pretension             [m]           
Mass      400        ; Mass of accelerated components  [kg]           
Smax      0.1537     ; Actuator stroke.               [m]           
Voc       2.9        ; Pressurized volume in opening cavity    [l]           
Vsdia     53.9       ; Valve (bonnet) stem diameter   [mm]           
  Cvrhp_a                         2030.          
  Cvrha_r                         430.0          
Df        1             ; Actuator Seal dynamic (colomb) friction factor.                                                                                                                                                                                      
Mdf       1.967          ; Min dynamic friction in actuator seals.           [kN]           
Sf        2            ; Actuator Seal static (stiction) friction factor  [%]           
Msf       2.295          ; Min static friction in actuator seals.           [kN]           
Ld        10            ; Linear damping of actuator.           
Vlim      0.0002         ; Velocity limit between stiction and colomb fric [m/s]           
Adf       2     ; Acceleration damping factor            
Psl       12.7        ; piston seal width                    [mm]           
Vsl       9.525          ; valve stem seal width                [mm]           
Mssl      9.525          ; Middle stem seal width               [mm]           
Osdia     47.64          ; Overide (upper) stem diameter                [mm]           
Ossl      9.525          ; Overide stem seal width              [mm]           
Vcc        3             ; Pressurized volume in closing cavity [l]           
Vssl      47.8          ; Valve stem seal width                [mm]           
Sodia     143,7         ; Gate seat OD           [mm]           
Sidia     131         ; Gate seat ID           [mm]           
Sw        18.52          ; Gate seat face width   [mm]           
Gcop      22.7          ; Gate crack open point  [mm]           
Bsdia     0.0             ; Balance stem diameter           
Ghdia    6   ; Gate hole (btwn process bore and gate cavity) diameter [mm]           
Ghlen    20.  ; Total hole length.                                    [mm]           
Ghrn   .005     ;  Roughness of wetted hole surface                   [mm]           
Ghcq      0.7   ; Flow coefficient (CQ)for fully dev. turb. flow           
Suff     .01    ; Gate seal U-seal flow factor.            
Scff     .05    ; Gate seal flow factor           
Scrpr   7.19    ; Pressure diff between Prgc and Prup or Prdo causing ...           
Vgc      3    ; Pressurized volume in gate cavity            
Sdf       3     ; Stem Seal dynamic friction factor.        [%]           
Msdf      0.06  ; Min dynamic friction in Stem seal.        [kN]           
Ssf       6     ; Stem packing seal static friction factor  [%]           
Mssf      0.09  ; Min static friction in Stem Packing Seal  [kN]           
Gdf       12     ; Gate Seat dynamic friction factor.   [%]           
Mgdf      0.42   ; Min dynamic friction in Gate Seals   [kN]           
Gsf       14     ; Gate Seal static friction factor     [%]           
Mgsf      0.83   ; Min static friction in Gate Seals    [kN]           
Bsf       2.084  ; Average Belville spring force        [kN]           
Spfric    0     ; Spring friction loss                 [%]           
EXHAUST_VALVE T-Ev
  Tree         1
  Template     E
  Function     0x2004
  Cr                             41.0               
  Inc                               3.0     
  Qref                             0.10     
  Tau                             0.010     
  Rh                               10.0     

;;; A ball valve described by actuator piston area, ball angle; 0 dgr: fully closed, 90 dgr: fully open
ACTUATOR     A
  Type         BVFO_Perar_10"-BV-405_bar-6.435L
  Tree         1
  Template     E
  Function     0x65
  Pdia                              0.0   
  Msdia                             0.0   
Sc  1420   ;[kN/m] Actuator spring constant.     
Spre  0.25   ;[m] Actuator spring precompression.     
Mass  400.0  ;[kg] Actuator accelerated assembly mass.     
Smax  0.133 ;[m] Actuator maximum stroke.     
Voc  8.785  ;[l] Pressurized volume in Actuator opening cavity.     
  Vsdia                             0.0   
  Cvrhp_a                         35330        
  Cvrha_r                         430.0   
Df  13   ;[%] Dynamic friction in Actuator assembly.     
Mdf  30  ;[kN] Minimum dynamic friction in Actuator assembly.     
Sf  15   ;[%] Static friction in the Ball Valve Actuator assembly.     
Msf  35   ;[kN] Minimum static friction in Actuator assembly.     
Ld  50.0   ;[kNs/m] Actuator assembly velocity dampening.     
Vlim  2.0e-4 ;[m/s] Ball Valve Actuator piston velocity at which transition between dynamic and static friction starts.     
Adf  1.8   ; Actuator acceleration dampening.     
Aopen 48381 ;[mm2] Pro acts on Actuator piston area Aopen.     
Aamb  48381 ;[mm2] Prc acts on Actuator piston area AAmb.     

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     E
  Function     0x1065
  Plugs        1
  Form         1
  Diameter                        6.220   
  Length                         100.0             
  Nplugs                            1.0   
  Rn                            1.50e-3   
  Rhup                            35330   
  Rhdo                             30.0   
  Hdiff                             0.0   
  Trnum                           2300.   
  Beta                            24000   
  Binc                              0.0   
  Bexp                              0.0   
  VEcorr                            1.0   
  Mwp                             300.0   

;;; Subsea Control Module
SCM          S
  Tree         1
  Template     A
  Function     0x3
  Depth                           2100.       
  Cv_fwr                          0.250  
  Cv_fwq                         6.0e-3  
  Svol                              4.0  
  Rvol                              4.0  
  PPrup                          600.0            
  PPrdo                          600.0            
  Cvrhp_a                           0.0  

;;; Xmas tree return manifold
MANIFOLD     T
  Tree         1
  Template     A
  Function     0x2004
  Depth                           2100.       
  Volume                         40.0            
  AssistFlowGain                   0.20  
EXHAUST_VALVE T-Ev
  Tree         1
  Template     A
  Function     0x2004
  Cr                             41.0            
  Inc                               3.0  
  Qref                             0.10  
  Tau                             0.010  
  Rh                               10.0  

;;; Xmas-tree bladder
BLADDER      T-Bl
  Tree         1
  Template     A
  Function     0x2004
  Vmax                           40.0            
  Vmin                             0.10  
  Dia                              11.0  
  Len                               5.0  
  Rh                               20.0  
  In_vol                         40.0            

;;; SCM supply line
LINE         Ss
  Type         Constant
  Tree         1
  Template     A
  Function     0x1003
  Plugs        4
  Form         1
  Diameter                        12.70  
  Length                         320.0            
  Nplugs                         4.0            
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
  Template     A
  Function     0x2004
  Plugs        1
  Form         1
  Diameter                         9.40  
  Length                            7.0  
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

;;; Fail close valves
ACTUATOR     A
  Type         FC_FMC-AH700_5"-GV-690_bar-2.9_L
  Tree         1
  Template     A
  Function     0x15
Pdia      162    ; Actuator piston diameter       [mm]   
Msdia     47.64      ; Middle (piston) stem diameter  [mm]   
Sc        598.6     ; Actuator spring constant        [kN/m]   
Spre      0.206     ; Spring pretension             [m]   
Mass      400        ; Mass of accelerated components  [kg]   
Smax      0.1537     ; Actuator stroke.               [m]   
Voc       2.9        ; Pressurized volume in opening cavity    [l]   
Vsdia     53.9       ; Valve (bonnet) stem diameter   [mm]   
  Cvrhp_a                         2030.  
  Cvrha_r                         430.0  
Df        1             ; Actuator Seal dynamic (colomb) friction factor.                                                                                                                                                                                      
Mdf       1.967          ; Min dynamic friction in actuator seals.           [kN]   
Sf        2            ; Actuator Seal static (stiction) friction factor  [%]   
Msf       2.295          ; Min static friction in actuator seals.           [kN]   
Ld        10            ; Linear damping of actuator.   
Vlim      0.0002         ; Velocity limit between stiction and colomb fric [m/s]   
Adf       2     ; Acceleration damping factor    
Psl       12.7        ; piston seal width                    [mm]   
Vsl       9.525          ; valve stem seal width                [mm]   
Mssl      9.525          ; Middle stem seal width               [mm]   
Osdia     47.64          ; Overide (upper) stem diameter                [mm]   
Ossl      9.525          ; Overide stem seal width              [mm]   
Vcc        3             ; Pressurized volume in closing cavity [l]   
Vssl      47.8          ; Valve stem seal width                [mm]   
Sodia     143,7         ; Gate seat OD           [mm]   
Sidia     131         ; Gate seat ID           [mm]   
Sw        18.52          ; Gate seat face width   [mm]   
Gcop      22.7          ; Gate crack open point  [mm]   
Bsdia     0.0             ; Balance stem diameter   
Ghdia    6   ; Gate hole (btwn process bore and gate cavity) diameter [mm]   
Ghlen    20.  ; Total hole length.                                    [mm]   
Ghrn   .005     ;  Roughness of wetted hole surface                   [mm]   
Ghcq      0.7   ; Flow coefficient (CQ)for fully dev. turb. flow   
Suff     .01    ; Gate seal U-seal flow factor.    
Scff     .05    ; Gate seal flow factor   
Scrpr   7.19    ; Pressure diff between Prgc and Prup or Prdo causing ...   
Vgc      3    ; Pressurized volume in gate cavity    
Sdf       3     ; Stem Seal dynamic friction factor.        [%]   
Msdf      0.06  ; Min dynamic friction in Stem seal.        [kN]   
Ssf       6     ; Stem packing seal static friction factor  [%]   
Mssf      0.09  ; Min static friction in Stem Packing Seal  [kN]   
Gdf       12     ; Gate Seat dynamic friction factor.   [%]   
Mgdf      0.42   ; Min dynamic friction in Gate Seals   [kN]   
Gsf       14     ; Gate Seal static friction factor     [%]   
Mgsf      0.83   ; Min static friction in Gate Seals    [kN]   
Bsf       2.084  ; Average Belville spring force        [kN]   
Spfric    0     ; Spring friction loss                 [%]   

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     A
  Function     0x1015
  Plugs        1
  Form         1
  Diameter                        6.220  
  Length                            5.0  
  Nplugs                            1.0  
  Rn                            1.50e-3  
  Rhup                            2030.  
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
  Diameter                        6.220  
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

;;; Fail close valves
ACTUATOR     A
  Type         FC_FMC-AH700_5"-GV-690_bar-2.9_L
  Tree         1
  Template     A
  Function     0x25
Pdia      162    ; Actuator piston diameter       [mm]   
Msdia     47.64      ; Middle (piston) stem diameter  [mm]   
Sc        598.6     ; Actuator spring constant        [kN/m]   
Spre      0.206     ; Spring pretension             [m]   
Mass      400        ; Mass of accelerated components  [kg]   
Smax      0.1537     ; Actuator stroke.               [m]   
Voc       2.9        ; Pressurized volume in opening cavity    [l]   
Vsdia     53.9       ; Valve (bonnet) stem diameter   [mm]   
  Cvrhp_a                         2030.  
  Cvrha_r                         430.0  
Df        1             ; Actuator Seal dynamic (colomb) friction factor.                                                                                                                                                                                      
Mdf       1.967          ; Min dynamic friction in actuator seals.           [kN]   
Sf        2            ; Actuator Seal static (stiction) friction factor  [%]   
Msf       2.295          ; Min static friction in actuator seals.           [kN]   
Ld        10            ; Linear damping of actuator.   
Vlim      0.0002         ; Velocity limit between stiction and colomb fric [m/s]   
Adf       2     ; Acceleration damping factor    
Psl       12.7        ; piston seal width                    [mm]   
Vsl       9.525          ; valve stem seal width                [mm]   
Mssl      9.525          ; Middle stem seal width               [mm]   
Osdia     47.64          ; Overide (upper) stem diameter                [mm]   
Ossl      9.525          ; Overide stem seal width              [mm]   
Vcc        3             ; Pressurized volume in closing cavity [l]   
Vssl      47.8          ; Valve stem seal width                [mm]   
Sodia     143,7         ; Gate seat OD           [mm]   
Sidia     131         ; Gate seat ID           [mm]   
Sw        18.52          ; Gate seat face width   [mm]   
Gcop      22.7          ; Gate crack open point  [mm]   
Bsdia     0.0             ; Balance stem diameter   
Ghdia    6   ; Gate hole (btwn process bore and gate cavity) diameter [mm]   
Ghlen    20.  ; Total hole length.                                    [mm]   
Ghrn   .005     ;  Roughness of wetted hole surface                   [mm]   
Ghcq      0.7   ; Flow coefficient (CQ)for fully dev. turb. flow   
Suff     .01    ; Gate seal U-seal flow factor.    
Scff     .05    ; Gate seal flow factor   
Scrpr   7.19    ; Pressure diff between Prgc and Prup or Prdo causing ...   
Vgc      3    ; Pressurized volume in gate cavity    
Sdf       3     ; Stem Seal dynamic friction factor.        [%]   
Msdf      0.06  ; Min dynamic friction in Stem seal.        [kN]   
Ssf       6     ; Stem packing seal static friction factor  [%]   
Mssf      0.09  ; Min static friction in Stem Packing Seal  [kN]   
Gdf       12     ; Gate Seat dynamic friction factor.   [%]   
Mgdf      0.42   ; Min dynamic friction in Gate Seals   [kN]   
Gsf       14     ; Gate Seal static friction factor     [%]   
Mgsf      0.83   ; Min static friction in Gate Seals    [kN]   
Bsf       2.084  ; Average Belville spring force        [kN]   
Spfric    0     ; Spring friction loss                 [%]   

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     A
  Function     0x1025
  Plugs        1
  Form         1
  Diameter                        6.220  
  Length                            5.0  
  Nplugs                            1.0  
  Rn                            1.50e-3  
  Rhup                            2030.  
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
  Function     0x2025
  Plugs        1
  Form         1
  Diameter                        6.220  
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

;;; Fail close valves
ACTUATOR     A
  Type         FC_FMC-AH700_5"-GV-690_bar-2.9_L
  Tree         1
  Template     A
  Function     0x35
Pdia      162    ; Actuator piston diameter       [mm]   
Msdia     47.64      ; Middle (piston) stem diameter  [mm]   
Sc        598.6     ; Actuator spring constant        [kN/m]   
Spre      0.206     ; Spring pretension             [m]   
Mass      400        ; Mass of accelerated components  [kg]   
Smax      0.1537     ; Actuator stroke.               [m]   
Voc       2.9        ; Pressurized volume in opening cavity    [l]   
Vsdia     53.9       ; Valve (bonnet) stem diameter   [mm]   
  Cvrhp_a                         2030.  
  Cvrha_r                         430.0  
Df        1             ; Actuator Seal dynamic (colomb) friction factor.                                                                                                                                                                                      
Mdf       1.967          ; Min dynamic friction in actuator seals.           [kN]   
Sf        2            ; Actuator Seal static (stiction) friction factor  [%]   
Msf       2.295          ; Min static friction in actuator seals.           [kN]   
Ld        10            ; Linear damping of actuator.   
Vlim      0.0002         ; Velocity limit between stiction and colomb fric [m/s]   
Adf       2     ; Acceleration damping factor    
Psl       12.7        ; piston seal width                    [mm]   
Vsl       9.525          ; valve stem seal width                [mm]   
Mssl      9.525          ; Middle stem seal width               [mm]   
Osdia     47.64          ; Overide (upper) stem diameter                [mm]   
Ossl      9.525          ; Overide stem seal width              [mm]   
Vcc        3             ; Pressurized volume in closing cavity [l]   
Vssl      47.8          ; Valve stem seal width                [mm]   
Sodia     143,7         ; Gate seat OD           [mm]   
Sidia     131         ; Gate seat ID           [mm]   
Sw        18.52          ; Gate seat face width   [mm]   
Gcop      22.7          ; Gate crack open point  [mm]   
Bsdia     0.0             ; Balance stem diameter   
Ghdia    6   ; Gate hole (btwn process bore and gate cavity) diameter [mm]   
Ghlen    20.  ; Total hole length.                                    [mm]   
Ghrn   .005     ;  Roughness of wetted hole surface                   [mm]   
Ghcq      0.7   ; Flow coefficient (CQ)for fully dev. turb. flow   
Suff     .01    ; Gate seal U-seal flow factor.    
Scff     .05    ; Gate seal flow factor   
Scrpr   7.19    ; Pressure diff between Prgc and Prup or Prdo causing ...   
Vgc      3    ; Pressurized volume in gate cavity    
Sdf       3     ; Stem Seal dynamic friction factor.        [%]   
Msdf      0.06  ; Min dynamic friction in Stem seal.        [kN]   
Ssf       6     ; Stem packing seal static friction factor  [%]   
Mssf      0.09  ; Min static friction in Stem Packing Seal  [kN]   
Gdf       12     ; Gate Seat dynamic friction factor.   [%]   
Mgdf      0.42   ; Min dynamic friction in Gate Seals   [kN]   
Gsf       14     ; Gate Seal static friction factor     [%]   
Mgsf      0.83   ; Min static friction in Gate Seals    [kN]   
Bsf       2.084  ; Average Belville spring force        [kN]   
Spfric    0     ; Spring friction loss                 [%]   

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     A
  Function     0x1035
  Plugs        1
  Form         1
  Diameter                        6.220  
  Length                            5.0  
  Nplugs                            1.0  
  Rn                            1.50e-3  
  Rhup                            2030.  
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
  Function     0x2035
  Plugs        1
  Form         1
  Diameter                        6.220  
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

;;; Fail close valves
ACTUATOR     A
  Type         FC_FMC-AH700_2"-GV-690_bar-0.42_L
  Tree         1
  Template     A
  Function     0x45
Pdia      96.5     ; Actuator piston diameter       [mm]   
Msdia     28.45      ; Middle (piston) stem diameter  [mm]   
Sc        430     ; Actuator spring constant        [kN/m]   
Spre      0.0922     ; Spring pretension             [m]   
Mass      100        ; Mass of accelerated components  [kg]   
Smax      0.0645     ; Actuator stroke.               [m]   
Voc       2       ; Pressurized volume in opening cavity    [l]   
Vsdia     28.5      ; Valve (bonnet) stem diameter   [mm]   
  Cvrhp_a                         2030.  
  Cvrha_r                         430.0  
Df        13             ; Actuator Seal dynamic (colomb) friction factor.  [%]   
Mdf       0.14          ; Min dynamic friction in actuator seals.           [kN]   
Sf        15            ; Actuator Seal static (stiction) friction factor  [%]   
Msf       0.34          ; Min static friction in actuator seals.           [kN]   
Ld        10            ; Linear damping of actuator.   
Vlim      0.0002         ; Velocity limit between stiction and colomb fric [m/s]   
Adf       1.8     ; Acceleration damping factor    
Psl       15.74        ; piston seal width                    [mm]   
Vsl       47.78          ; valve stem seal width                [mm]   
Mssl      47.3          ; Middle stem seal width               [mm]   
Osdia     28.5        ; Overide (upper) stem diameter                [mm]   
Ossl      22.23          ; Overide stem seal width              [mm]   
Vcc        2             ; Pressurized volume in closing cavity [l]   
Vssl      47.8          ; Valve stem seal width                [mm]   
Sodia     88.33         ; Gate seat OD           [mm]   
Sidia     52.81         ; Gate seat ID           [mm]   
Sw         7.51         ; Gate seat face width   [mm]   
Gcop      11.3          ; Gate crack open point  [mm]   
Bsdia     0.0             ; Balance stem diameter   
Ghdia    4   ; Gate hole (btwn process bore and gate cavity) diameter [mm]   
Ghlen    10.  ; Total hole length.                                    [mm]   
Ghrn   .005     ;  Roughness of wetted hole surface                   [mm]   
Ghcq      0.7   ; Flow coefficient (CQ)for fully dev. turb. flow   
Suff     .005    ; Gate seal U-seal flow factor.    
Scff     .002    ; Gate seal flow factor   
Scrpr   10.56    ; Pressure diff between Prgc and Prup or Prdo causing ...   
Vgc      4.0    ; Pressurized volume in gate cavity    
Sdf       4     ; Stem Seal dynamic friction factor.        [%]   
Msdf      0.06  ; Min dynamic friction in Stem seal.        [kN]   
Ssf       6     ; Stem packing seal static friction factor  [%]   
Mssf      0.09  ; Min static friction in Stem Packing Seal  [kN]   
Gdf       10     ; Gate Seat dynamic friction factor.   
Mgdf      0.42   ; Min dynamic friction in Gate Seals   
Gsf       20     ; Gate Seal static friction factor   
Mgsf      0.83   ; Min static friction in Gate Seals   
Bsf       2.084  ; Average Belville spring force                [kN]   
Spfric    4.     ; Spring friction loss                         [%]   

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     A
  Function     0x1045
  Plugs        1
  Form         1
  Diameter                        6.220  
  Length                            5.0  
  Nplugs                            1.0  
  Rn                            1.50e-3  
  Rhup                            2030.  
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
  Function     0x2045
  Plugs        1
  Form         1
  Diameter                        6.220  
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

;;; Fail close valves
ACTUATOR     A
  Type         FC_FMC-AH700_2"-GV-690_bar-0.42_L
  Tree         1
  Template     A
  Function     0x55
Pdia      96.5     ; Actuator piston diameter       [mm]   
Msdia     28.45      ; Middle (piston) stem diameter  [mm]   
Sc        430     ; Actuator spring constant        [kN/m]   
Spre      0.0922     ; Spring pretension             [m]   
Mass      100        ; Mass of accelerated components  [kg]   
Smax      0.0645     ; Actuator stroke.               [m]   
Voc       2       ; Pressurized volume in opening cavity    [l]   
Vsdia     28.5      ; Valve (bonnet) stem diameter   [mm]   
  Cvrhp_a                         2030.  
  Cvrha_r                         430.0  
Df        13             ; Actuator Seal dynamic (colomb) friction factor.  [%]   
Mdf       0.14          ; Min dynamic friction in actuator seals.           [kN]   
Sf        15            ; Actuator Seal static (stiction) friction factor  [%]   
Msf       0.34          ; Min static friction in actuator seals.           [kN]   
Ld        10            ; Linear damping of actuator.   
Vlim      0.0002         ; Velocity limit between stiction and colomb fric [m/s]   
Adf       1.8     ; Acceleration damping factor    
Psl       15.74        ; piston seal width                    [mm]   
Vsl       47.78          ; valve stem seal width                [mm]   
Mssl      47.3          ; Middle stem seal width               [mm]   
Osdia     28.5        ; Overide (upper) stem diameter                [mm]   
Ossl      22.23          ; Overide stem seal width              [mm]   
Vcc        2             ; Pressurized volume in closing cavity [l]   
Vssl      47.8          ; Valve stem seal width                [mm]   
Sodia     88.33         ; Gate seat OD           [mm]   
Sidia     52.81         ; Gate seat ID           [mm]   
Sw         7.51         ; Gate seat face width   [mm]   
Gcop      11.3          ; Gate crack open point  [mm]   
Bsdia     0.0             ; Balance stem diameter   
Ghdia    4   ; Gate hole (btwn process bore and gate cavity) diameter [mm]   
Ghlen    10.  ; Total hole length.                                    [mm]   
Ghrn   .005     ;  Roughness of wetted hole surface                   [mm]   
Ghcq      0.7   ; Flow coefficient (CQ)for fully dev. turb. flow   
Suff     .005    ; Gate seal U-seal flow factor.    
Scff     .002    ; Gate seal flow factor   
Scrpr   10.56    ; Pressure diff between Prgc and Prup or Prdo causing ...   
Vgc      4.0    ; Pressurized volume in gate cavity    
Sdf       4     ; Stem Seal dynamic friction factor.        [%]   
Msdf      0.06  ; Min dynamic friction in Stem seal.        [kN]   
Ssf       6     ; Stem packing seal static friction factor  [%]   
Mssf      0.09  ; Min static friction in Stem Packing Seal  [kN]   
Gdf       10     ; Gate Seat dynamic friction factor.   
Mgdf      0.42   ; Min dynamic friction in Gate Seals   
Gsf       20     ; Gate Seal static friction factor   
Mgsf      0.83   ; Min static friction in Gate Seals   
Bsf       2.084  ; Average Belville spring force                [kN]   
Spfric    4.     ; Spring friction loss                         [%]   

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     A
  Function     0x1055
  Plugs        1
  Form         1
  Diameter                        6.220  
  Length                            5.0  
  Nplugs                            1.0  
  Rn                            1.50e-3  
  Rhup                            2030.  
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
  Function     0x2055
  Plugs        1
  Form         1
  Diameter                        6.220  
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

;;; A ball valve described by actuator piston area, ball angle; 0 dgr: fully closed, 90 dgr: fully open
ACTUATOR     A
  Type         BVFO_Perar_10"-BV-405_bar-6.435L
  Tree         1
  Template     A
  Function     0x65
  Pdia                              0.0  
  Msdia                             0.0  
Sc  1420   ;[kN/m] Actuator spring constant.    
Spre  0.25   ;[m] Actuator spring precompression.    
Mass  400.0  ;[kg] Actuator accelerated assembly mass.    
Smax  0.133 ;[m] Actuator maximum stroke.    
Voc  8.785  ;[l] Pressurized volume in Actuator opening cavity.    
  Vsdia                             0.0  
  Cvrhp_a                         35330       
  Cvrha_r                         430.0  
Df  13   ;[%] Dynamic friction in Actuator assembly.    
Mdf  30  ;[kN] Minimum dynamic friction in Actuator assembly.    
Sf  15   ;[%] Static friction in the Ball Valve Actuator assembly.    
Msf  35   ;[kN] Minimum static friction in Actuator assembly.    
Ld  50.0   ;[kNs/m] Actuator assembly velocity dampening.    
Vlim  2.0e-4 ;[m/s] Ball Valve Actuator piston velocity at which transition between dynamic and static friction starts.    
Adf  1.8   ; Actuator acceleration dampening.    
Aopen 48381 ;[mm2] Pro acts on Actuator piston area Aopen.    
Aamb  48381 ;[mm2] Prc acts on Actuator piston area AAmb.    

;;; Actuator open line
LINE         Ao
  Type         Constant
  Tree         1
  Template     A
  Function     0x1065
  Plugs        2
  Form         1
  Diameter                        6.220  
  Length                         200.0            
  Nplugs                         2.0            
  Rn                            1.50e-3  
  Rhup                            35330       
  Rhdo                             30.0  
  Hdiff                             0.0  
  Trnum                           2300.  
  Beta                            24000  
  Binc                              0.0  
  Bexp                              0.0  
  VEcorr                            1.0  
  Mwp                             300.0  

;;; Subsea Control Module
SCM          S
  Tree         1
  Template     B
  Function     0x3
  Depth                           2100.       
  Cv_fwr                          0.250  
  Cv_fwq                         6.0e-3  
  Svol                              4.0  
  Rvol                              4.0  
  PPrup                          600.0            
  PPrdo                          600.0            
  Cvrhp_a                           0.0  

;;; Xmas tree return manifold
MANIFOLD     T
  Tree         1
  Template     B
  Function     0x2004
  Depth                           2100.       
  Volume                         40.0            
  AssistFlowGain                   0.20  
EXHAUST_VALVE T-Ev
  Tree         1
  Template     B
  Function     0x2004
  Cr                             41.0            
  Inc                               3.0  
  Qref                             0.10  
  Tau                             0.010  
  Rh                               10.0  

;;; Xmas-tree bladder
BLADDER      T-Bl
  Tree         1
  Template     B
  Function     0x2004
  Vmax                           40.0            
  Vmin                             0.10  
  Dia                              11.0  
  Len                               5.0  
  Rh                               20.0  
  In_vol                         40.0            

;;; SCM supply line
LINE         Ss
  Type         Constant
  Tree         1
  Template     B
  Function     0x1003
  Plugs        17
  Form         1
  Diameter                        12.70  
  Length                          1700.       
  Nplugs                         17.0            
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
  Diameter                         9.40  
  Length                            7.0  
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

;;; Fail close valves
ACTUATOR     A
  Type         FC_FMC-AH700_5"-GV-690_bar-2.9_L
  Tree         1
  Template     B
  Function     0x15
Pdia      162    ; Actuator piston diameter       [mm]   
Msdia     47.64      ; Middle (piston) stem diameter  [mm]   
Sc        598.6     ; Actuator spring constant        [kN/m]   
Spre      0.206     ; Spring pretension             [m]   
Mass      400        ; Mass of accelerated components  [kg]   
Smax      0.1537     ; Actuator stroke.               [m]   
Voc       2.9        ; Pressurized volume in opening cavity    [l]   
Vsdia     53.9       ; Valve (bonnet) stem diameter   [mm]   
  Cvrhp_a                         2030.  
  Cvrha_r                         430.0  
Df        1             ; Actuator Seal dynamic (colomb) friction factor.                                                                                                                                                                                      
Mdf       1.967          ; Min dynamic friction in actuator seals.           [kN]   
Sf        2            ; Actuator Seal static (stiction) friction factor  [%]   
Msf       2.295          ; Min static friction in actuator seals.           [kN]   
Ld        10            ; Linear damping of actuator.   
Vlim      0.0002         ; Velocity limit between stiction and colomb fric [m/s]   
Adf       2     ; Acceleration damping factor    
Psl       12.7        ; piston seal width                    [mm]   
Vsl       9.525          ; valve stem seal width                [mm]   
Mssl      9.525          ; Middle stem seal width               [mm]   
Osdia     47.64          ; Overide (upper) stem diameter                [mm]   
Ossl      9.525          ; Overide stem seal width              [mm]   
Vcc        3             ; Pressurized volume in closing cavity [l]   
Vssl      47.8          ; Valve stem seal width                [mm]   
Sodia     143,7         ; Gate seat OD           [mm]   
Sidia     131         ; Gate seat ID           [mm]   
Sw        18.52          ; Gate seat face width   [mm]   
Gcop      22.7          ; Gate crack open point  [mm]   
Bsdia     0.0             ; Balance stem diameter   
Ghdia    6   ; Gate hole (btwn process bore and gate cavity) diameter [mm]   
Ghlen    20.  ; Total hole length.                                    [mm]   
Ghrn   .005     ;  Roughness of wetted hole surface                   [mm]   
Ghcq      0.7   ; Flow coefficient (CQ)for fully dev. turb. flow   
Suff     .01    ; Gate seal U-seal flow factor.    
Scff     .05    ; Gate seal flow factor   
Scrpr   7.19    ; Pressure diff between Prgc and Prup or Prdo causing ...   
Vgc      3    ; Pressurized volume in gate cavity    
Sdf       3     ; Stem Seal dynamic friction factor.        [%]   
Msdf      0.06  ; Min dynamic friction in Stem seal.        [kN]   
Ssf       6     ; Stem packing seal static friction factor  [%]   
Mssf      0.09  ; Min static friction in Stem Packing Seal  [kN]   
Gdf       12     ; Gate Seat dynamic friction factor.   [%]   
Mgdf      0.42   ; Min dynamic friction in Gate Seals   [kN]   
Gsf       14     ; Gate Seal static friction factor     [%]   
Mgsf      0.83   ; Min static friction in Gate Seals    [kN]   
Bsf       2.084  ; Average Belville spring force        [kN]   
Spfric    0     ; Spring friction loss                 [%]   

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     B
  Function     0x1015
  Plugs        1
  Form         1
  Diameter                        6.220  
  Length                            5.0  
  Nplugs                            1.0  
  Rn                            1.50e-3  
  Rhup                            2030.  
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
  Diameter                        6.220  
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

;;; Fail close valves
ACTUATOR     A
  Type         FC_FMC-AH700_5"-GV-690_bar-2.9_L
  Tree         1
  Template     B
  Function     0x25
Pdia      162    ; Actuator piston diameter       [mm]   
Msdia     47.64      ; Middle (piston) stem diameter  [mm]   
Sc        598.6     ; Actuator spring constant        [kN/m]   
Spre      0.206     ; Spring pretension             [m]   
Mass      400        ; Mass of accelerated components  [kg]   
Smax      0.1537     ; Actuator stroke.               [m]   
Voc       2.9        ; Pressurized volume in opening cavity    [l]   
Vsdia     53.9       ; Valve (bonnet) stem diameter   [mm]   
  Cvrhp_a                         2030.  
  Cvrha_r                         430.0  
Df        1             ; Actuator Seal dynamic (colomb) friction factor.                                                                                                                                                                                      
Mdf       1.967          ; Min dynamic friction in actuator seals.           [kN]   
Sf        2            ; Actuator Seal static (stiction) friction factor  [%]   
Msf       2.295          ; Min static friction in actuator seals.           [kN]   
Ld        10            ; Linear damping of actuator.   
Vlim      0.0002         ; Velocity limit between stiction and colomb fric [m/s]   
Adf       2     ; Acceleration damping factor    
Psl       12.7        ; piston seal width                    [mm]   
Vsl       9.525          ; valve stem seal width                [mm]   
Mssl      9.525          ; Middle stem seal width               [mm]   
Osdia     47.64          ; Overide (upper) stem diameter                [mm]   
Ossl      9.525          ; Overide stem seal width              [mm]   
Vcc        3             ; Pressurized volume in closing cavity [l]   
Vssl      47.8          ; Valve stem seal width                [mm]   
Sodia     143,7         ; Gate seat OD           [mm]   
Sidia     131         ; Gate seat ID           [mm]   
Sw        18.52          ; Gate seat face width   [mm]   
Gcop      22.7          ; Gate crack open point  [mm]   
Bsdia     0.0             ; Balance stem diameter   
Ghdia    6   ; Gate hole (btwn process bore and gate cavity) diameter [mm]   
Ghlen    20.  ; Total hole length.                                    [mm]   
Ghrn   .005     ;  Roughness of wetted hole surface                   [mm]   
Ghcq      0.7   ; Flow coefficient (CQ)for fully dev. turb. flow   
Suff     .01    ; Gate seal U-seal flow factor.    
Scff     .05    ; Gate seal flow factor   
Scrpr   7.19    ; Pressure diff between Prgc and Prup or Prdo causing ...   
Vgc      3    ; Pressurized volume in gate cavity    
Sdf       3     ; Stem Seal dynamic friction factor.        [%]   
Msdf      0.06  ; Min dynamic friction in Stem seal.        [kN]   
Ssf       6     ; Stem packing seal static friction factor  [%]   
Mssf      0.09  ; Min static friction in Stem Packing Seal  [kN]   
Gdf       12     ; Gate Seat dynamic friction factor.   [%]   
Mgdf      0.42   ; Min dynamic friction in Gate Seals   [kN]   
Gsf       14     ; Gate Seal static friction factor     [%]   
Mgsf      0.83   ; Min static friction in Gate Seals    [kN]   
Bsf       2.084  ; Average Belville spring force        [kN]   
Spfric    0     ; Spring friction loss                 [%]   

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     B
  Function     0x1025
  Plugs        1
  Form         1
  Diameter                        6.220  
  Length                            5.0  
  Nplugs                            1.0  
  Rn                            1.50e-3  
  Rhup                            2030.  
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
  Function     0x2025
  Plugs        1
  Form         1
  Diameter                        6.220  
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

;;; Fail close valves
ACTUATOR     A
  Type         FC_FMC-AH700_5"-GV-690_bar-2.9_L
  Tree         1
  Template     B
  Function     0x35
Pdia      162    ; Actuator piston diameter       [mm]   
Msdia     47.64      ; Middle (piston) stem diameter  [mm]   
Sc        598.6     ; Actuator spring constant        [kN/m]   
Spre      0.206     ; Spring pretension             [m]   
Mass      400        ; Mass of accelerated components  [kg]   
Smax      0.1537     ; Actuator stroke.               [m]   
Voc       2.9        ; Pressurized volume in opening cavity    [l]   
Vsdia     53.9       ; Valve (bonnet) stem diameter   [mm]   
  Cvrhp_a                         2030.  
  Cvrha_r                         430.0  
Df        1             ; Actuator Seal dynamic (colomb) friction factor.                                                                                                                                                                                      
Mdf       1.967          ; Min dynamic friction in actuator seals.           [kN]   
Sf        2            ; Actuator Seal static (stiction) friction factor  [%]   
Msf       2.295          ; Min static friction in actuator seals.           [kN]   
Ld        10            ; Linear damping of actuator.   
Vlim      0.0002         ; Velocity limit between stiction and colomb fric [m/s]   
Adf       2     ; Acceleration damping factor    
Psl       12.7        ; piston seal width                    [mm]   
Vsl       9.525          ; valve stem seal width                [mm]   
Mssl      9.525          ; Middle stem seal width               [mm]   
Osdia     47.64          ; Overide (upper) stem diameter                [mm]   
Ossl      9.525          ; Overide stem seal width              [mm]   
Vcc        3             ; Pressurized volume in closing cavity [l]   
Vssl      47.8          ; Valve stem seal width                [mm]   
Sodia     143,7         ; Gate seat OD           [mm]   
Sidia     131         ; Gate seat ID           [mm]   
Sw        18.52          ; Gate seat face width   [mm]   
Gcop      22.7          ; Gate crack open point  [mm]   
Bsdia     0.0             ; Balance stem diameter   
Ghdia    6   ; Gate hole (btwn process bore and gate cavity) diameter [mm]   
Ghlen    20.  ; Total hole length.                                    [mm]   
Ghrn   .005     ;  Roughness of wetted hole surface                   [mm]   
Ghcq      0.7   ; Flow coefficient (CQ)for fully dev. turb. flow   
Suff     .01    ; Gate seal U-seal flow factor.    
Scff     .05    ; Gate seal flow factor   
Scrpr   7.19    ; Pressure diff between Prgc and Prup or Prdo causing ...   
Vgc      3    ; Pressurized volume in gate cavity    
Sdf       3     ; Stem Seal dynamic friction factor.        [%]   
Msdf      0.06  ; Min dynamic friction in Stem seal.        [kN]   
Ssf       6     ; Stem packing seal static friction factor  [%]   
Mssf      0.09  ; Min static friction in Stem Packing Seal  [kN]   
Gdf       12     ; Gate Seat dynamic friction factor.   [%]   
Mgdf      0.42   ; Min dynamic friction in Gate Seals   [kN]   
Gsf       14     ; Gate Seal static friction factor     [%]   
Mgsf      0.83   ; Min static friction in Gate Seals    [kN]   
Bsf       2.084  ; Average Belville spring force        [kN]   
Spfric    0     ; Spring friction loss                 [%]   

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     B
  Function     0x1035
  Plugs        1
  Form         1
  Diameter                        6.220  
  Length                            5.0  
  Nplugs                            1.0  
  Rn                            1.50e-3  
  Rhup                            2030.  
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
  Function     0x2035
  Plugs        1
  Form         1
  Diameter                        6.220  
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

;;; Fail close valves
ACTUATOR     A
  Type         FC_FMC-AH700_2"-GV-690_bar-0.42_L
  Tree         1
  Template     B
  Function     0x45
Pdia      96.5     ; Actuator piston diameter       [mm]   
Msdia     28.45      ; Middle (piston) stem diameter  [mm]   
Sc        430     ; Actuator spring constant        [kN/m]   
Spre      0.0922     ; Spring pretension             [m]   
Mass      100        ; Mass of accelerated components  [kg]   
Smax      0.0645     ; Actuator stroke.               [m]   
Voc       2       ; Pressurized volume in opening cavity    [l]   
Vsdia     28.5      ; Valve (bonnet) stem diameter   [mm]   
  Cvrhp_a                         2030.  
  Cvrha_r                         430.0  
Df        13             ; Actuator Seal dynamic (colomb) friction factor.  [%]   
Mdf       0.14          ; Min dynamic friction in actuator seals.           [kN]   
Sf        15            ; Actuator Seal static (stiction) friction factor  [%]   
Msf       0.34          ; Min static friction in actuator seals.           [kN]   
Ld        10            ; Linear damping of actuator.   
Vlim      0.0002         ; Velocity limit between stiction and colomb fric [m/s]   
Adf       1.8     ; Acceleration damping factor    
Psl       15.74        ; piston seal width                    [mm]   
Vsl       47.78          ; valve stem seal width                [mm]   
Mssl      47.3          ; Middle stem seal width               [mm]   
Osdia     28.5        ; Overide (upper) stem diameter                [mm]   
Ossl      22.23          ; Overide stem seal width              [mm]   
Vcc        2             ; Pressurized volume in closing cavity [l]   
Vssl      47.8          ; Valve stem seal width                [mm]   
Sodia     88.33         ; Gate seat OD           [mm]   
Sidia     52.81         ; Gate seat ID           [mm]   
Sw         7.51         ; Gate seat face width   [mm]   
Gcop      11.3          ; Gate crack open point  [mm]   
Bsdia     0.0             ; Balance stem diameter   
Ghdia    4   ; Gate hole (btwn process bore and gate cavity) diameter [mm]   
Ghlen    10.  ; Total hole length.                                    [mm]   
Ghrn   .005     ;  Roughness of wetted hole surface                   [mm]   
Ghcq      0.7   ; Flow coefficient (CQ)for fully dev. turb. flow   
Suff     .005    ; Gate seal U-seal flow factor.    
Scff     .002    ; Gate seal flow factor   
Scrpr   10.56    ; Pressure diff between Prgc and Prup or Prdo causing ...   
Vgc      4.0    ; Pressurized volume in gate cavity    
Sdf       4     ; Stem Seal dynamic friction factor.        [%]   
Msdf      0.06  ; Min dynamic friction in Stem seal.        [kN]   
Ssf       6     ; Stem packing seal static friction factor  [%]   
Mssf      0.09  ; Min static friction in Stem Packing Seal  [kN]   
Gdf       10     ; Gate Seat dynamic friction factor.   
Mgdf      0.42   ; Min dynamic friction in Gate Seals   
Gsf       20     ; Gate Seal static friction factor   
Mgsf      0.83   ; Min static friction in Gate Seals   
Bsf       2.084  ; Average Belville spring force                [kN]   
Spfric    4.     ; Spring friction loss                         [%]   

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     B
  Function     0x1045
  Plugs        1
  Form         1
  Diameter                        6.220  
  Length                            5.0  
  Nplugs                            1.0  
  Rn                            1.50e-3  
  Rhup                            2030.  
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
  Function     0x2045
  Plugs        1
  Form         1
  Diameter                        6.220  
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

;;; Fail close valves
ACTUATOR     A
  Type         FC_FMC-AH700_2"-GV-690_bar-0.42_L
  Tree         1
  Template     B
  Function     0x55
Pdia      96.5     ; Actuator piston diameter       [mm]   
Msdia     28.45      ; Middle (piston) stem diameter  [mm]   
Sc        430     ; Actuator spring constant        [kN/m]   
Spre      0.0922     ; Spring pretension             [m]   
Mass      100        ; Mass of accelerated components  [kg]   
Smax      0.0645     ; Actuator stroke.               [m]   
Voc       2       ; Pressurized volume in opening cavity    [l]   
Vsdia     28.5      ; Valve (bonnet) stem diameter   [mm]   
  Cvrhp_a                         2030.  
  Cvrha_r                         430.0  
Df        13             ; Actuator Seal dynamic (colomb) friction factor.  [%]   
Mdf       0.14          ; Min dynamic friction in actuator seals.           [kN]   
Sf        15            ; Actuator Seal static (stiction) friction factor  [%]   
Msf       0.34          ; Min static friction in actuator seals.           [kN]   
Ld        10            ; Linear damping of actuator.   
Vlim      0.0002         ; Velocity limit between stiction and colomb fric [m/s]   
Adf       1.8     ; Acceleration damping factor    
Psl       15.74        ; piston seal width                    [mm]   
Vsl       47.78          ; valve stem seal width                [mm]   
Mssl      47.3          ; Middle stem seal width               [mm]   
Osdia     28.5        ; Overide (upper) stem diameter                [mm]   
Ossl      22.23          ; Overide stem seal width              [mm]   
Vcc        2             ; Pressurized volume in closing cavity [l]   
Vssl      47.8          ; Valve stem seal width                [mm]   
Sodia     88.33         ; Gate seat OD           [mm]   
Sidia     52.81         ; Gate seat ID           [mm]   
Sw         7.51         ; Gate seat face width   [mm]   
Gcop      11.3          ; Gate crack open point  [mm]   
Bsdia     0.0             ; Balance stem diameter   
Ghdia    4   ; Gate hole (btwn process bore and gate cavity) diameter [mm]   
Ghlen    10.  ; Total hole length.                                    [mm]   
Ghrn   .005     ;  Roughness of wetted hole surface                   [mm]   
Ghcq      0.7   ; Flow coefficient (CQ)for fully dev. turb. flow   
Suff     .005    ; Gate seal U-seal flow factor.    
Scff     .002    ; Gate seal flow factor   
Scrpr   10.56    ; Pressure diff between Prgc and Prup or Prdo causing ...   
Vgc      4.0    ; Pressurized volume in gate cavity    
Sdf       4     ; Stem Seal dynamic friction factor.        [%]   
Msdf      0.06  ; Min dynamic friction in Stem seal.        [kN]   
Ssf       6     ; Stem packing seal static friction factor  [%]   
Mssf      0.09  ; Min static friction in Stem Packing Seal  [kN]   
Gdf       10     ; Gate Seat dynamic friction factor.   
Mgdf      0.42   ; Min dynamic friction in Gate Seals   
Gsf       20     ; Gate Seal static friction factor   
Mgsf      0.83   ; Min static friction in Gate Seals   
Bsf       2.084  ; Average Belville spring force                [kN]   
Spfric    4.     ; Spring friction loss                         [%]   

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     B
  Function     0x1055
  Plugs        1
  Form         1
  Diameter                        6.220  
  Length                            5.0  
  Nplugs                            1.0  
  Rn                            1.50e-3  
  Rhup                            2030.  
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
  Function     0x2055
  Plugs        1
  Form         1
  Diameter                        6.220  
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

;;; A ball valve described by actuator piston area, ball angle; 0 dgr: fully closed, 90 dgr: fully open
ACTUATOR     A
  Type         BVFO_Perar_10"-BV-405_bar-6.435L
  Tree         1
  Template     B
  Function     0x65
  Pdia                              0.0  
  Msdia                             0.0  
Sc  1420   ;[kN/m] Actuator spring constant.    
Spre  0.25   ;[m] Actuator spring precompression.    
Mass  400.0  ;[kg] Actuator accelerated assembly mass.    
Smax  0.133 ;[m] Actuator maximum stroke.    
Voc  8.785  ;[l] Pressurized volume in Actuator opening cavity.    
  Vsdia                             0.0  
  Cvrhp_a                         35330       
  Cvrha_r                         430.0  
Df  13   ;[%] Dynamic friction in Actuator assembly.    
Mdf  30  ;[kN] Minimum dynamic friction in Actuator assembly.    
Sf  15   ;[%] Static friction in the Ball Valve Actuator assembly.    
Msf  35   ;[kN] Minimum static friction in Actuator assembly.    
Ld  50.0   ;[kNs/m] Actuator assembly velocity dampening.    
Vlim  2.0e-4 ;[m/s] Ball Valve Actuator piston velocity at which transition between dynamic and static friction starts.    
Adf  1.8   ; Actuator acceleration dampening.    
Aopen 48381 ;[mm2] Pro acts on Actuator piston area Aopen.    
Aamb  48381 ;[mm2] Prc acts on Actuator piston area AAmb.    

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     B
  Function     0x1065
  Plugs        1
  Form         1
  Diameter                        6.220  
  Length                          100.0  
  Nplugs                            1.0  
  Rn                            1.50e-3  
  Rhup                            35330       
  Rhdo                             30.0  
  Hdiff                             0.0  
  Trnum                           2300.  
  Beta                            24000  
  Binc                              0.0  
  Bexp                              0.0  
  VEcorr                            1.0  
  Mwp                             300.0  

;;; Subsea Control Module
SCM          S
  Tree         2
  Template     B
  Function     0x3
  Depth                           2100.       
  Cv_fwr                          0.250  
  Cv_fwq                         6.0e-3  
  Svol                              4.0  
  Rvol                              4.0  
  PPrup                          600.0            
  PPrdo                          600.0            
  Cvrhp_a                           0.0  

;;; Xmas tree return manifold
MANIFOLD     T
  Tree         2
  Template     B
  Function     0x2004
  Depth                           2100.       
  Volume                         40.0            
  AssistFlowGain                   0.20  
EXHAUST_VALVE T-Ev
  Tree         2
  Template     B
  Function     0x2004
  Cr                             41.0            
  Inc                               3.0  
  Qref                             0.10  
  Tau                             0.010  
  Rh                               10.0  

;;; Xmas-tree bladder
BLADDER      T-Bl
  Tree         2
  Template     B
  Function     0x2004
  Vmax                           40.0            
  Vmin                             0.10  
  Dia                              11.0  
  Len                               5.0  
  Rh                               20.0  
  In_vol                         40.0            

;;; SCM supply line
LINE         Ss
  Type         Constant
  Tree         2
  Template     B
  Function     0x1003
  Plugs        12
  Form         1
  Diameter                        12.70  
  Length                          1200.       
  Nplugs                         12.0            
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
  Tree         2
  Template     B
  Function     0x2004
  Plugs        1
  Form         1
  Diameter                         9.40  
  Length                            7.0  
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
  Tree         2
  Template     B
  Function     0x3
  Cr                                3.0  
  Inc                               3.0  
  Qref                             0.10  
  Tau                             0.010  
  Rh                               10.0  

;;; Fail close valves
ACTUATOR     A
  Type         FC_FMC-AH700_5"-GV-690_bar-2.9_L
  Tree         2
  Template     B
  Function     0x15
Pdia      162    ; Actuator piston diameter       [mm]   
Msdia     47.64      ; Middle (piston) stem diameter  [mm]   
Sc        598.6     ; Actuator spring constant        [kN/m]   
Spre      0.206     ; Spring pretension             [m]   
Mass      400        ; Mass of accelerated components  [kg]   
Smax      0.1537     ; Actuator stroke.               [m]   
Voc       2.9        ; Pressurized volume in opening cavity    [l]   
Vsdia     53.9       ; Valve (bonnet) stem diameter   [mm]   
  Cvrhp_a                         2030.  
  Cvrha_r                         430.0  
Df        1             ; Actuator Seal dynamic (colomb) friction factor.                                                                                                                                                                                      
Mdf       1.967          ; Min dynamic friction in actuator seals.           [kN]   
Sf        2            ; Actuator Seal static (stiction) friction factor  [%]   
Msf       2.295          ; Min static friction in actuator seals.           [kN]   
Ld        10            ; Linear damping of actuator.   
Vlim      0.0002         ; Velocity limit between stiction and colomb fric [m/s]   
Adf       2     ; Acceleration damping factor    
Psl       12.7        ; piston seal width                    [mm]   
Vsl       9.525          ; valve stem seal width                [mm]   
Mssl      9.525          ; Middle stem seal width               [mm]   
Osdia     47.64          ; Overide (upper) stem diameter                [mm]   
Ossl      9.525          ; Overide stem seal width              [mm]   
Vcc        3             ; Pressurized volume in closing cavity [l]   
Vssl      47.8          ; Valve stem seal width                [mm]   
Sodia     143,7         ; Gate seat OD           [mm]   
Sidia     131         ; Gate seat ID           [mm]   
Sw        18.52          ; Gate seat face width   [mm]   
Gcop      22.7          ; Gate crack open point  [mm]   
Bsdia     0.0             ; Balance stem diameter   
Ghdia    6   ; Gate hole (btwn process bore and gate cavity) diameter [mm]   
Ghlen    20.  ; Total hole length.                                    [mm]   
Ghrn   .005     ;  Roughness of wetted hole surface                   [mm]   
Ghcq      0.7   ; Flow coefficient (CQ)for fully dev. turb. flow   
Suff     .01    ; Gate seal U-seal flow factor.    
Scff     .05    ; Gate seal flow factor   
Scrpr   7.19    ; Pressure diff between Prgc and Prup or Prdo causing ...   
Vgc      3    ; Pressurized volume in gate cavity    
Sdf       3     ; Stem Seal dynamic friction factor.        [%]   
Msdf      0.06  ; Min dynamic friction in Stem seal.        [kN]   
Ssf       6     ; Stem packing seal static friction factor  [%]   
Mssf      0.09  ; Min static friction in Stem Packing Seal  [kN]   
Gdf       12     ; Gate Seat dynamic friction factor.   [%]   
Mgdf      0.42   ; Min dynamic friction in Gate Seals   [kN]   
Gsf       14     ; Gate Seal static friction factor     [%]   
Mgsf      0.83   ; Min static friction in Gate Seals    [kN]   
Bsf       2.084  ; Average Belville spring force        [kN]   
Spfric    0     ; Spring friction loss                 [%]   

;;; Actuator open line
LINE         Ao
  Tree         2
  Template     B
  Function     0x1015
  Plugs        1
  Form         1
  Diameter                        6.220  
  Length                            5.0  
  Nplugs                            1.0  
  Rn                            1.50e-3  
  Rhup                            2030.  
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
  Tree         2
  Template     B
  Function     0x2015
  Plugs        1
  Form         1
  Diameter                        6.220  
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

;;; Fail close valves
ACTUATOR     A
  Type         FC_FMC-AH700_5"-GV-690_bar-2.9_L
  Tree         2
  Template     B
  Function     0x25
Pdia      162    ; Actuator piston diameter       [mm]   
Msdia     47.64      ; Middle (piston) stem diameter  [mm]   
Sc        598.6     ; Actuator spring constant        [kN/m]   
Spre      0.206     ; Spring pretension             [m]   
Mass      400        ; Mass of accelerated components  [kg]   
Smax      0.1537     ; Actuator stroke.               [m]   
Voc       2.9        ; Pressurized volume in opening cavity    [l]   
Vsdia     53.9       ; Valve (bonnet) stem diameter   [mm]   
  Cvrhp_a                         2030.  
  Cvrha_r                         430.0  
Df        1             ; Actuator Seal dynamic (colomb) friction factor.                                                                                                                                                                                      
Mdf       1.967          ; Min dynamic friction in actuator seals.           [kN]   
Sf        2            ; Actuator Seal static (stiction) friction factor  [%]   
Msf       2.295          ; Min static friction in actuator seals.           [kN]   
Ld        10            ; Linear damping of actuator.   
Vlim      0.0002         ; Velocity limit between stiction and colomb fric [m/s]   
Adf       2     ; Acceleration damping factor    
Psl       12.7        ; piston seal width                    [mm]   
Vsl       9.525          ; valve stem seal width                [mm]   
Mssl      9.525          ; Middle stem seal width               [mm]   
Osdia     47.64          ; Overide (upper) stem diameter                [mm]   
Ossl      9.525          ; Overide stem seal width              [mm]   
Vcc        3             ; Pressurized volume in closing cavity [l]   
Vssl      47.8          ; Valve stem seal width                [mm]   
Sodia     143,7         ; Gate seat OD           [mm]   
Sidia     131         ; Gate seat ID           [mm]   
Sw        18.52          ; Gate seat face width   [mm]   
Gcop      22.7          ; Gate crack open point  [mm]   
Bsdia     0.0             ; Balance stem diameter   
Ghdia    6   ; Gate hole (btwn process bore and gate cavity) diameter [mm]   
Ghlen    20.  ; Total hole length.                                    [mm]   
Ghrn   .005     ;  Roughness of wetted hole surface                   [mm]   
Ghcq      0.7   ; Flow coefficient (CQ)for fully dev. turb. flow   
Suff     .01    ; Gate seal U-seal flow factor.    
Scff     .05    ; Gate seal flow factor   
Scrpr   7.19    ; Pressure diff between Prgc and Prup or Prdo causing ...   
Vgc      3    ; Pressurized volume in gate cavity    
Sdf       3     ; Stem Seal dynamic friction factor.        [%]   
Msdf      0.06  ; Min dynamic friction in Stem seal.        [kN]   
Ssf       6     ; Stem packing seal static friction factor  [%]   
Mssf      0.09  ; Min static friction in Stem Packing Seal  [kN]   
Gdf       12     ; Gate Seat dynamic friction factor.   [%]   
Mgdf      0.42   ; Min dynamic friction in Gate Seals   [kN]   
Gsf       14     ; Gate Seal static friction factor     [%]   
Mgsf      0.83   ; Min static friction in Gate Seals    [kN]   
Bsf       2.084  ; Average Belville spring force        [kN]   
Spfric    0     ; Spring friction loss                 [%]   

;;; Actuator open line
LINE         Ao
  Tree         2
  Template     B
  Function     0x1025
  Plugs        1
  Form         1
  Diameter                        6.220  
  Length                            5.0  
  Nplugs                            1.0  
  Rn                            1.50e-3  
  Rhup                            2030.  
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
  Tree         2
  Template     B
  Function     0x2025
  Plugs        1
  Form         1
  Diameter                        6.220  
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

;;; Fail close valves
ACTUATOR     A
  Type         FC_FMC-AH700_5"-GV-690_bar-2.9_L
  Tree         2
  Template     B
  Function     0x35
Pdia      162    ; Actuator piston diameter       [mm]   
Msdia     47.64      ; Middle (piston) stem diameter  [mm]   
Sc        598.6     ; Actuator spring constant        [kN/m]   
Spre      0.206     ; Spring pretension             [m]   
Mass      400        ; Mass of accelerated components  [kg]   
Smax      0.1537     ; Actuator stroke.               [m]   
Voc       2.9        ; Pressurized volume in opening cavity    [l]   
Vsdia     53.9       ; Valve (bonnet) stem diameter   [mm]   
  Cvrhp_a                         2030.  
  Cvrha_r                         430.0  
Df        1             ; Actuator Seal dynamic (colomb) friction factor.                                                                                                                                                                                      
Mdf       1.967          ; Min dynamic friction in actuator seals.           [kN]   
Sf        2            ; Actuator Seal static (stiction) friction factor  [%]   
Msf       2.295          ; Min static friction in actuator seals.           [kN]   
Ld        10            ; Linear damping of actuator.   
Vlim      0.0002         ; Velocity limit between stiction and colomb fric [m/s]   
Adf       2     ; Acceleration damping factor    
Psl       12.7        ; piston seal width                    [mm]   
Vsl       9.525          ; valve stem seal width                [mm]   
Mssl      9.525          ; Middle stem seal width               [mm]   
Osdia     47.64          ; Overide (upper) stem diameter                [mm]   
Ossl      9.525          ; Overide stem seal width              [mm]   
Vcc        3             ; Pressurized volume in closing cavity [l]   
Vssl      47.8          ; Valve stem seal width                [mm]   
Sodia     143,7         ; Gate seat OD           [mm]   
Sidia     131         ; Gate seat ID           [mm]   
Sw        18.52          ; Gate seat face width   [mm]   
Gcop      22.7          ; Gate crack open point  [mm]   
Bsdia     0.0             ; Balance stem diameter   
Ghdia    6   ; Gate hole (btwn process bore and gate cavity) diameter [mm]   
Ghlen    20.  ; Total hole length.                                    [mm]   
Ghrn   .005     ;  Roughness of wetted hole surface                   [mm]   
Ghcq      0.7   ; Flow coefficient (CQ)for fully dev. turb. flow   
Suff     .01    ; Gate seal U-seal flow factor.    
Scff     .05    ; Gate seal flow factor   
Scrpr   7.19    ; Pressure diff between Prgc and Prup or Prdo causing ...   
Vgc      3    ; Pressurized volume in gate cavity    
Sdf       3     ; Stem Seal dynamic friction factor.        [%]   
Msdf      0.06  ; Min dynamic friction in Stem seal.        [kN]   
Ssf       6     ; Stem packing seal static friction factor  [%]   
Mssf      0.09  ; Min static friction in Stem Packing Seal  [kN]   
Gdf       12     ; Gate Seat dynamic friction factor.   [%]   
Mgdf      0.42   ; Min dynamic friction in Gate Seals   [kN]   
Gsf       14     ; Gate Seal static friction factor     [%]   
Mgsf      0.83   ; Min static friction in Gate Seals    [kN]   
Bsf       2.084  ; Average Belville spring force        [kN]   
Spfric    0     ; Spring friction loss                 [%]   

;;; Actuator open line
LINE         Ao
  Tree         2
  Template     B
  Function     0x1035
  Plugs        1
  Form         1
  Diameter                        6.220  
  Length                            5.0  
  Nplugs                            1.0  
  Rn                            1.50e-3  
  Rhup                            2030.  
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
  Tree         2
  Template     B
  Function     0x2035
  Plugs        1
  Form         1
  Diameter                        6.220  
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

;;; Fail close valves
ACTUATOR     A
  Type         FC_FMC-AH700_2"-GV-690_bar-0.42_L
  Tree         2
  Template     B
  Function     0x45
Pdia      96.5     ; Actuator piston diameter       [mm]   
Msdia     28.45      ; Middle (piston) stem diameter  [mm]   
Sc        430     ; Actuator spring constant        [kN/m]   
Spre      0.0922     ; Spring pretension             [m]   
Mass      100        ; Mass of accelerated components  [kg]   
Smax      0.0645     ; Actuator stroke.               [m]   
Voc       2       ; Pressurized volume in opening cavity    [l]   
Vsdia     28.5      ; Valve (bonnet) stem diameter   [mm]   
  Cvrhp_a                         2030.  
  Cvrha_r                         430.0  
Df        13             ; Actuator Seal dynamic (colomb) friction factor.  [%]   
Mdf       0.14          ; Min dynamic friction in actuator seals.           [kN]   
Sf        15            ; Actuator Seal static (stiction) friction factor  [%]   
Msf       0.34          ; Min static friction in actuator seals.           [kN]   
Ld        10            ; Linear damping of actuator.   
Vlim      0.0002         ; Velocity limit between stiction and colomb fric [m/s]   
Adf       1.8     ; Acceleration damping factor    
Psl       15.74        ; piston seal width                    [mm]   
Vsl       47.78          ; valve stem seal width                [mm]   
Mssl      47.3          ; Middle stem seal width               [mm]   
Osdia     28.5        ; Overide (upper) stem diameter                [mm]   
Ossl      22.23          ; Overide stem seal width              [mm]   
Vcc        2             ; Pressurized volume in closing cavity [l]   
Vssl      47.8          ; Valve stem seal width                [mm]   
Sodia     88.33         ; Gate seat OD           [mm]   
Sidia     52.81         ; Gate seat ID           [mm]   
Sw         7.51         ; Gate seat face width   [mm]   
Gcop      11.3          ; Gate crack open point  [mm]   
Bsdia     0.0             ; Balance stem diameter   
Ghdia    4   ; Gate hole (btwn process bore and gate cavity) diameter [mm]   
Ghlen    10.  ; Total hole length.                                    [mm]   
Ghrn   .005     ;  Roughness of wetted hole surface                   [mm]   
Ghcq      0.7   ; Flow coefficient (CQ)for fully dev. turb. flow   
Suff     .005    ; Gate seal U-seal flow factor.    
Scff     .002    ; Gate seal flow factor   
Scrpr   10.56    ; Pressure diff between Prgc and Prup or Prdo causing ...   
Vgc      4.0    ; Pressurized volume in gate cavity    
Sdf       4     ; Stem Seal dynamic friction factor.        [%]   
Msdf      0.06  ; Min dynamic friction in Stem seal.        [kN]   
Ssf       6     ; Stem packing seal static friction factor  [%]   
Mssf      0.09  ; Min static friction in Stem Packing Seal  [kN]   
Gdf       10     ; Gate Seat dynamic friction factor.   
Mgdf      0.42   ; Min dynamic friction in Gate Seals   
Gsf       20     ; Gate Seal static friction factor   
Mgsf      0.83   ; Min static friction in Gate Seals   
Bsf       2.084  ; Average Belville spring force                [kN]   
Spfric    4.     ; Spring friction loss                         [%]   

;;; Actuator open line
LINE         Ao
  Tree         2
  Template     B
  Function     0x1045
  Plugs        1
  Form         1
  Diameter                        6.220  
  Length                            5.0  
  Nplugs                            1.0  
  Rn                            1.50e-3  
  Rhup                            2030.  
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
  Tree         2
  Template     B
  Function     0x2045
  Plugs        1
  Form         1
  Diameter                        6.220  
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

;;; Fail close valves
ACTUATOR     A
  Type         FC_FMC-AH700_2"-GV-690_bar-0.42_L
  Tree         2
  Template     B
  Function     0x55
Pdia      96.5     ; Actuator piston diameter       [mm]   
Msdia     28.45      ; Middle (piston) stem diameter  [mm]   
Sc        430     ; Actuator spring constant        [kN/m]   
Spre      0.0922     ; Spring pretension             [m]   
Mass      100        ; Mass of accelerated components  [kg]   
Smax      0.0645     ; Actuator stroke.               [m]   
Voc       2       ; Pressurized volume in opening cavity    [l]   
Vsdia     28.5      ; Valve (bonnet) stem diameter   [mm]   
  Cvrhp_a                         2030.  
  Cvrha_r                         430.0  
Df        13             ; Actuator Seal dynamic (colomb) friction factor.  [%]   
Mdf       0.14          ; Min dynamic friction in actuator seals.           [kN]   
Sf        15            ; Actuator Seal static (stiction) friction factor  [%]   
Msf       0.34          ; Min static friction in actuator seals.           [kN]   
Ld        10            ; Linear damping of actuator.   
Vlim      0.0002         ; Velocity limit between stiction and colomb fric [m/s]   
Adf       1.8     ; Acceleration damping factor    
Psl       15.74        ; piston seal width                    [mm]   
Vsl       47.78          ; valve stem seal width                [mm]   
Mssl      47.3          ; Middle stem seal width               [mm]   
Osdia     28.5        ; Overide (upper) stem diameter                [mm]   
Ossl      22.23          ; Overide stem seal width              [mm]   
Vcc        2             ; Pressurized volume in closing cavity [l]   
Vssl      47.8          ; Valve stem seal width                [mm]   
Sodia     88.33         ; Gate seat OD           [mm]   
Sidia     52.81         ; Gate seat ID           [mm]   
Sw         7.51         ; Gate seat face width   [mm]   
Gcop      11.3          ; Gate crack open point  [mm]   
Bsdia     0.0             ; Balance stem diameter   
Ghdia    4   ; Gate hole (btwn process bore and gate cavity) diameter [mm]   
Ghlen    10.  ; Total hole length.                                    [mm]   
Ghrn   .005     ;  Roughness of wetted hole surface                   [mm]   
Ghcq      0.7   ; Flow coefficient (CQ)for fully dev. turb. flow   
Suff     .005    ; Gate seal U-seal flow factor.    
Scff     .002    ; Gate seal flow factor   
Scrpr   10.56    ; Pressure diff between Prgc and Prup or Prdo causing ...   
Vgc      4.0    ; Pressurized volume in gate cavity    
Sdf       4     ; Stem Seal dynamic friction factor.        [%]   
Msdf      0.06  ; Min dynamic friction in Stem seal.        [kN]   
Ssf       6     ; Stem packing seal static friction factor  [%]   
Mssf      0.09  ; Min static friction in Stem Packing Seal  [kN]   
Gdf       10     ; Gate Seat dynamic friction factor.   
Mgdf      0.42   ; Min dynamic friction in Gate Seals   
Gsf       20     ; Gate Seal static friction factor   
Mgsf      0.83   ; Min static friction in Gate Seals   
Bsf       2.084  ; Average Belville spring force                [kN]   
Spfric    4.     ; Spring friction loss                         [%]   

;;; Actuator open line
LINE         Ao
  Tree         2
  Template     B
  Function     0x1055
  Plugs        1
  Form         1
  Diameter                        6.220  
  Length                            5.0  
  Nplugs                            1.0  
  Rn                            1.50e-3  
  Rhup                            2030.  
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
  Tree         2
  Template     B
  Function     0x2055
  Plugs        1
  Form         1
  Diameter                        6.220  
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

;;; A ball valve described by actuator piston area, ball angle; 0 dgr: fully closed, 90 dgr: fully open
ACTUATOR     A
  Type         BVFO_Perar_10"-BV-405_bar-6.435L
  Tree         2
  Template     B
  Function     0x65
  Pdia                              0.0  
  Msdia                             0.0  
Sc  1420   ;[kN/m] Actuator spring constant.    
Spre  0.25   ;[m] Actuator spring precompression.    
Mass  400.0  ;[kg] Actuator accelerated assembly mass.    
Smax  0.133 ;[m] Actuator maximum stroke.    
Voc  8.785  ;[l] Pressurized volume in Actuator opening cavity.    
  Vsdia                             0.0  
  Cvrhp_a                         35330       
  Cvrha_r                         430.0  
Df  13   ;[%] Dynamic friction in Actuator assembly.    
Mdf  30  ;[kN] Minimum dynamic friction in Actuator assembly.    
Sf  15   ;[%] Static friction in the Ball Valve Actuator assembly.    
Msf  35   ;[kN] Minimum static friction in Actuator assembly.    
Ld  50.0   ;[kNs/m] Actuator assembly velocity dampening.    
Vlim  2.0e-4 ;[m/s] Ball Valve Actuator piston velocity at which transition between dynamic and static friction starts.    
Adf  1.8   ; Actuator acceleration dampening.    
Aopen 48381 ;[mm2] Pro acts on Actuator piston area Aopen.    
Aamb  48381 ;[mm2] Prc acts on Actuator piston area AAmb.    

;;; Actuator open line
LINE         Ao
  Tree         2
  Template     B
  Function     0x1065
  Plugs        1
  Form         1
  Diameter                        6.220  
  Length                          100.0  
  Nplugs                            1.0  
  Rn                            1.50e-3  
  Rhup                            35330       
  Rhdo                             30.0  
  Hdiff                             0.0  
  Trnum                           2300.  
  Beta                            24000  
  Binc                              0.0  
  Bexp                              0.0  
  VEcorr                            1.0  
  Mwp                             300.0  

;;; Subsea Control Module
SCM          S
  Tree         3
  Template     B
  Function     0x3
  Depth                           2100.       
  Cv_fwr                          0.250  
  Cv_fwq                         6.0e-3  
  Svol                              4.0  
  Rvol                              4.0  
  PPrup                          600.0            
  PPrdo                          600.0            
  Cvrhp_a                           0.0  

;;; Xmas tree return manifold
MANIFOLD     T
  Tree         3
  Template     B
  Function     0x2004
  Depth                           2100.       
  Volume                         40.0            
  AssistFlowGain                   0.20  
EXHAUST_VALVE T-Ev
  Tree         3
  Template     B
  Function     0x2004
  Cr                             41.0            
  Inc                               3.0  
  Qref                             0.10  
  Tau                             0.010  
  Rh                               10.0  

;;; Xmas-tree bladder
BLADDER      T-Bl
  Tree         3
  Template     B
  Function     0x2004
  Vmax                           40.0            
  Vmin                             0.10  
  Dia                              11.0  
  Len                               5.0  
  Rh                               20.0  
  In_vol                         40.0            

;;; SCM supply line
LINE         Ss
  Type         Constant
  Tree         3
  Template     B
  Function     0x1003
  Plugs        2
  Form         1
  Diameter                        12.70  
  Length                         110.0            
  Nplugs                         2.0            
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
  Tree         3
  Template     B
  Function     0x2004
  Plugs        1
  Form         1
  Diameter                         9.40  
  Length                            7.0  
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
  Tree         3
  Template     B
  Function     0x3
  Cr                                3.0  
  Inc                               3.0  
  Qref                             0.10  
  Tau                             0.010  
  Rh                               10.0  

;;; Fail close valves
ACTUATOR     A
  Type         FC_FMC-AH700_5"-GV-690_bar-2.9_L
  Tree         3
  Template     B
  Function     0x15
Pdia      162    ; Actuator piston diameter       [mm]   
Msdia     47.64      ; Middle (piston) stem diameter  [mm]   
Sc        598.6     ; Actuator spring constant        [kN/m]   
Spre      0.206     ; Spring pretension             [m]   
Mass      400        ; Mass of accelerated components  [kg]   
Smax      0.1537     ; Actuator stroke.               [m]   
Voc       2.9        ; Pressurized volume in opening cavity    [l]   
Vsdia     53.9       ; Valve (bonnet) stem diameter   [mm]   
  Cvrhp_a                         2030.  
  Cvrha_r                         430.0  
Df        1             ; Actuator Seal dynamic (colomb) friction factor.                                                                                                                                                                                      
Mdf       1.967          ; Min dynamic friction in actuator seals.           [kN]   
Sf        2            ; Actuator Seal static (stiction) friction factor  [%]   
Msf       2.295          ; Min static friction in actuator seals.           [kN]   
Ld        10            ; Linear damping of actuator.   
Vlim      0.0002         ; Velocity limit between stiction and colomb fric [m/s]   
Adf       2     ; Acceleration damping factor    
Psl       12.7        ; piston seal width                    [mm]   
Vsl       9.525          ; valve stem seal width                [mm]   
Mssl      9.525          ; Middle stem seal width               [mm]   
Osdia     47.64          ; Overide (upper) stem diameter                [mm]   
Ossl      9.525          ; Overide stem seal width              [mm]   
Vcc        3             ; Pressurized volume in closing cavity [l]   
Vssl      47.8          ; Valve stem seal width                [mm]   
Sodia     143,7         ; Gate seat OD           [mm]   
Sidia     131         ; Gate seat ID           [mm]   
Sw        18.52          ; Gate seat face width   [mm]   
Gcop      22.7          ; Gate crack open point  [mm]   
Bsdia     0.0             ; Balance stem diameter   
Ghdia    6   ; Gate hole (btwn process bore and gate cavity) diameter [mm]   
Ghlen    20.  ; Total hole length.                                    [mm]   
Ghrn   .005     ;  Roughness of wetted hole surface                   [mm]   
Ghcq      0.7   ; Flow coefficient (CQ)for fully dev. turb. flow   
Suff     .01    ; Gate seal U-seal flow factor.    
Scff     .05    ; Gate seal flow factor   
Scrpr   7.19    ; Pressure diff between Prgc and Prup or Prdo causing ...   
Vgc      3    ; Pressurized volume in gate cavity    
Sdf       3     ; Stem Seal dynamic friction factor.        [%]   
Msdf      0.06  ; Min dynamic friction in Stem seal.        [kN]   
Ssf       6     ; Stem packing seal static friction factor  [%]   
Mssf      0.09  ; Min static friction in Stem Packing Seal  [kN]   
Gdf       12     ; Gate Seat dynamic friction factor.   [%]   
Mgdf      0.42   ; Min dynamic friction in Gate Seals   [kN]   
Gsf       14     ; Gate Seal static friction factor     [%]   
Mgsf      0.83   ; Min static friction in Gate Seals    [kN]   
Bsf       2.084  ; Average Belville spring force        [kN]   
Spfric    0     ; Spring friction loss                 [%]   

;;; Actuator open line
LINE         Ao
  Tree         3
  Template     B
  Function     0x1015
  Plugs        1
  Form         1
  Diameter                        6.220  
  Length                            5.0  
  Nplugs                            1.0  
  Rn                            1.50e-3  
  Rhup                            2030.  
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
  Tree         3
  Template     B
  Function     0x2015
  Plugs        1
  Form         1
  Diameter                        6.220  
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

;;; Fail close valves
ACTUATOR     A
  Type         FC_FMC-AH700_5"-GV-690_bar-2.9_L
  Tree         3
  Template     B
  Function     0x25
Pdia      162    ; Actuator piston diameter       [mm]   
Msdia     47.64      ; Middle (piston) stem diameter  [mm]   
Sc        598.6     ; Actuator spring constant        [kN/m]   
Spre      0.206     ; Spring pretension             [m]   
Mass      400        ; Mass of accelerated components  [kg]   
Smax      0.1537     ; Actuator stroke.               [m]   
Voc       2.9        ; Pressurized volume in opening cavity    [l]   
Vsdia     53.9       ; Valve (bonnet) stem diameter   [mm]   
  Cvrhp_a                         2030.  
  Cvrha_r                         430.0  
Df        1             ; Actuator Seal dynamic (colomb) friction factor.                                                                                                                                                                                      
Mdf       1.967          ; Min dynamic friction in actuator seals.           [kN]   
Sf        2            ; Actuator Seal static (stiction) friction factor  [%]   
Msf       2.295          ; Min static friction in actuator seals.           [kN]   
Ld        10            ; Linear damping of actuator.   
Vlim      0.0002         ; Velocity limit between stiction and colomb fric [m/s]   
Adf       2     ; Acceleration damping factor    
Psl       12.7        ; piston seal width                    [mm]   
Vsl       9.525          ; valve stem seal width                [mm]   
Mssl      9.525          ; Middle stem seal width               [mm]   
Osdia     47.64          ; Overide (upper) stem diameter                [mm]   
Ossl      9.525          ; Overide stem seal width              [mm]   
Vcc        3             ; Pressurized volume in closing cavity [l]   
Vssl      47.8          ; Valve stem seal width                [mm]   
Sodia     143,7         ; Gate seat OD           [mm]   
Sidia     131         ; Gate seat ID           [mm]   
Sw        18.52          ; Gate seat face width   [mm]   
Gcop      22.7          ; Gate crack open point  [mm]   
Bsdia     0.0             ; Balance stem diameter   
Ghdia    6   ; Gate hole (btwn process bore and gate cavity) diameter [mm]   
Ghlen    20.  ; Total hole length.                                    [mm]   
Ghrn   .005     ;  Roughness of wetted hole surface                   [mm]   
Ghcq      0.7   ; Flow coefficient (CQ)for fully dev. turb. flow   
Suff     .01    ; Gate seal U-seal flow factor.    
Scff     .05    ; Gate seal flow factor   
Scrpr   7.19    ; Pressure diff between Prgc and Prup or Prdo causing ...   
Vgc      3    ; Pressurized volume in gate cavity    
Sdf       3     ; Stem Seal dynamic friction factor.        [%]   
Msdf      0.06  ; Min dynamic friction in Stem seal.        [kN]   
Ssf       6     ; Stem packing seal static friction factor  [%]   
Mssf      0.09  ; Min static friction in Stem Packing Seal  [kN]   
Gdf       12     ; Gate Seat dynamic friction factor.   [%]   
Mgdf      0.42   ; Min dynamic friction in Gate Seals   [kN]   
Gsf       14     ; Gate Seal static friction factor     [%]   
Mgsf      0.83   ; Min static friction in Gate Seals    [kN]   
Bsf       2.084  ; Average Belville spring force        [kN]   
Spfric    0     ; Spring friction loss                 [%]   

;;; Actuator open line
LINE         Ao
  Tree         3
  Template     B
  Function     0x1025
  Plugs        1
  Form         1
  Diameter                        6.220  
  Length                            5.0  
  Nplugs                            1.0  
  Rn                            1.50e-3  
  Rhup                            2030.  
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
  Tree         3
  Template     B
  Function     0x2025
  Plugs        1
  Form         1
  Diameter                        6.220  
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

;;; Fail close valves
ACTUATOR     A
  Type         FC_FMC-AH700_5"-GV-690_bar-2.9_L
  Tree         3
  Template     B
  Function     0x35
Pdia      162    ; Actuator piston diameter       [mm]   
Msdia     47.64      ; Middle (piston) stem diameter  [mm]   
Sc        598.6     ; Actuator spring constant        [kN/m]   
Spre      0.206     ; Spring pretension             [m]   
Mass      400        ; Mass of accelerated components  [kg]   
Smax      0.1537     ; Actuator stroke.               [m]   
Voc       2.9        ; Pressurized volume in opening cavity    [l]   
Vsdia     53.9       ; Valve (bonnet) stem diameter   [mm]   
  Cvrhp_a                         2030.  
  Cvrha_r                         430.0  
Df        1             ; Actuator Seal dynamic (colomb) friction factor.                                                                                                                                                                                      
Mdf       1.967          ; Min dynamic friction in actuator seals.           [kN]   
Sf        2            ; Actuator Seal static (stiction) friction factor  [%]   
Msf       2.295          ; Min static friction in actuator seals.           [kN]   
Ld        10            ; Linear damping of actuator.   
Vlim      0.0002         ; Velocity limit between stiction and colomb fric [m/s]   
Adf       2     ; Acceleration damping factor    
Psl       12.7        ; piston seal width                    [mm]   
Vsl       9.525          ; valve stem seal width                [mm]   
Mssl      9.525          ; Middle stem seal width               [mm]   
Osdia     47.64          ; Overide (upper) stem diameter                [mm]   
Ossl      9.525          ; Overide stem seal width              [mm]   
Vcc        3             ; Pressurized volume in closing cavity [l]   
Vssl      47.8          ; Valve stem seal width                [mm]   
Sodia     143,7         ; Gate seat OD           [mm]   
Sidia     131         ; Gate seat ID           [mm]   
Sw        18.52          ; Gate seat face width   [mm]   
Gcop      22.7          ; Gate crack open point  [mm]   
Bsdia     0.0             ; Balance stem diameter   
Ghdia    6   ; Gate hole (btwn process bore and gate cavity) diameter [mm]   
Ghlen    20.  ; Total hole length.                                    [mm]   
Ghrn   .005     ;  Roughness of wetted hole surface                   [mm]   
Ghcq      0.7   ; Flow coefficient (CQ)for fully dev. turb. flow   
Suff     .01    ; Gate seal U-seal flow factor.    
Scff     .05    ; Gate seal flow factor   
Scrpr   7.19    ; Pressure diff between Prgc and Prup or Prdo causing ...   
Vgc      3    ; Pressurized volume in gate cavity    
Sdf       3     ; Stem Seal dynamic friction factor.        [%]   
Msdf      0.06  ; Min dynamic friction in Stem seal.        [kN]   
Ssf       6     ; Stem packing seal static friction factor  [%]   
Mssf      0.09  ; Min static friction in Stem Packing Seal  [kN]   
Gdf       12     ; Gate Seat dynamic friction factor.   [%]   
Mgdf      0.42   ; Min dynamic friction in Gate Seals   [kN]   
Gsf       14     ; Gate Seal static friction factor     [%]   
Mgsf      0.83   ; Min static friction in Gate Seals    [kN]   
Bsf       2.084  ; Average Belville spring force        [kN]   
Spfric    0     ; Spring friction loss                 [%]   

;;; Actuator open line
LINE         Ao
  Tree         3
  Template     B
  Function     0x1035
  Plugs        1
  Form         1
  Diameter                        6.220  
  Length                            5.0  
  Nplugs                            1.0  
  Rn                            1.50e-3  
  Rhup                            2030.  
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
  Tree         3
  Template     B
  Function     0x2035
  Plugs        1
  Form         1
  Diameter                        6.220  
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

;;; Fail close valves
ACTUATOR     A
  Type         FC_FMC-AH700_2"-GV-690_bar-0.42_L
  Tree         3
  Template     B
  Function     0x45
Pdia      96.5     ; Actuator piston diameter       [mm]   
Msdia     28.45      ; Middle (piston) stem diameter  [mm]   
Sc        430     ; Actuator spring constant        [kN/m]   
Spre      0.0922     ; Spring pretension             [m]   
Mass      100        ; Mass of accelerated components  [kg]   
Smax      0.0645     ; Actuator stroke.               [m]   
Voc       2       ; Pressurized volume in opening cavity    [l]   
Vsdia     28.5      ; Valve (bonnet) stem diameter   [mm]   
  Cvrhp_a                         2030.  
  Cvrha_r                         430.0  
Df        13             ; Actuator Seal dynamic (colomb) friction factor.  [%]   
Mdf       0.14          ; Min dynamic friction in actuator seals.           [kN]   
Sf        15            ; Actuator Seal static (stiction) friction factor  [%]   
Msf       0.34          ; Min static friction in actuator seals.           [kN]   
Ld        10            ; Linear damping of actuator.   
Vlim      0.0002         ; Velocity limit between stiction and colomb fric [m/s]   
Adf       1.8     ; Acceleration damping factor    
Psl       15.74        ; piston seal width                    [mm]   
Vsl       47.78          ; valve stem seal width                [mm]   
Mssl      47.3          ; Middle stem seal width               [mm]   
Osdia     28.5        ; Overide (upper) stem diameter                [mm]   
Ossl      22.23          ; Overide stem seal width              [mm]   
Vcc        2             ; Pressurized volume in closing cavity [l]   
Vssl      47.8          ; Valve stem seal width                [mm]   
Sodia     88.33         ; Gate seat OD           [mm]   
Sidia     52.81         ; Gate seat ID           [mm]   
Sw         7.51         ; Gate seat face width   [mm]   
Gcop      11.3          ; Gate crack open point  [mm]   
Bsdia     0.0             ; Balance stem diameter   
Ghdia    4   ; Gate hole (btwn process bore and gate cavity) diameter [mm]   
Ghlen    10.  ; Total hole length.                                    [mm]   
Ghrn   .005     ;  Roughness of wetted hole surface                   [mm]   
Ghcq      0.7   ; Flow coefficient (CQ)for fully dev. turb. flow   
Suff     .005    ; Gate seal U-seal flow factor.    
Scff     .002    ; Gate seal flow factor   
Scrpr   10.56    ; Pressure diff between Prgc and Prup or Prdo causing ...   
Vgc      4.0    ; Pressurized volume in gate cavity    
Sdf       4     ; Stem Seal dynamic friction factor.        [%]   
Msdf      0.06  ; Min dynamic friction in Stem seal.        [kN]   
Ssf       6     ; Stem packing seal static friction factor  [%]   
Mssf      0.09  ; Min static friction in Stem Packing Seal  [kN]   
Gdf       10     ; Gate Seat dynamic friction factor.   
Mgdf      0.42   ; Min dynamic friction in Gate Seals   
Gsf       20     ; Gate Seal static friction factor   
Mgsf      0.83   ; Min static friction in Gate Seals   
Bsf       2.084  ; Average Belville spring force                [kN]   
Spfric    4.     ; Spring friction loss                         [%]   

;;; Actuator open line
LINE         Ao
  Tree         3
  Template     B
  Function     0x1045
  Plugs        1
  Form         1
  Diameter                        6.220  
  Length                            5.0  
  Nplugs                            1.0  
  Rn                            1.50e-3  
  Rhup                            2030.  
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
  Tree         3
  Template     B
  Function     0x2045
  Plugs        1
  Form         1
  Diameter                        6.220  
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

;;; Fail close valves
ACTUATOR     A
  Type         FC_FMC-AH700_2"-GV-690_bar-0.42_L
  Tree         3
  Template     B
  Function     0x55
Pdia      96.5     ; Actuator piston diameter       [mm]   
Msdia     28.45      ; Middle (piston) stem diameter  [mm]   
Sc        430     ; Actuator spring constant        [kN/m]   
Spre      0.0922     ; Spring pretension             [m]   
Mass      100        ; Mass of accelerated components  [kg]   
Smax      0.0645     ; Actuator stroke.               [m]   
Voc       2       ; Pressurized volume in opening cavity    [l]   
Vsdia     28.5      ; Valve (bonnet) stem diameter   [mm]   
  Cvrhp_a                         2030.  
  Cvrha_r                         430.0  
Df        13             ; Actuator Seal dynamic (colomb) friction factor.  [%]   
Mdf       0.14          ; Min dynamic friction in actuator seals.           [kN]   
Sf        15            ; Actuator Seal static (stiction) friction factor  [%]   
Msf       0.34          ; Min static friction in actuator seals.           [kN]   
Ld        10            ; Linear damping of actuator.   
Vlim      0.0002         ; Velocity limit between stiction and colomb fric [m/s]   
Adf       1.8     ; Acceleration damping factor    
Psl       15.74        ; piston seal width                    [mm]   
Vsl       47.78          ; valve stem seal width                [mm]   
Mssl      47.3          ; Middle stem seal width               [mm]   
Osdia     28.5        ; Overide (upper) stem diameter                [mm]   
Ossl      22.23          ; Overide stem seal width              [mm]   
Vcc        2             ; Pressurized volume in closing cavity [l]   
Vssl      47.8          ; Valve stem seal width                [mm]   
Sodia     88.33         ; Gate seat OD           [mm]   
Sidia     52.81         ; Gate seat ID           [mm]   
Sw         7.51         ; Gate seat face width   [mm]   
Gcop      11.3          ; Gate crack open point  [mm]   
Bsdia     0.0             ; Balance stem diameter   
Ghdia    4   ; Gate hole (btwn process bore and gate cavity) diameter [mm]   
Ghlen    10.  ; Total hole length.                                    [mm]   
Ghrn   .005     ;  Roughness of wetted hole surface                   [mm]   
Ghcq      0.7   ; Flow coefficient (CQ)for fully dev. turb. flow   
Suff     .005    ; Gate seal U-seal flow factor.    
Scff     .002    ; Gate seal flow factor   
Scrpr   10.56    ; Pressure diff between Prgc and Prup or Prdo causing ...   
Vgc      4.0    ; Pressurized volume in gate cavity    
Sdf       4     ; Stem Seal dynamic friction factor.        [%]   
Msdf      0.06  ; Min dynamic friction in Stem seal.        [kN]   
Ssf       6     ; Stem packing seal static friction factor  [%]   
Mssf      0.09  ; Min static friction in Stem Packing Seal  [kN]   
Gdf       10     ; Gate Seat dynamic friction factor.   
Mgdf      0.42   ; Min dynamic friction in Gate Seals   
Gsf       20     ; Gate Seal static friction factor   
Mgsf      0.83   ; Min static friction in Gate Seals   
Bsf       2.084  ; Average Belville spring force                [kN]   
Spfric    4.     ; Spring friction loss                         [%]   

;;; Actuator open line
LINE         Ao
  Tree         3
  Template     B
  Function     0x1055
  Plugs        1
  Form         1
  Diameter                        6.220  
  Length                            5.0  
  Nplugs                            1.0  
  Rn                            1.50e-3  
  Rhup                            2030.  
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
  Tree         3
  Template     B
  Function     0x2055
  Plugs        1
  Form         1
  Diameter                        6.220  
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

;;; A ball valve described by actuator piston area, ball angle; 0 dgr: fully closed, 90 dgr: fully open
ACTUATOR     A
  Type         BVFO_Perar_10"-BV-405_bar-6.435L
  Tree         3
  Template     B
  Function     0x65
  Pdia                              0.0  
  Msdia                             0.0  
Sc  1420   ;[kN/m] Actuator spring constant.    
Spre  0.25   ;[m] Actuator spring precompression.    
Mass  400.0  ;[kg] Actuator accelerated assembly mass.    
Smax  0.133 ;[m] Actuator maximum stroke.    
Voc  8.785  ;[l] Pressurized volume in Actuator opening cavity.    
  Vsdia                             0.0  
  Cvrhp_a                         35330       
  Cvrha_r                         430.0  
Df  13   ;[%] Dynamic friction in Actuator assembly.    
Mdf  30  ;[kN] Minimum dynamic friction in Actuator assembly.    
Sf  15   ;[%] Static friction in the Ball Valve Actuator assembly.    
Msf  35   ;[kN] Minimum static friction in Actuator assembly.    
Ld  50.0   ;[kNs/m] Actuator assembly velocity dampening.    
Vlim  2.0e-4 ;[m/s] Ball Valve Actuator piston velocity at which transition between dynamic and static friction starts.    
Adf  1.8   ; Actuator acceleration dampening.    
Aopen 48381 ;[mm2] Pro acts on Actuator piston area Aopen.    
Aamb  48381 ;[mm2] Prc acts on Actuator piston area AAmb.    

;;; Actuator open line
LINE         Ao
  Type         Constant
  Tree         3
  Template     B
  Function     0x1065
  Plugs        2
  Form         1
  Diameter                        6.220  
  Length                         160.0            
  Nplugs                         2.0            
  Rn                            1.50e-3  
  Rhup                            35330       
  Rhdo                             30.0  
  Hdiff                             0.0  
  Trnum                           2300.  
  Beta                            24000  
  Binc                              0.0  
  Bexp                              0.0  
  VEcorr                            1.0  
  Mwp                             300.0  

;;; Subsea Control Module
SCM          S
  Tree         1
  Template     C
  Function     0x3
  Depth                           2100.       
  Cv_fwr                          0.250  
  Cv_fwq                         6.0e-3  
  Svol                              4.0  
  Rvol                              4.0  
  PPrup                          600.0            
  PPrdo                          600.0            
  Cvrhp_a                           0.0  

;;; Xmas tree return manifold
MANIFOLD     T
  Tree         1
  Template     C
  Function     0x2004
  Depth                           2100.       
  Volume                         40.0            
  AssistFlowGain                   0.20  
EXHAUST_VALVE T-Ev
  Tree         1
  Template     C
  Function     0x2004
  Cr                             41.0            
  Inc                               3.0  
  Qref                             0.10  
  Tau                             0.010  
  Rh                               10.0  

;;; Xmas-tree bladder
BLADDER      T-Bl
  Tree         1
  Template     C
  Function     0x2004
  Vmax                           40.0            
  Vmin                             0.10  
  Dia                              11.0  
  Len                               5.0  
  Rh                               20.0  
  In_vol                         40.0            

;;; SCM supply line
LINE         Ss
  Type         Constant
  Tree         1
  Template     C
  Function     0x1003
  Plugs        3
  Form         1
  Diameter                        12.70  
  Length                         290.0            
  Nplugs                         3.0            
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
  Template     C
  Function     0x2004
  Plugs        1
  Form         1
  Diameter                         9.40  
  Length                            7.0  
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
  Template     C
  Function     0x3
  Cr                                3.0  
  Inc                               3.0  
  Qref                             0.10  
  Tau                             0.010  
  Rh                               10.0  

;;; Fail close valves
ACTUATOR     A
  Type         FC_FMC-AH700_5"-GV-690_bar-2.9_L
  Tree         1
  Template     C
  Function     0x15
Pdia      162    ; Actuator piston diameter       [mm]   
Msdia     47.64      ; Middle (piston) stem diameter  [mm]   
Sc        598.6     ; Actuator spring constant        [kN/m]   
Spre      0.206     ; Spring pretension             [m]   
Mass      400        ; Mass of accelerated components  [kg]   
Smax      0.1537     ; Actuator stroke.               [m]   
Voc       2.9        ; Pressurized volume in opening cavity    [l]   
Vsdia     53.9       ; Valve (bonnet) stem diameter   [mm]   
  Cvrhp_a                         2030.  
  Cvrha_r                         430.0  
Df        1             ; Actuator Seal dynamic (colomb) friction factor.                                                                                                                                                                                      
Mdf       1.967          ; Min dynamic friction in actuator seals.           [kN]   
Sf        2            ; Actuator Seal static (stiction) friction factor  [%]   
Msf       2.295          ; Min static friction in actuator seals.           [kN]   
Ld        10            ; Linear damping of actuator.   
Vlim      0.0002         ; Velocity limit between stiction and colomb fric [m/s]   
Adf       2     ; Acceleration damping factor    
Psl       12.7        ; piston seal width                    [mm]   
Vsl       9.525          ; valve stem seal width                [mm]   
Mssl      9.525          ; Middle stem seal width               [mm]   
Osdia     47.64          ; Overide (upper) stem diameter                [mm]   
Ossl      9.525          ; Overide stem seal width              [mm]   
Vcc        3             ; Pressurized volume in closing cavity [l]   
Vssl      47.8          ; Valve stem seal width                [mm]   
Sodia     143,7         ; Gate seat OD           [mm]   
Sidia     131         ; Gate seat ID           [mm]   
Sw        18.52          ; Gate seat face width   [mm]   
Gcop      22.7          ; Gate crack open point  [mm]   
Bsdia     0.0             ; Balance stem diameter   
Ghdia    6   ; Gate hole (btwn process bore and gate cavity) diameter [mm]   
Ghlen    20.  ; Total hole length.                                    [mm]   
Ghrn   .005     ;  Roughness of wetted hole surface                   [mm]   
Ghcq      0.7   ; Flow coefficient (CQ)for fully dev. turb. flow   
Suff     .01    ; Gate seal U-seal flow factor.    
Scff     .05    ; Gate seal flow factor   
Scrpr   7.19    ; Pressure diff between Prgc and Prup or Prdo causing ...   
Vgc      3    ; Pressurized volume in gate cavity    
Sdf       3     ; Stem Seal dynamic friction factor.        [%]   
Msdf      0.06  ; Min dynamic friction in Stem seal.        [kN]   
Ssf       6     ; Stem packing seal static friction factor  [%]   
Mssf      0.09  ; Min static friction in Stem Packing Seal  [kN]   
Gdf       12     ; Gate Seat dynamic friction factor.   [%]   
Mgdf      0.42   ; Min dynamic friction in Gate Seals   [kN]   
Gsf       14     ; Gate Seal static friction factor     [%]   
Mgsf      0.83   ; Min static friction in Gate Seals    [kN]   
Bsf       2.084  ; Average Belville spring force        [kN]   
Spfric    0     ; Spring friction loss                 [%]   

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     C
  Function     0x1015
  Plugs        1
  Form         1
  Diameter                        6.220  
  Length                            5.0  
  Nplugs                            1.0  
  Rn                            1.50e-3  
  Rhup                            2030.  
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
  Template     C
  Function     0x2015
  Plugs        1
  Form         1
  Diameter                        6.220  
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

;;; Fail close valves
ACTUATOR     A
  Type         FC_FMC-AH700_5"-GV-690_bar-2.9_L
  Tree         1
  Template     C
  Function     0x25
Pdia      162    ; Actuator piston diameter       [mm]   
Msdia     47.64      ; Middle (piston) stem diameter  [mm]   
Sc        598.6     ; Actuator spring constant        [kN/m]   
Spre      0.206     ; Spring pretension             [m]   
Mass      400        ; Mass of accelerated components  [kg]   
Smax      0.1537     ; Actuator stroke.               [m]   
Voc       2.9        ; Pressurized volume in opening cavity    [l]   
Vsdia     53.9       ; Valve (bonnet) stem diameter   [mm]   
  Cvrhp_a                         2030.  
  Cvrha_r                         430.0  
Df        1             ; Actuator Seal dynamic (colomb) friction factor.                                                                                                                                                                                      
Mdf       1.967          ; Min dynamic friction in actuator seals.           [kN]   
Sf        2            ; Actuator Seal static (stiction) friction factor  [%]   
Msf       2.295          ; Min static friction in actuator seals.           [kN]   
Ld        10            ; Linear damping of actuator.   
Vlim      0.0002         ; Velocity limit between stiction and colomb fric [m/s]   
Adf       2     ; Acceleration damping factor    
Psl       12.7        ; piston seal width                    [mm]   
Vsl       9.525          ; valve stem seal width                [mm]   
Mssl      9.525          ; Middle stem seal width               [mm]   
Osdia     47.64          ; Overide (upper) stem diameter                [mm]   
Ossl      9.525          ; Overide stem seal width              [mm]   
Vcc        3             ; Pressurized volume in closing cavity [l]   
Vssl      47.8          ; Valve stem seal width                [mm]   
Sodia     143,7         ; Gate seat OD           [mm]   
Sidia     131         ; Gate seat ID           [mm]   
Sw        18.52          ; Gate seat face width   [mm]   
Gcop      22.7          ; Gate crack open point  [mm]   
Bsdia     0.0             ; Balance stem diameter   
Ghdia    6   ; Gate hole (btwn process bore and gate cavity) diameter [mm]   
Ghlen    20.  ; Total hole length.                                    [mm]   
Ghrn   .005     ;  Roughness of wetted hole surface                   [mm]   
Ghcq      0.7   ; Flow coefficient (CQ)for fully dev. turb. flow   
Suff     .01    ; Gate seal U-seal flow factor.    
Scff     .05    ; Gate seal flow factor   
Scrpr   7.19    ; Pressure diff between Prgc and Prup or Prdo causing ...   
Vgc      3    ; Pressurized volume in gate cavity    
Sdf       3     ; Stem Seal dynamic friction factor.        [%]   
Msdf      0.06  ; Min dynamic friction in Stem seal.        [kN]   
Ssf       6     ; Stem packing seal static friction factor  [%]   
Mssf      0.09  ; Min static friction in Stem Packing Seal  [kN]   
Gdf       12     ; Gate Seat dynamic friction factor.   [%]   
Mgdf      0.42   ; Min dynamic friction in Gate Seals   [kN]   
Gsf       14     ; Gate Seal static friction factor     [%]   
Mgsf      0.83   ; Min static friction in Gate Seals    [kN]   
Bsf       2.084  ; Average Belville spring force        [kN]   
Spfric    0     ; Spring friction loss                 [%]   

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     C
  Function     0x1025
  Plugs        1
  Form         1
  Diameter                        6.220  
  Length                            5.0  
  Nplugs                            1.0  
  Rn                            1.50e-3  
  Rhup                            2030.  
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
  Template     C
  Function     0x2025
  Plugs        1
  Form         1
  Diameter                        6.220  
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

;;; Fail close valves
ACTUATOR     A
  Type         FC_FMC-AH700_5"-GV-690_bar-2.9_L
  Tree         1
  Template     C
  Function     0x35
Pdia      162    ; Actuator piston diameter       [mm]   
Msdia     47.64      ; Middle (piston) stem diameter  [mm]   
Sc        598.6     ; Actuator spring constant        [kN/m]   
Spre      0.206     ; Spring pretension             [m]   
Mass      400        ; Mass of accelerated components  [kg]   
Smax      0.1537     ; Actuator stroke.               [m]   
Voc       2.9        ; Pressurized volume in opening cavity    [l]   
Vsdia     53.9       ; Valve (bonnet) stem diameter   [mm]   
  Cvrhp_a                         2030.  
  Cvrha_r                         430.0  
Df        1             ; Actuator Seal dynamic (colomb) friction factor.                                                                                                                                                                                      
Mdf       1.967          ; Min dynamic friction in actuator seals.           [kN]   
Sf        2            ; Actuator Seal static (stiction) friction factor  [%]   
Msf       2.295          ; Min static friction in actuator seals.           [kN]   
Ld        10            ; Linear damping of actuator.   
Vlim      0.0002         ; Velocity limit between stiction and colomb fric [m/s]   
Adf       2     ; Acceleration damping factor    
Psl       12.7        ; piston seal width                    [mm]   
Vsl       9.525          ; valve stem seal width                [mm]   
Mssl      9.525          ; Middle stem seal width               [mm]   
Osdia     47.64          ; Overide (upper) stem diameter                [mm]   
Ossl      9.525          ; Overide stem seal width              [mm]   
Vcc        3             ; Pressurized volume in closing cavity [l]   
Vssl      47.8          ; Valve stem seal width                [mm]   
Sodia     143,7         ; Gate seat OD           [mm]   
Sidia     131         ; Gate seat ID           [mm]   
Sw        18.52          ; Gate seat face width   [mm]   
Gcop      22.7          ; Gate crack open point  [mm]   
Bsdia     0.0             ; Balance stem diameter   
Ghdia    6   ; Gate hole (btwn process bore and gate cavity) diameter [mm]   
Ghlen    20.  ; Total hole length.                                    [mm]   
Ghrn   .005     ;  Roughness of wetted hole surface                   [mm]   
Ghcq      0.7   ; Flow coefficient (CQ)for fully dev. turb. flow   
Suff     .01    ; Gate seal U-seal flow factor.    
Scff     .05    ; Gate seal flow factor   
Scrpr   7.19    ; Pressure diff between Prgc and Prup or Prdo causing ...   
Vgc      3    ; Pressurized volume in gate cavity    
Sdf       3     ; Stem Seal dynamic friction factor.        [%]   
Msdf      0.06  ; Min dynamic friction in Stem seal.        [kN]   
Ssf       6     ; Stem packing seal static friction factor  [%]   
Mssf      0.09  ; Min static friction in Stem Packing Seal  [kN]   
Gdf       12     ; Gate Seat dynamic friction factor.   [%]   
Mgdf      0.42   ; Min dynamic friction in Gate Seals   [kN]   
Gsf       14     ; Gate Seal static friction factor     [%]   
Mgsf      0.83   ; Min static friction in Gate Seals    [kN]   
Bsf       2.084  ; Average Belville spring force        [kN]   
Spfric    0     ; Spring friction loss                 [%]   

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     C
  Function     0x1035
  Plugs        1
  Form         1
  Diameter                        6.220  
  Length                            5.0  
  Nplugs                            1.0  
  Rn                            1.50e-3  
  Rhup                            2030.  
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
  Template     C
  Function     0x2035
  Plugs        1
  Form         1
  Diameter                        6.220  
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

;;; Fail close valves
ACTUATOR     A
  Type         FC_FMC-AH700_2"-GV-690_bar-0.42_L
  Tree         1
  Template     C
  Function     0x45
Pdia      96.5     ; Actuator piston diameter       [mm]   
Msdia     28.45      ; Middle (piston) stem diameter  [mm]   
Sc        430     ; Actuator spring constant        [kN/m]   
Spre      0.0922     ; Spring pretension             [m]   
Mass      100        ; Mass of accelerated components  [kg]   
Smax      0.0645     ; Actuator stroke.               [m]   
Voc       2       ; Pressurized volume in opening cavity    [l]   
Vsdia     28.5      ; Valve (bonnet) stem diameter   [mm]   
  Cvrhp_a                         2030.  
  Cvrha_r                         430.0  
Df        13             ; Actuator Seal dynamic (colomb) friction factor.  [%]   
Mdf       0.14          ; Min dynamic friction in actuator seals.           [kN]   
Sf        15            ; Actuator Seal static (stiction) friction factor  [%]   
Msf       0.34          ; Min static friction in actuator seals.           [kN]   
Ld        10            ; Linear damping of actuator.   
Vlim      0.0002         ; Velocity limit between stiction and colomb fric [m/s]   
Adf       1.8     ; Acceleration damping factor    
Psl       15.74        ; piston seal width                    [mm]   
Vsl       47.78          ; valve stem seal width                [mm]   
Mssl      47.3          ; Middle stem seal width               [mm]   
Osdia     28.5        ; Overide (upper) stem diameter                [mm]   
Ossl      22.23          ; Overide stem seal width              [mm]   
Vcc        2             ; Pressurized volume in closing cavity [l]   
Vssl      47.8          ; Valve stem seal width                [mm]   
Sodia     88.33         ; Gate seat OD           [mm]   
Sidia     52.81         ; Gate seat ID           [mm]   
Sw         7.51         ; Gate seat face width   [mm]   
Gcop      11.3          ; Gate crack open point  [mm]   
Bsdia     0.0             ; Balance stem diameter   
Ghdia    4   ; Gate hole (btwn process bore and gate cavity) diameter [mm]   
Ghlen    10.  ; Total hole length.                                    [mm]   
Ghrn   .005     ;  Roughness of wetted hole surface                   [mm]   
Ghcq      0.7   ; Flow coefficient (CQ)for fully dev. turb. flow   
Suff     .005    ; Gate seal U-seal flow factor.    
Scff     .002    ; Gate seal flow factor   
Scrpr   10.56    ; Pressure diff between Prgc and Prup or Prdo causing ...   
Vgc      4.0    ; Pressurized volume in gate cavity    
Sdf       4     ; Stem Seal dynamic friction factor.        [%]   
Msdf      0.06  ; Min dynamic friction in Stem seal.        [kN]   
Ssf       6     ; Stem packing seal static friction factor  [%]   
Mssf      0.09  ; Min static friction in Stem Packing Seal  [kN]   
Gdf       10     ; Gate Seat dynamic friction factor.   
Mgdf      0.42   ; Min dynamic friction in Gate Seals   
Gsf       20     ; Gate Seal static friction factor   
Mgsf      0.83   ; Min static friction in Gate Seals   
Bsf       2.084  ; Average Belville spring force                [kN]   
Spfric    4.     ; Spring friction loss                         [%]   

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     C
  Function     0x1045
  Plugs        1
  Form         1
  Diameter                        6.220  
  Length                            5.0  
  Nplugs                            1.0  
  Rn                            1.50e-3  
  Rhup                            2030.  
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
  Template     C
  Function     0x2045
  Plugs        1
  Form         1
  Diameter                        6.220  
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

;;; Fail close valves
ACTUATOR     A
  Type         FC_FMC-AH700_2"-GV-690_bar-0.42_L
  Tree         1
  Template     C
  Function     0x55
Pdia      96.5     ; Actuator piston diameter       [mm]   
Msdia     28.45      ; Middle (piston) stem diameter  [mm]   
Sc        430     ; Actuator spring constant        [kN/m]   
Spre      0.0922     ; Spring pretension             [m]   
Mass      100        ; Mass of accelerated components  [kg]   
Smax      0.0645     ; Actuator stroke.               [m]   
Voc       2       ; Pressurized volume in opening cavity    [l]   
Vsdia     28.5      ; Valve (bonnet) stem diameter   [mm]   
  Cvrhp_a                         2030.  
  Cvrha_r                         430.0  
Df        13             ; Actuator Seal dynamic (colomb) friction factor.  [%]   
Mdf       0.14          ; Min dynamic friction in actuator seals.           [kN]   
Sf        15            ; Actuator Seal static (stiction) friction factor  [%]   
Msf       0.34          ; Min static friction in actuator seals.           [kN]   
Ld        10            ; Linear damping of actuator.   
Vlim      0.0002         ; Velocity limit between stiction and colomb fric [m/s]   
Adf       1.8     ; Acceleration damping factor    
Psl       15.74        ; piston seal width                    [mm]   
Vsl       47.78          ; valve stem seal width                [mm]   
Mssl      47.3          ; Middle stem seal width               [mm]   
Osdia     28.5        ; Overide (upper) stem diameter                [mm]   
Ossl      22.23          ; Overide stem seal width              [mm]   
Vcc        2             ; Pressurized volume in closing cavity [l]   
Vssl      47.8          ; Valve stem seal width                [mm]   
Sodia     88.33         ; Gate seat OD           [mm]   
Sidia     52.81         ; Gate seat ID           [mm]   
Sw         7.51         ; Gate seat face width   [mm]   
Gcop      11.3          ; Gate crack open point  [mm]   
Bsdia     0.0             ; Balance stem diameter   
Ghdia    4   ; Gate hole (btwn process bore and gate cavity) diameter [mm]   
Ghlen    10.  ; Total hole length.                                    [mm]   
Ghrn   .005     ;  Roughness of wetted hole surface                   [mm]   
Ghcq      0.7   ; Flow coefficient (CQ)for fully dev. turb. flow   
Suff     .005    ; Gate seal U-seal flow factor.    
Scff     .002    ; Gate seal flow factor   
Scrpr   10.56    ; Pressure diff between Prgc and Prup or Prdo causing ...   
Vgc      4.0    ; Pressurized volume in gate cavity    
Sdf       4     ; Stem Seal dynamic friction factor.        [%]   
Msdf      0.06  ; Min dynamic friction in Stem seal.        [kN]   
Ssf       6     ; Stem packing seal static friction factor  [%]   
Mssf      0.09  ; Min static friction in Stem Packing Seal  [kN]   
Gdf       10     ; Gate Seat dynamic friction factor.   
Mgdf      0.42   ; Min dynamic friction in Gate Seals   
Gsf       20     ; Gate Seal static friction factor   
Mgsf      0.83   ; Min static friction in Gate Seals   
Bsf       2.084  ; Average Belville spring force                [kN]   
Spfric    4.     ; Spring friction loss                         [%]   

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     C
  Function     0x1055
  Plugs        1
  Form         1
  Diameter                        6.220  
  Length                            5.0  
  Nplugs                            1.0  
  Rn                            1.50e-3  
  Rhup                            2030.  
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
  Template     C
  Function     0x2055
  Plugs        1
  Form         1
  Diameter                        6.220  
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

;;; A ball valve described by actuator piston area, ball angle; 0 dgr: fully closed, 90 dgr: fully open
ACTUATOR     A
  Type         BVFO_Perar_10"-BV-405_bar-6.435L
  Tree         1
  Template     C
  Function     0x65
  Pdia                              0.0  
  Msdia                             0.0  
Sc  1420   ;[kN/m] Actuator spring constant.    
Spre  0.25   ;[m] Actuator spring precompression.    
Mass  400.0  ;[kg] Actuator accelerated assembly mass.    
Smax  0.133 ;[m] Actuator maximum stroke.    
Voc  8.785  ;[l] Pressurized volume in Actuator opening cavity.    
  Vsdia                             0.0  
  Cvrhp_a                         35330       
  Cvrha_r                         430.0  
Df  13   ;[%] Dynamic friction in Actuator assembly.    
Mdf  30  ;[kN] Minimum dynamic friction in Actuator assembly.    
Sf  15   ;[%] Static friction in the Ball Valve Actuator assembly.    
Msf  35   ;[kN] Minimum static friction in Actuator assembly.    
Ld  50.0   ;[kNs/m] Actuator assembly velocity dampening.    
Vlim  2.0e-4 ;[m/s] Ball Valve Actuator piston velocity at which transition between dynamic and static friction starts.    
Adf  1.8   ; Actuator acceleration dampening.    
Aopen 48381 ;[mm2] Pro acts on Actuator piston area Aopen.    
Aamb  48381 ;[mm2] Prc acts on Actuator piston area AAmb.    

;;; Actuator open line
LINE         Ao
  Type         Constant
  Tree         1
  Template     C
  Function     0x1065
  Plugs        2
  Form         1
  Diameter                        6.220  
  Length                         110.0            
  Nplugs                         2.0            
  Rn                            1.50e-3  
  Rhup                            35330       
  Rhdo                             30.0  
  Hdiff                             0.0  
  Trnum                           2300.  
  Beta                            24000  
  Binc                              0.0  
  Bexp                              0.0  
  VEcorr                            1.0  
  Mwp                             300.0  

;;; Subsea Control Module
SCM          S
  Tree         2
  Template     C
  Function     0x3
  Depth                           2100.       
  Cv_fwr                          0.250  
  Cv_fwq                         6.0e-3  
  Svol                              4.0  
  Rvol                              4.0  
  PPrup                          600.0            
  PPrdo                          600.0            
  Cvrhp_a                           0.0  

;;; Xmas tree return manifold
MANIFOLD     T
  Tree         2
  Template     C
  Function     0x2004
  Depth                           2100.       
  Volume                         40.0            
  AssistFlowGain                   0.20  
EXHAUST_VALVE T-Ev
  Tree         2
  Template     C
  Function     0x2004
  Cr                             41.0            
  Inc                               3.0  
  Qref                             0.10  
  Tau                             0.010  
  Rh                               10.0  

;;; Xmas-tree bladder
BLADDER      T-Bl
  Tree         2
  Template     C
  Function     0x2004
  Vmax                           40.0            
  Vmin                             0.10  
  Dia                              11.0  
  Len                               5.0  
  Rh                               20.0  
  In_vol                         40.0            

;;; SCM supply line
LINE         Ss
  Type         Constant
  Tree         2
  Template     C
  Function     0x1003
  Plugs        3
  Form         1
  Diameter                        12.70  
  Length                         300.0            
  Nplugs                         3.0            
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
  Tree         2
  Template     C
  Function     0x2004
  Plugs        1
  Form         1
  Diameter                         9.40  
  Length                            7.0  
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
  Tree         2
  Template     C
  Function     0x3
  Cr                                3.0  
  Inc                               3.0  
  Qref                             0.10  
  Tau                             0.010  
  Rh                               10.0  

;;; Fail close valves
ACTUATOR     A
  Type         FC_FMC-AH700_5"-GV-690_bar-2.9_L
  Tree         2
  Template     C
  Function     0x15
Pdia      162    ; Actuator piston diameter       [mm]   
Msdia     47.64      ; Middle (piston) stem diameter  [mm]   
Sc        598.6     ; Actuator spring constant        [kN/m]   
Spre      0.206     ; Spring pretension             [m]   
Mass      400        ; Mass of accelerated components  [kg]   
Smax      0.1537     ; Actuator stroke.               [m]   
Voc       2.9        ; Pressurized volume in opening cavity    [l]   
Vsdia     53.9       ; Valve (bonnet) stem diameter   [mm]   
  Cvrhp_a                         2030.  
  Cvrha_r                         430.0  
Df        1             ; Actuator Seal dynamic (colomb) friction factor.                                                                                                                                                                                      
Mdf       1.967          ; Min dynamic friction in actuator seals.           [kN]   
Sf        2            ; Actuator Seal static (stiction) friction factor  [%]   
Msf       2.295          ; Min static friction in actuator seals.           [kN]   
Ld        10            ; Linear damping of actuator.   
Vlim      0.0002         ; Velocity limit between stiction and colomb fric [m/s]   
Adf       2     ; Acceleration damping factor    
Psl       12.7        ; piston seal width                    [mm]   
Vsl       9.525          ; valve stem seal width                [mm]   
Mssl      9.525          ; Middle stem seal width               [mm]   
Osdia     47.64          ; Overide (upper) stem diameter                [mm]   
Ossl      9.525          ; Overide stem seal width              [mm]   
Vcc        3             ; Pressurized volume in closing cavity [l]   
Vssl      47.8          ; Valve stem seal width                [mm]   
Sodia     143,7         ; Gate seat OD           [mm]   
Sidia     131         ; Gate seat ID           [mm]   
Sw        18.52          ; Gate seat face width   [mm]   
Gcop      22.7          ; Gate crack open point  [mm]   
Bsdia     0.0             ; Balance stem diameter   
Ghdia    6   ; Gate hole (btwn process bore and gate cavity) diameter [mm]   
Ghlen    20.  ; Total hole length.                                    [mm]   
Ghrn   .005     ;  Roughness of wetted hole surface                   [mm]   
Ghcq      0.7   ; Flow coefficient (CQ)for fully dev. turb. flow   
Suff     .01    ; Gate seal U-seal flow factor.    
Scff     .05    ; Gate seal flow factor   
Scrpr   7.19    ; Pressure diff between Prgc and Prup or Prdo causing ...   
Vgc      3    ; Pressurized volume in gate cavity    
Sdf       3     ; Stem Seal dynamic friction factor.        [%]   
Msdf      0.06  ; Min dynamic friction in Stem seal.        [kN]   
Ssf       6     ; Stem packing seal static friction factor  [%]   
Mssf      0.09  ; Min static friction in Stem Packing Seal  [kN]   
Gdf       12     ; Gate Seat dynamic friction factor.   [%]   
Mgdf      0.42   ; Min dynamic friction in Gate Seals   [kN]   
Gsf       14     ; Gate Seal static friction factor     [%]   
Mgsf      0.83   ; Min static friction in Gate Seals    [kN]   
Bsf       2.084  ; Average Belville spring force        [kN]   
Spfric    0     ; Spring friction loss                 [%]   

;;; Actuator open line
LINE         Ao
  Tree         2
  Template     C
  Function     0x1015
  Plugs        1
  Form         1
  Diameter                        6.220  
  Length                            5.0  
  Nplugs                            1.0  
  Rn                            1.50e-3  
  Rhup                            2030.  
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
  Tree         2
  Template     C
  Function     0x2015
  Plugs        1
  Form         1
  Diameter                        6.220  
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

;;; Fail close valves
ACTUATOR     A
  Type         FC_FMC-AH700_5"-GV-690_bar-2.9_L
  Tree         2
  Template     C
  Function     0x25
Pdia      162    ; Actuator piston diameter       [mm]   
Msdia     47.64      ; Middle (piston) stem diameter  [mm]   
Sc        598.6     ; Actuator spring constant        [kN/m]   
Spre      0.206     ; Spring pretension             [m]   
Mass      400        ; Mass of accelerated components  [kg]   
Smax      0.1537     ; Actuator stroke.               [m]   
Voc       2.9        ; Pressurized volume in opening cavity    [l]   
Vsdia     53.9       ; Valve (bonnet) stem diameter   [mm]   
  Cvrhp_a                         2030.  
  Cvrha_r                         430.0  
Df        1             ; Actuator Seal dynamic (colomb) friction factor.                                                                                                                                                                                      
Mdf       1.967          ; Min dynamic friction in actuator seals.           [kN]   
Sf        2            ; Actuator Seal static (stiction) friction factor  [%]   
Msf       2.295          ; Min static friction in actuator seals.           [kN]   
Ld        10            ; Linear damping of actuator.   
Vlim      0.0002         ; Velocity limit between stiction and colomb fric [m/s]   
Adf       2     ; Acceleration damping factor    
Psl       12.7        ; piston seal width                    [mm]   
Vsl       9.525          ; valve stem seal width                [mm]   
Mssl      9.525          ; Middle stem seal width               [mm]   
Osdia     47.64          ; Overide (upper) stem diameter                [mm]   
Ossl      9.525          ; Overide stem seal width              [mm]   
Vcc        3             ; Pressurized volume in closing cavity [l]   
Vssl      47.8          ; Valve stem seal width                [mm]   
Sodia     143,7         ; Gate seat OD           [mm]   
Sidia     131         ; Gate seat ID           [mm]   
Sw        18.52          ; Gate seat face width   [mm]   
Gcop      22.7          ; Gate crack open point  [mm]   
Bsdia     0.0             ; Balance stem diameter   
Ghdia    6   ; Gate hole (btwn process bore and gate cavity) diameter [mm]   
Ghlen    20.  ; Total hole length.                                    [mm]   
Ghrn   .005     ;  Roughness of wetted hole surface                   [mm]   
Ghcq      0.7   ; Flow coefficient (CQ)for fully dev. turb. flow   
Suff     .01    ; Gate seal U-seal flow factor.    
Scff     .05    ; Gate seal flow factor   
Scrpr   7.19    ; Pressure diff between Prgc and Prup or Prdo causing ...   
Vgc      3    ; Pressurized volume in gate cavity    
Sdf       3     ; Stem Seal dynamic friction factor.        [%]   
Msdf      0.06  ; Min dynamic friction in Stem seal.        [kN]   
Ssf       6     ; Stem packing seal static friction factor  [%]   
Mssf      0.09  ; Min static friction in Stem Packing Seal  [kN]   
Gdf       12     ; Gate Seat dynamic friction factor.   [%]   
Mgdf      0.42   ; Min dynamic friction in Gate Seals   [kN]   
Gsf       14     ; Gate Seal static friction factor     [%]   
Mgsf      0.83   ; Min static friction in Gate Seals    [kN]   
Bsf       2.084  ; Average Belville spring force        [kN]   
Spfric    0     ; Spring friction loss                 [%]   

;;; Actuator open line
LINE         Ao
  Tree         2
  Template     C
  Function     0x1025
  Plugs        1
  Form         1
  Diameter                        6.220  
  Length                            5.0  
  Nplugs                            1.0  
  Rn                            1.50e-3  
  Rhup                            2030.  
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
  Tree         2
  Template     C
  Function     0x2025
  Plugs        1
  Form         1
  Diameter                        6.220  
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

;;; Fail close valves
ACTUATOR     A
  Type         FC_FMC-AH700_5"-GV-690_bar-2.9_L
  Tree         2
  Template     C
  Function     0x35
Pdia      162    ; Actuator piston diameter       [mm]   
Msdia     47.64      ; Middle (piston) stem diameter  [mm]   
Sc        598.6     ; Actuator spring constant        [kN/m]   
Spre      0.206     ; Spring pretension             [m]   
Mass      400        ; Mass of accelerated components  [kg]   
Smax      0.1537     ; Actuator stroke.               [m]   
Voc       2.9        ; Pressurized volume in opening cavity    [l]   
Vsdia     53.9       ; Valve (bonnet) stem diameter   [mm]   
  Cvrhp_a                         2030.  
  Cvrha_r                         430.0  
Df        1             ; Actuator Seal dynamic (colomb) friction factor.                                                                                                                                                                                      
Mdf       1.967          ; Min dynamic friction in actuator seals.           [kN]   
Sf        2            ; Actuator Seal static (stiction) friction factor  [%]   
Msf       2.295          ; Min static friction in actuator seals.           [kN]   
Ld        10            ; Linear damping of actuator.   
Vlim      0.0002         ; Velocity limit between stiction and colomb fric [m/s]   
Adf       2     ; Acceleration damping factor    
Psl       12.7        ; piston seal width                    [mm]   
Vsl       9.525          ; valve stem seal width                [mm]   
Mssl      9.525          ; Middle stem seal width               [mm]   
Osdia     47.64          ; Overide (upper) stem diameter                [mm]   
Ossl      9.525          ; Overide stem seal width              [mm]   
Vcc        3             ; Pressurized volume in closing cavity [l]   
Vssl      47.8          ; Valve stem seal width                [mm]   
Sodia     143,7         ; Gate seat OD           [mm]   
Sidia     131         ; Gate seat ID           [mm]   
Sw        18.52          ; Gate seat face width   [mm]   
Gcop      22.7          ; Gate crack open point  [mm]   
Bsdia     0.0             ; Balance stem diameter   
Ghdia    6   ; Gate hole (btwn process bore and gate cavity) diameter [mm]   
Ghlen    20.  ; Total hole length.                                    [mm]   
Ghrn   .005     ;  Roughness of wetted hole surface                   [mm]   
Ghcq      0.7   ; Flow coefficient (CQ)for fully dev. turb. flow   
Suff     .01    ; Gate seal U-seal flow factor.    
Scff     .05    ; Gate seal flow factor   
Scrpr   7.19    ; Pressure diff between Prgc and Prup or Prdo causing ...   
Vgc      3    ; Pressurized volume in gate cavity    
Sdf       3     ; Stem Seal dynamic friction factor.        [%]   
Msdf      0.06  ; Min dynamic friction in Stem seal.        [kN]   
Ssf       6     ; Stem packing seal static friction factor  [%]   
Mssf      0.09  ; Min static friction in Stem Packing Seal  [kN]   
Gdf       12     ; Gate Seat dynamic friction factor.   [%]   
Mgdf      0.42   ; Min dynamic friction in Gate Seals   [kN]   
Gsf       14     ; Gate Seal static friction factor     [%]   
Mgsf      0.83   ; Min static friction in Gate Seals    [kN]   
Bsf       2.084  ; Average Belville spring force        [kN]   
Spfric    0     ; Spring friction loss                 [%]   

;;; Actuator open line
LINE         Ao
  Tree         2
  Template     C
  Function     0x1035
  Plugs        1
  Form         1
  Diameter                        6.220  
  Length                            5.0  
  Nplugs                            1.0  
  Rn                            1.50e-3  
  Rhup                            2030.  
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
  Tree         2
  Template     C
  Function     0x2035
  Plugs        1
  Form         1
  Diameter                        6.220  
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

;;; Fail close valves
ACTUATOR     A
  Type         FC_FMC-AH700_2"-GV-690_bar-0.42_L
  Tree         2
  Template     C
  Function     0x45
Pdia      96.5     ; Actuator piston diameter       [mm]   
Msdia     28.45      ; Middle (piston) stem diameter  [mm]   
Sc        430     ; Actuator spring constant        [kN/m]   
Spre      0.0922     ; Spring pretension             [m]   
Mass      100        ; Mass of accelerated components  [kg]   
Smax      0.0645     ; Actuator stroke.               [m]   
Voc       2       ; Pressurized volume in opening cavity    [l]   
Vsdia     28.5      ; Valve (bonnet) stem diameter   [mm]   
  Cvrhp_a                         2030.  
  Cvrha_r                         430.0  
Df        13             ; Actuator Seal dynamic (colomb) friction factor.  [%]   
Mdf       0.14          ; Min dynamic friction in actuator seals.           [kN]   
Sf        15            ; Actuator Seal static (stiction) friction factor  [%]   
Msf       0.34          ; Min static friction in actuator seals.           [kN]   
Ld        10            ; Linear damping of actuator.   
Vlim      0.0002         ; Velocity limit between stiction and colomb fric [m/s]   
Adf       1.8     ; Acceleration damping factor    
Psl       15.74        ; piston seal width                    [mm]   
Vsl       47.78          ; valve stem seal width                [mm]   
Mssl      47.3          ; Middle stem seal width               [mm]   
Osdia     28.5        ; Overide (upper) stem diameter                [mm]   
Ossl      22.23          ; Overide stem seal width              [mm]   
Vcc        2             ; Pressurized volume in closing cavity [l]   
Vssl      47.8          ; Valve stem seal width                [mm]   
Sodia     88.33         ; Gate seat OD           [mm]   
Sidia     52.81         ; Gate seat ID           [mm]   
Sw         7.51         ; Gate seat face width   [mm]   
Gcop      11.3          ; Gate crack open point  [mm]   
Bsdia     0.0             ; Balance stem diameter   
Ghdia    4   ; Gate hole (btwn process bore and gate cavity) diameter [mm]   
Ghlen    10.  ; Total hole length.                                    [mm]   
Ghrn   .005     ;  Roughness of wetted hole surface                   [mm]   
Ghcq      0.7   ; Flow coefficient (CQ)for fully dev. turb. flow   
Suff     .005    ; Gate seal U-seal flow factor.    
Scff     .002    ; Gate seal flow factor   
Scrpr   10.56    ; Pressure diff between Prgc and Prup or Prdo causing ...   
Vgc      4.0    ; Pressurized volume in gate cavity    
Sdf       4     ; Stem Seal dynamic friction factor.        [%]   
Msdf      0.06  ; Min dynamic friction in Stem seal.        [kN]   
Ssf       6     ; Stem packing seal static friction factor  [%]   
Mssf      0.09  ; Min static friction in Stem Packing Seal  [kN]   
Gdf       10     ; Gate Seat dynamic friction factor.   
Mgdf      0.42   ; Min dynamic friction in Gate Seals   
Gsf       20     ; Gate Seal static friction factor   
Mgsf      0.83   ; Min static friction in Gate Seals   
Bsf       2.084  ; Average Belville spring force                [kN]   
Spfric    4.     ; Spring friction loss                         [%]   

;;; Actuator open line
LINE         Ao
  Tree         2
  Template     C
  Function     0x1045
  Plugs        1
  Form         1
  Diameter                        6.220  
  Length                            5.0  
  Nplugs                            1.0  
  Rn                            1.50e-3  
  Rhup                            2030.  
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
  Tree         2
  Template     C
  Function     0x2045
  Plugs        1
  Form         1
  Diameter                        6.220  
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

;;; Fail close valves
ACTUATOR     A
  Type         FC_FMC-AH700_2"-GV-690_bar-0.42_L
  Tree         2
  Template     C
  Function     0x55
Pdia      96.5     ; Actuator piston diameter       [mm]   
Msdia     28.45      ; Middle (piston) stem diameter  [mm]   
Sc        430     ; Actuator spring constant        [kN/m]   
Spre      0.0922     ; Spring pretension             [m]   
Mass      100        ; Mass of accelerated components  [kg]   
Smax      0.0645     ; Actuator stroke.               [m]   
Voc       2       ; Pressurized volume in opening cavity    [l]   
Vsdia     28.5      ; Valve (bonnet) stem diameter   [mm]   
  Cvrhp_a                         2030.  
  Cvrha_r                         430.0  
Df        13             ; Actuator Seal dynamic (colomb) friction factor.  [%]   
Mdf       0.14          ; Min dynamic friction in actuator seals.           [kN]   
Sf        15            ; Actuator Seal static (stiction) friction factor  [%]   
Msf       0.34          ; Min static friction in actuator seals.           [kN]   
Ld        10            ; Linear damping of actuator.   
Vlim      0.0002         ; Velocity limit between stiction and colomb fric [m/s]   
Adf       1.8     ; Acceleration damping factor    
Psl       15.74        ; piston seal width                    [mm]   
Vsl       47.78          ; valve stem seal width                [mm]   
Mssl      47.3          ; Middle stem seal width               [mm]   
Osdia     28.5        ; Overide (upper) stem diameter                [mm]   
Ossl      22.23          ; Overide stem seal width              [mm]   
Vcc        2             ; Pressurized volume in closing cavity [l]   
Vssl      47.8          ; Valve stem seal width                [mm]   
Sodia     88.33         ; Gate seat OD           [mm]   
Sidia     52.81         ; Gate seat ID           [mm]   
Sw         7.51         ; Gate seat face width   [mm]   
Gcop      11.3          ; Gate crack open point  [mm]   
Bsdia     0.0             ; Balance stem diameter   
Ghdia    4   ; Gate hole (btwn process bore and gate cavity) diameter [mm]   
Ghlen    10.  ; Total hole length.                                    [mm]   
Ghrn   .005     ;  Roughness of wetted hole surface                   [mm]   
Ghcq      0.7   ; Flow coefficient (CQ)for fully dev. turb. flow   
Suff     .005    ; Gate seal U-seal flow factor.    
Scff     .002    ; Gate seal flow factor   
Scrpr   10.56    ; Pressure diff between Prgc and Prup or Prdo causing ...   
Vgc      4.0    ; Pressurized volume in gate cavity    
Sdf       4     ; Stem Seal dynamic friction factor.        [%]   
Msdf      0.06  ; Min dynamic friction in Stem seal.        [kN]   
Ssf       6     ; Stem packing seal static friction factor  [%]   
Mssf      0.09  ; Min static friction in Stem Packing Seal  [kN]   
Gdf       10     ; Gate Seat dynamic friction factor.   
Mgdf      0.42   ; Min dynamic friction in Gate Seals   
Gsf       20     ; Gate Seal static friction factor   
Mgsf      0.83   ; Min static friction in Gate Seals   
Bsf       2.084  ; Average Belville spring force                [kN]   
Spfric    4.     ; Spring friction loss                         [%]   

;;; Actuator open line
LINE         Ao
  Tree         2
  Template     C
  Function     0x1055
  Plugs        1
  Form         1
  Diameter                        6.220  
  Length                            5.0  
  Nplugs                            1.0  
  Rn                            1.50e-3  
  Rhup                            2030.  
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
  Tree         2
  Template     C
  Function     0x2055
  Plugs        1
  Form         1
  Diameter                        6.220  
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

;;; Subsea Control Module
SCM          S
  Tree         1
  Template     D
  Function     0x3
  Depth                           2100.       
  Cv_fwr                          0.250  
  Cv_fwq                         6.0e-3  
  Svol                              4.0  
  Rvol                              4.0  
  PPrup                          600.0            
  PPrdo                          600.0            
  Cvrhp_a                           0.0  

;;; Xmas tree return manifold
MANIFOLD     T
  Tree         1
  Template     D
  Function     0x2004
  Depth                           2100.       
  Volume                         40.0            
  AssistFlowGain                   0.20  
EXHAUST_VALVE T-Ev
  Tree         1
  Template     D
  Function     0x2004
  Cr                             41.0            
  Inc                               3.0  
  Qref                             0.10  
  Tau                             0.010  
  Rh                               10.0  

;;; Xmas-tree bladder
BLADDER      T-Bl
  Tree         1
  Template     D
  Function     0x2004
  Vmax                           40.0            
  Vmin                             0.10  
  Dia                              11.0  
  Len                               5.0  
  Rh                               20.0  
  In_vol                         40.0            

;;; SCM supply line
LINE         Ss
  Type         Constant
  Tree         1
  Template     D
  Function     0x1003
  Plugs        2
  Form         1
  Diameter                        12.70  
  Length                         110.0            
  Nplugs                         2.0            
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
  Template     D
  Function     0x2004
  Plugs        1
  Form         1
  Diameter                         9.40  
  Length                            7.0  
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
  Template     D
  Function     0x3
  Cr                                3.0  
  Inc                               3.0  
  Qref                             0.10  
  Tau                             0.010  
  Rh                               10.0  

;;; Fail close valves
ACTUATOR     A
  Type         FC_FMC-AH700_5"-GV-690_bar-2.9_L
  Tree         1
  Template     D
  Function     0x15
Pdia      162    ; Actuator piston diameter       [mm]   
Msdia     47.64      ; Middle (piston) stem diameter  [mm]   
Sc        598.6     ; Actuator spring constant        [kN/m]   
Spre      0.206     ; Spring pretension             [m]   
Mass      400        ; Mass of accelerated components  [kg]   
Smax      0.1537     ; Actuator stroke.               [m]   
Voc       2.9        ; Pressurized volume in opening cavity    [l]   
Vsdia     53.9       ; Valve (bonnet) stem diameter   [mm]   
  Cvrhp_a                         2030.  
  Cvrha_r                         430.0  
Df        1             ; Actuator Seal dynamic (colomb) friction factor.                                                                                                                                                                                      
Mdf       1.967          ; Min dynamic friction in actuator seals.           [kN]   
Sf        2            ; Actuator Seal static (stiction) friction factor  [%]   
Msf       2.295          ; Min static friction in actuator seals.           [kN]   
Ld        10            ; Linear damping of actuator.   
Vlim      0.0002         ; Velocity limit between stiction and colomb fric [m/s]   
Adf       2     ; Acceleration damping factor    
Psl       12.7        ; piston seal width                    [mm]   
Vsl       9.525          ; valve stem seal width                [mm]   
Mssl      9.525          ; Middle stem seal width               [mm]   
Osdia     47.64          ; Overide (upper) stem diameter                [mm]   
Ossl      9.525          ; Overide stem seal width              [mm]   
Vcc        3             ; Pressurized volume in closing cavity [l]   
Vssl      47.8          ; Valve stem seal width                [mm]   
Sodia     143,7         ; Gate seat OD           [mm]   
Sidia     131         ; Gate seat ID           [mm]   
Sw        18.52          ; Gate seat face width   [mm]   
Gcop      22.7          ; Gate crack open point  [mm]   
Bsdia     0.0             ; Balance stem diameter   
Ghdia    6   ; Gate hole (btwn process bore and gate cavity) diameter [mm]   
Ghlen    20.  ; Total hole length.                                    [mm]   
Ghrn   .005     ;  Roughness of wetted hole surface                   [mm]   
Ghcq      0.7   ; Flow coefficient (CQ)for fully dev. turb. flow   
Suff     .01    ; Gate seal U-seal flow factor.    
Scff     .05    ; Gate seal flow factor   
Scrpr   7.19    ; Pressure diff between Prgc and Prup or Prdo causing ...   
Vgc      3    ; Pressurized volume in gate cavity    
Sdf       3     ; Stem Seal dynamic friction factor.        [%]   
Msdf      0.06  ; Min dynamic friction in Stem seal.        [kN]   
Ssf       6     ; Stem packing seal static friction factor  [%]   
Mssf      0.09  ; Min static friction in Stem Packing Seal  [kN]   
Gdf       12     ; Gate Seat dynamic friction factor.   [%]   
Mgdf      0.42   ; Min dynamic friction in Gate Seals   [kN]   
Gsf       14     ; Gate Seal static friction factor     [%]   
Mgsf      0.83   ; Min static friction in Gate Seals    [kN]   
Bsf       2.084  ; Average Belville spring force        [kN]   
Spfric    0     ; Spring friction loss                 [%]   

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     D
  Function     0x1015
  Plugs        1
  Form         1
  Diameter                        6.220  
  Length                            5.0  
  Nplugs                            1.0  
  Rn                            1.50e-3  
  Rhup                            2030.  
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
  Template     D
  Function     0x2015
  Plugs        1
  Form         1
  Diameter                        6.220  
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

;;; Fail close valves
ACTUATOR     A
  Type         FC_FMC-AH700_5"-GV-690_bar-2.9_L
  Tree         1
  Template     D
  Function     0x25
Pdia      162    ; Actuator piston diameter       [mm]   
Msdia     47.64      ; Middle (piston) stem diameter  [mm]   
Sc        598.6     ; Actuator spring constant        [kN/m]   
Spre      0.206     ; Spring pretension             [m]   
Mass      400        ; Mass of accelerated components  [kg]   
Smax      0.1537     ; Actuator stroke.               [m]   
Voc       2.9        ; Pressurized volume in opening cavity    [l]   
Vsdia     53.9       ; Valve (bonnet) stem diameter   [mm]   
  Cvrhp_a                         2030.  
  Cvrha_r                         430.0  
Df        1             ; Actuator Seal dynamic (colomb) friction factor.                                                                                                                                                                                      
Mdf       1.967          ; Min dynamic friction in actuator seals.           [kN]   
Sf        2            ; Actuator Seal static (stiction) friction factor  [%]   
Msf       2.295          ; Min static friction in actuator seals.           [kN]   
Ld        10            ; Linear damping of actuator.   
Vlim      0.0002         ; Velocity limit between stiction and colomb fric [m/s]   
Adf       2     ; Acceleration damping factor    
Psl       12.7        ; piston seal width                    [mm]   
Vsl       9.525          ; valve stem seal width                [mm]   
Mssl      9.525          ; Middle stem seal width               [mm]   
Osdia     47.64          ; Overide (upper) stem diameter                [mm]   
Ossl      9.525          ; Overide stem seal width              [mm]   
Vcc        3             ; Pressurized volume in closing cavity [l]   
Vssl      47.8          ; Valve stem seal width                [mm]   
Sodia     143,7         ; Gate seat OD           [mm]   
Sidia     131         ; Gate seat ID           [mm]   
Sw        18.52          ; Gate seat face width   [mm]   
Gcop      22.7          ; Gate crack open point  [mm]   
Bsdia     0.0             ; Balance stem diameter   
Ghdia    6   ; Gate hole (btwn process bore and gate cavity) diameter [mm]   
Ghlen    20.  ; Total hole length.                                    [mm]   
Ghrn   .005     ;  Roughness of wetted hole surface                   [mm]   
Ghcq      0.7   ; Flow coefficient (CQ)for fully dev. turb. flow   
Suff     .01    ; Gate seal U-seal flow factor.    
Scff     .05    ; Gate seal flow factor   
Scrpr   7.19    ; Pressure diff between Prgc and Prup or Prdo causing ...   
Vgc      3    ; Pressurized volume in gate cavity    
Sdf       3     ; Stem Seal dynamic friction factor.        [%]   
Msdf      0.06  ; Min dynamic friction in Stem seal.        [kN]   
Ssf       6     ; Stem packing seal static friction factor  [%]   
Mssf      0.09  ; Min static friction in Stem Packing Seal  [kN]   
Gdf       12     ; Gate Seat dynamic friction factor.   [%]   
Mgdf      0.42   ; Min dynamic friction in Gate Seals   [kN]   
Gsf       14     ; Gate Seal static friction factor     [%]   
Mgsf      0.83   ; Min static friction in Gate Seals    [kN]   
Bsf       2.084  ; Average Belville spring force        [kN]   
Spfric    0     ; Spring friction loss                 [%]   

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     D
  Function     0x1025
  Plugs        1
  Form         1
  Diameter                        6.220  
  Length                            5.0  
  Nplugs                            1.0  
  Rn                            1.50e-3  
  Rhup                            2030.  
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
  Template     D
  Function     0x2025
  Plugs        1
  Form         1
  Diameter                        6.220  
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

;;; Fail close valves
ACTUATOR     A
  Type         FC_FMC-AH700_5"-GV-690_bar-2.9_L
  Tree         1
  Template     D
  Function     0x35
Pdia      162    ; Actuator piston diameter       [mm]   
Msdia     47.64      ; Middle (piston) stem diameter  [mm]   
Sc        598.6     ; Actuator spring constant        [kN/m]   
Spre      0.206     ; Spring pretension             [m]   
Mass      400        ; Mass of accelerated components  [kg]   
Smax      0.1537     ; Actuator stroke.               [m]   
Voc       2.9        ; Pressurized volume in opening cavity    [l]   
Vsdia     53.9       ; Valve (bonnet) stem diameter   [mm]   
  Cvrhp_a                         2030.  
  Cvrha_r                         430.0  
Df        1             ; Actuator Seal dynamic (colomb) friction factor.                                                                                                                                                                                      
Mdf       1.967          ; Min dynamic friction in actuator seals.           [kN]   
Sf        2            ; Actuator Seal static (stiction) friction factor  [%]   
Msf       2.295          ; Min static friction in actuator seals.           [kN]   
Ld        10            ; Linear damping of actuator.   
Vlim      0.0002         ; Velocity limit between stiction and colomb fric [m/s]   
Adf       2     ; Acceleration damping factor    
Psl       12.7        ; piston seal width                    [mm]   
Vsl       9.525          ; valve stem seal width                [mm]   
Mssl      9.525          ; Middle stem seal width               [mm]   
Osdia     47.64          ; Overide (upper) stem diameter                [mm]   
Ossl      9.525          ; Overide stem seal width              [mm]   
Vcc        3             ; Pressurized volume in closing cavity [l]   
Vssl      47.8          ; Valve stem seal width                [mm]   
Sodia     143,7         ; Gate seat OD           [mm]   
Sidia     131         ; Gate seat ID           [mm]   
Sw        18.52          ; Gate seat face width   [mm]   
Gcop      22.7          ; Gate crack open point  [mm]   
Bsdia     0.0             ; Balance stem diameter   
Ghdia    6   ; Gate hole (btwn process bore and gate cavity) diameter [mm]   
Ghlen    20.  ; Total hole length.                                    [mm]   
Ghrn   .005     ;  Roughness of wetted hole surface                   [mm]   
Ghcq      0.7   ; Flow coefficient (CQ)for fully dev. turb. flow   
Suff     .01    ; Gate seal U-seal flow factor.    
Scff     .05    ; Gate seal flow factor   
Scrpr   7.19    ; Pressure diff between Prgc and Prup or Prdo causing ...   
Vgc      3    ; Pressurized volume in gate cavity    
Sdf       3     ; Stem Seal dynamic friction factor.        [%]   
Msdf      0.06  ; Min dynamic friction in Stem seal.        [kN]   
Ssf       6     ; Stem packing seal static friction factor  [%]   
Mssf      0.09  ; Min static friction in Stem Packing Seal  [kN]   
Gdf       12     ; Gate Seat dynamic friction factor.   [%]   
Mgdf      0.42   ; Min dynamic friction in Gate Seals   [kN]   
Gsf       14     ; Gate Seal static friction factor     [%]   
Mgsf      0.83   ; Min static friction in Gate Seals    [kN]   
Bsf       2.084  ; Average Belville spring force        [kN]   
Spfric    0     ; Spring friction loss                 [%]   

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     D
  Function     0x1035
  Plugs        1
  Form         1
  Diameter                        6.220  
  Length                            5.0  
  Nplugs                            1.0  
  Rn                            1.50e-3  
  Rhup                            2030.  
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
  Template     D
  Function     0x2035
  Plugs        1
  Form         1
  Diameter                        6.220  
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

;;; Fail close valves
ACTUATOR     A
  Type         FC_FMC-AH700_2"-GV-690_bar-0.42_L
  Tree         1
  Template     D
  Function     0x45
Pdia      96.5     ; Actuator piston diameter       [mm]   
Msdia     28.45      ; Middle (piston) stem diameter  [mm]   
Sc        430     ; Actuator spring constant        [kN/m]   
Spre      0.0922     ; Spring pretension             [m]   
Mass      100        ; Mass of accelerated components  [kg]   
Smax      0.0645     ; Actuator stroke.               [m]   
Voc       2       ; Pressurized volume in opening cavity    [l]   
Vsdia     28.5      ; Valve (bonnet) stem diameter   [mm]   
  Cvrhp_a                         2030.  
  Cvrha_r                         430.0  
Df        13             ; Actuator Seal dynamic (colomb) friction factor.  [%]   
Mdf       0.14          ; Min dynamic friction in actuator seals.           [kN]   
Sf        15            ; Actuator Seal static (stiction) friction factor  [%]   
Msf       0.34          ; Min static friction in actuator seals.           [kN]   
Ld        10            ; Linear damping of actuator.   
Vlim      0.0002         ; Velocity limit between stiction and colomb fric [m/s]   
Adf       1.8     ; Acceleration damping factor    
Psl       15.74        ; piston seal width                    [mm]   
Vsl       47.78          ; valve stem seal width                [mm]   
Mssl      47.3          ; Middle stem seal width               [mm]   
Osdia     28.5        ; Overide (upper) stem diameter                [mm]   
Ossl      22.23          ; Overide stem seal width              [mm]   
Vcc        2             ; Pressurized volume in closing cavity [l]   
Vssl      47.8          ; Valve stem seal width                [mm]   
Sodia     88.33         ; Gate seat OD           [mm]   
Sidia     52.81         ; Gate seat ID           [mm]   
Sw         7.51         ; Gate seat face width   [mm]   
Gcop      11.3          ; Gate crack open point  [mm]   
Bsdia     0.0             ; Balance stem diameter   
Ghdia    4   ; Gate hole (btwn process bore and gate cavity) diameter [mm]   
Ghlen    10.  ; Total hole length.                                    [mm]   
Ghrn   .005     ;  Roughness of wetted hole surface                   [mm]   
Ghcq      0.7   ; Flow coefficient (CQ)for fully dev. turb. flow   
Suff     .005    ; Gate seal U-seal flow factor.    
Scff     .002    ; Gate seal flow factor   
Scrpr   10.56    ; Pressure diff between Prgc and Prup or Prdo causing ...   
Vgc      4.0    ; Pressurized volume in gate cavity    
Sdf       4     ; Stem Seal dynamic friction factor.        [%]   
Msdf      0.06  ; Min dynamic friction in Stem seal.        [kN]   
Ssf       6     ; Stem packing seal static friction factor  [%]   
Mssf      0.09  ; Min static friction in Stem Packing Seal  [kN]   
Gdf       10     ; Gate Seat dynamic friction factor.   
Mgdf      0.42   ; Min dynamic friction in Gate Seals   
Gsf       20     ; Gate Seal static friction factor   
Mgsf      0.83   ; Min static friction in Gate Seals   
Bsf       2.084  ; Average Belville spring force                [kN]   
Spfric    4.     ; Spring friction loss                         [%]   

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     D
  Function     0x1045
  Plugs        1
  Form         1
  Diameter                        6.220  
  Length                            5.0  
  Nplugs                            1.0  
  Rn                            1.50e-3  
  Rhup                            2030.  
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
  Template     D
  Function     0x2045
  Plugs        1
  Form         1
  Diameter                        6.220  
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

;;; Fail close valves
ACTUATOR     A
  Type         FC_FMC-AH700_2"-GV-690_bar-0.42_L
  Tree         1
  Template     D
  Function     0x55
Pdia      96.5     ; Actuator piston diameter       [mm]   
Msdia     28.45      ; Middle (piston) stem diameter  [mm]   
Sc        430     ; Actuator spring constant        [kN/m]   
Spre      0.0922     ; Spring pretension             [m]   
Mass      100        ; Mass of accelerated components  [kg]   
Smax      0.0645     ; Actuator stroke.               [m]   
Voc       2       ; Pressurized volume in opening cavity    [l]   
Vsdia     28.5      ; Valve (bonnet) stem diameter   [mm]   
  Cvrhp_a                         2030.  
  Cvrha_r                         430.0  
Df        13             ; Actuator Seal dynamic (colomb) friction factor.  [%]   
Mdf       0.14          ; Min dynamic friction in actuator seals.           [kN]   
Sf        15            ; Actuator Seal static (stiction) friction factor  [%]   
Msf       0.34          ; Min static friction in actuator seals.           [kN]   
Ld        10            ; Linear damping of actuator.   
Vlim      0.0002         ; Velocity limit between stiction and colomb fric [m/s]   
Adf       1.8     ; Acceleration damping factor    
Psl       15.74        ; piston seal width                    [mm]   
Vsl       47.78          ; valve stem seal width                [mm]   
Mssl      47.3          ; Middle stem seal width               [mm]   
Osdia     28.5        ; Overide (upper) stem diameter                [mm]   
Ossl      22.23          ; Overide stem seal width              [mm]   
Vcc        2             ; Pressurized volume in closing cavity [l]   
Vssl      47.8          ; Valve stem seal width                [mm]   
Sodia     88.33         ; Gate seat OD           [mm]   
Sidia     52.81         ; Gate seat ID           [mm]   
Sw         7.51         ; Gate seat face width   [mm]   
Gcop      11.3          ; Gate crack open point  [mm]   
Bsdia     0.0             ; Balance stem diameter   
Ghdia    4   ; Gate hole (btwn process bore and gate cavity) diameter [mm]   
Ghlen    10.  ; Total hole length.                                    [mm]   
Ghrn   .005     ;  Roughness of wetted hole surface                   [mm]   
Ghcq      0.7   ; Flow coefficient (CQ)for fully dev. turb. flow   
Suff     .005    ; Gate seal U-seal flow factor.    
Scff     .002    ; Gate seal flow factor   
Scrpr   10.56    ; Pressure diff between Prgc and Prup or Prdo causing ...   
Vgc      4.0    ; Pressurized volume in gate cavity    
Sdf       4     ; Stem Seal dynamic friction factor.        [%]   
Msdf      0.06  ; Min dynamic friction in Stem seal.        [kN]   
Ssf       6     ; Stem packing seal static friction factor  [%]   
Mssf      0.09  ; Min static friction in Stem Packing Seal  [kN]   
Gdf       10     ; Gate Seat dynamic friction factor.   
Mgdf      0.42   ; Min dynamic friction in Gate Seals   
Gsf       20     ; Gate Seal static friction factor   
Mgsf      0.83   ; Min static friction in Gate Seals   
Bsf       2.084  ; Average Belville spring force                [kN]   
Spfric    4.     ; Spring friction loss                         [%]   

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     D
  Function     0x1055
  Plugs        1
  Form         1
  Diameter                        6.220  
  Length                            5.0  
  Nplugs                            1.0  
  Rn                            1.50e-3  
  Rhup                            2030.  
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
  Template     D
  Function     0x2055
  Plugs        1
  Form         1
  Diameter                        6.220  
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

;;; A ball valve described by actuator piston area, ball angle; 0 dgr: fully closed, 90 dgr: fully open
ACTUATOR     A
  Type         BVFO_Perar_10"-BV-405_bar-6.435L
  Tree         1
  Template     D
  Function     0x65
  Pdia                              0.0  
  Msdia                             0.0  
Sc  1420   ;[kN/m] Actuator spring constant.    
Spre  0.25   ;[m] Actuator spring precompression.    
Mass  400.0  ;[kg] Actuator accelerated assembly mass.    
Smax  0.133 ;[m] Actuator maximum stroke.    
Voc  8.785  ;[l] Pressurized volume in Actuator opening cavity.    
  Vsdia                             0.0  
  Cvrhp_a                         35330       
  Cvrha_r                         430.0  
Df  13   ;[%] Dynamic friction in Actuator assembly.    
Mdf  30  ;[kN] Minimum dynamic friction in Actuator assembly.    
Sf  15   ;[%] Static friction in the Ball Valve Actuator assembly.    
Msf  35   ;[kN] Minimum static friction in Actuator assembly.    
Ld  50.0   ;[kNs/m] Actuator assembly velocity dampening.    
Vlim  2.0e-4 ;[m/s] Ball Valve Actuator piston velocity at which transition between dynamic and static friction starts.    
Adf  1.8   ; Actuator acceleration dampening.    
Aopen 48381 ;[mm2] Pro acts on Actuator piston area Aopen.    
Aamb  48381 ;[mm2] Prc acts on Actuator piston area AAmb.    

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     D
  Function     0x1065
  Plugs        1
  Form         1
  Diameter                        6.220  
  Length                          100.0  
  Nplugs                            1.0  
  Rn                            1.50e-3  
  Rhup                            35330       
  Rhdo                             30.0  
  Hdiff                             0.0  
  Trnum                           2300.  
  Beta                            24000  
  Binc                              0.0  
  Bexp                              0.0  
  VEcorr                            1.0  
  Mwp                             300.0  

;;; Fail close valves
ACTUATOR     A
  Type         FC_FMC-AH700_5"-GV-690_bar-2.9_L
  Tree         1
  Template     A
  Function     0x75
Pdia      162    ; Actuator piston diameter       [mm]   
Msdia     47.64      ; Middle (piston) stem diameter  [mm]   
Sc        598.6     ; Actuator spring constant        [kN/m]   
Spre      0.206     ; Spring pretension             [m]   
Mass      400        ; Mass of accelerated components  [kg]   
Smax      0.1537     ; Actuator stroke.               [m]   
Voc       2.9        ; Pressurized volume in opening cavity    [l]   
Vsdia     53.9       ; Valve (bonnet) stem diameter   [mm]   
  Cvrhp_a                         35330       
  Cvrha_r                         430.0  
Df        1             ; Actuator Seal dynamic (colomb) friction factor.                                                                                                                                                                                      
Mdf       1.967          ; Min dynamic friction in actuator seals.           [kN]   
Sf        2            ; Actuator Seal static (stiction) friction factor  [%]   
Msf       2.295          ; Min static friction in actuator seals.           [kN]   
Ld        10            ; Linear damping of actuator.   
Vlim      0.0002         ; Velocity limit between stiction and colomb fric [m/s]   
Adf       2     ; Acceleration damping factor    
Psl       12.7        ; piston seal width                    [mm]   
Vsl       9.525          ; valve stem seal width                [mm]   
Mssl      9.525          ; Middle stem seal width               [mm]   
Osdia     47.64          ; Overide (upper) stem diameter                [mm]   
Ossl      9.525          ; Overide stem seal width              [mm]   
Vcc        3             ; Pressurized volume in closing cavity [l]   
Vssl      47.8          ; Valve stem seal width                [mm]   
Sodia     143,7         ; Gate seat OD           [mm]   
Sidia     131         ; Gate seat ID           [mm]   
Sw        18.52          ; Gate seat face width   [mm]   
Gcop      22.7          ; Gate crack open point  [mm]   
Bsdia     0.0             ; Balance stem diameter   
Ghdia    6   ; Gate hole (btwn process bore and gate cavity) diameter [mm]   
Ghlen    20.  ; Total hole length.                                    [mm]   
Ghrn   .005     ;  Roughness of wetted hole surface                   [mm]   
Ghcq      0.7   ; Flow coefficient (CQ)for fully dev. turb. flow   
Suff     .01    ; Gate seal U-seal flow factor.    
Scff     .05    ; Gate seal flow factor   
Scrpr   7.19    ; Pressure diff between Prgc and Prup or Prdo causing ...   
Vgc      3    ; Pressurized volume in gate cavity    
Sdf       3     ; Stem Seal dynamic friction factor.        [%]   
Msdf      0.06  ; Min dynamic friction in Stem seal.        [kN]   
Ssf       6     ; Stem packing seal static friction factor  [%]   
Mssf      0.09  ; Min static friction in Stem Packing Seal  [kN]   
Gdf       12     ; Gate Seat dynamic friction factor.   [%]   
Mgdf      0.42   ; Min dynamic friction in Gate Seals   [kN]   
Gsf       14     ; Gate Seal static friction factor     [%]   
Mgsf      0.83   ; Min static friction in Gate Seals    [kN]   
Bsf       2.084  ; Average Belville spring force        [kN]   
Spfric    0     ; Spring friction loss                 [%]   

;;; Actuator open line
LINE         Ao
  Type         Constant
  Tree         1
  Template     A
  Function     0x1075
  Plugs        2
  Form         1
  Diameter                        6.220  
  Length                         200.0            
  Nplugs                         2.0            
  Rn                            1.50e-3  
  Rhup                            35330       
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
  Function     0x2075
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

;;; A ball valve described by actuator piston area, ball angle; 0 dgr: fully closed, 90 dgr: fully open
ACTUATOR     A
  Type         BVFO_Perar_10"-BV-405_bar-6.435L
  Tree         1
  Template     D
  Function     0x75
  Pdia                              0.0  
  Msdia                             0.0  
Sc  1420   ;[kN/m] Actuator spring constant.    
Spre  0.25   ;[m] Actuator spring precompression.    
Mass  400.0  ;[kg] Actuator accelerated assembly mass.    
Smax  0.133 ;[m] Actuator maximum stroke.    
Voc  8.785  ;[l] Pressurized volume in Actuator opening cavity.    
  Vsdia                             0.0  
  Cvrhp_a                         35330       
  Cvrha_r                         430.0  
Df  13   ;[%] Dynamic friction in Actuator assembly.    
Mdf  30  ;[kN] Minimum dynamic friction in Actuator assembly.    
Sf  15   ;[%] Static friction in the Ball Valve Actuator assembly.    
Msf  35   ;[kN] Minimum static friction in Actuator assembly.    
Ld  50.0   ;[kNs/m] Actuator assembly velocity dampening.    
Vlim  2.0e-4 ;[m/s] Ball Valve Actuator piston velocity at which transition between dynamic and static friction starts.    
Adf  1.8   ; Actuator acceleration dampening.    
Aopen 48381 ;[mm2] Pro acts on Actuator piston area Aopen.    
Aamb  48381 ;[mm2] Prc acts on Actuator piston area AAmb.    

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     D
  Function     0x1075
  Plugs        1
  Form         1
  Diameter                        6.220  
  Length                          100.0  
  Nplugs                            1.0  
  Rn                            1.50e-3  
  Rhup                            35330       
  Rhdo                             30.0  
  Hdiff                             0.0  
  Trnum                           2300.  
  Beta                            24000  
  Binc                              0.0  
  Bexp                              0.0  
  VEcorr                            1.0  
  Mwp                             300.0  

;;; Template relief valve
EXHAUST_VALVE M-Rv
  Template     A
  Function     0x1002
  Cr                              500.0 
  Inc                               3.0 
  Qref                             0.10 
  Tau                             0.010 
  Rh                               10.0 

;;; Supply umbilical
LINE         Us
  Type         Constant
  Template     F
  Function     0x1002
  Plugs        85
  Form         1
  Diameter                        12.70
  Length                          8450.
  Nplugs                           85.0
  Rn                            1.50e-3
  Rhup                             30.0
  Rhdo                             30.0
  Hdiff                          -2130.    
  Trnum                           2300.
  Beta                            24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Template supply manifold
MANIFOLD     Ms
  Template     F
  Function     0x1012
  Depth                           2100.     
  Volume                           10.0
  AssistFlowGain                   0.20

;;; Template relief valve
EXHAUST_VALVE M-Rv
  Template     F
  Function     0x1002
  Cr                              500.0
  Inc                               3.0
  Qref                             0.10
  Tau                             0.010
  Rh                               10.0

;;; Subsea Control Module
SCM          S
  Tree         1
  Template     F
  Function     0x3
  Depth                           2100.     
  Cv_fwr                          0.250
  Cv_fwq                         6.0e-3
  Svol                              4.0
  Rvol                              4.0
  PPrup                          600.0          
  PPrdo                          600.0          
  Cvrhp_a                           0.0

;;; Xmas tree return manifold
MANIFOLD     T
  Tree         1
  Template     F
  Function     0x2004
  Depth                           2100.     
  Volume                         10.0          
  AssistFlowGain                   0.20
EXHAUST_VALVE T-Ev
  Tree         1
  Template     F
  Function     0x2004
  Cr                             41.0          
  Inc                               3.0
  Qref                             0.10
  Tau                             0.010
  Rh                               10.0

;;; Xmas-tree bladder
BLADDER      T-Bl
  Tree         1
  Template     F
  Function     0x2004
  Vmax                           40.0          
  Vmin                             0.10
  Dia                              11.0
  Len                               5.0
  Rh                               20.0
  In_vol                         40.0          

;;; SCM supply line
LINE         Ss
  Type         Constant
  Tree         1
  Template     F
  Function     0x1003
  Plugs        4
  Form         1
  Diameter                        12.70
  Length                          320.0
  Nplugs                            4.0
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
  Template     F
  Function     0x2004
  Plugs        1
  Form         1
  Diameter                         9.40
  Length                            7.0
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
  Template     F
  Function     0x3
  Cr                                3.0
  Inc                               3.0
  Qref                             0.10
  Tau                             0.010
  Rh                               10.0

;;; Fail close valves
ACTUATOR     A
  Type         FC_FMC-AH700_5"-GV-690_bar-2.9_L
  Tree         1
  Template     F
  Function     0x15
Pdia      162    ; Actuator piston diameter       [mm] 
Msdia     47.64      ; Middle (piston) stem diameter  [mm] 
Sc        598.6     ; Actuator spring constant        [kN/m] 
Spre      0.206     ; Spring pretension             [m] 
Mass      400        ; Mass of accelerated components  [kg] 
Smax      0.1537     ; Actuator stroke.               [m] 
Voc       2.9        ; Pressurized volume in opening cavity    [l] 
Vsdia     53.9       ; Valve (bonnet) stem diameter   [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        1             ; Actuator Seal dynamic (colomb) friction factor.                                                                                                                                                                                      
Mdf       1.967          ; Min dynamic friction in actuator seals.           [kN] 
Sf        2            ; Actuator Seal static (stiction) friction factor  [%] 
Msf       2.295          ; Min static friction in actuator seals.           [kN] 
Ld        10            ; Linear damping of actuator. 
Vlim      0.0002         ; Velocity limit between stiction and colomb fric [m/s] 
Adf       2     ; Acceleration damping factor  
Psl       12.7        ; piston seal width                    [mm] 
Vsl       9.525          ; valve stem seal width                [mm] 
Mssl      9.525          ; Middle stem seal width               [mm] 
Osdia     47.64          ; Overide (upper) stem diameter                [mm] 
Ossl      9.525          ; Overide stem seal width              [mm] 
Vcc        3             ; Pressurized volume in closing cavity [l] 
Vssl      47.8          ; Valve stem seal width                [mm] 
Sodia     143,7         ; Gate seat OD           [mm] 
Sidia     131         ; Gate seat ID           [mm] 
Sw        18.52          ; Gate seat face width   [mm] 
Gcop      22.7          ; Gate crack open point  [mm] 
Bsdia     0.0             ; Balance stem diameter 
Ghdia    6   ; Gate hole (btwn process bore and gate cavity) diameter [mm] 
Ghlen    20.  ; Total hole length.                                    [mm] 
Ghrn   .005     ;  Roughness of wetted hole surface                   [mm] 
Ghcq      0.7   ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff     .01    ; Gate seal U-seal flow factor.  
Scff     .05    ; Gate seal flow factor 
Scrpr   7.19    ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3    ; Pressurized volume in gate cavity  
Sdf       3     ; Stem Seal dynamic friction factor.        [%] 
Msdf      0.06  ; Min dynamic friction in Stem seal.        [kN] 
Ssf       6     ; Stem packing seal static friction factor  [%] 
Mssf      0.09  ; Min static friction in Stem Packing Seal  [kN] 
Gdf       12     ; Gate Seat dynamic friction factor.   [%] 
Mgdf      0.42   ; Min dynamic friction in Gate Seals   [kN] 
Gsf       14     ; Gate Seal static friction factor     [%] 
Mgsf      0.83   ; Min static friction in Gate Seals    [kN] 
Bsf       2.084  ; Average Belville spring force        [kN] 
Spfric    0     ; Spring friction loss                 [%] 

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     F
  Function     0x1015
  Plugs        1
  Form         1
  Diameter                        6.220
  Length                            5.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                            2030.     
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
  Template     F
  Function     0x2015
  Plugs        1
  Form         1
  Diameter                        6.220
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

;;; Fail close valves
ACTUATOR     A
  Type         FC_FMC-AH700_5"-GV-690_bar-2.9_L
  Tree         1
  Template     F
  Function     0x25
Pdia      162    ; Actuator piston diameter       [mm] 
Msdia     47.64      ; Middle (piston) stem diameter  [mm] 
Sc        598.6     ; Actuator spring constant        [kN/m] 
Spre      0.206     ; Spring pretension             [m] 
Mass      400        ; Mass of accelerated components  [kg] 
Smax      0.1537     ; Actuator stroke.               [m] 
Voc       2.9        ; Pressurized volume in opening cavity    [l] 
Vsdia     53.9       ; Valve (bonnet) stem diameter   [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        1             ; Actuator Seal dynamic (colomb) friction factor.                                                                                                                                                                                      
Mdf       1.967          ; Min dynamic friction in actuator seals.           [kN] 
Sf        2            ; Actuator Seal static (stiction) friction factor  [%] 
Msf       2.295          ; Min static friction in actuator seals.           [kN] 
Ld        10            ; Linear damping of actuator. 
Vlim      0.0002         ; Velocity limit between stiction and colomb fric [m/s] 
Adf       2     ; Acceleration damping factor  
Psl       12.7        ; piston seal width                    [mm] 
Vsl       9.525          ; valve stem seal width                [mm] 
Mssl      9.525          ; Middle stem seal width               [mm] 
Osdia     47.64          ; Overide (upper) stem diameter                [mm] 
Ossl      9.525          ; Overide stem seal width              [mm] 
Vcc        3             ; Pressurized volume in closing cavity [l] 
Vssl      47.8          ; Valve stem seal width                [mm] 
Sodia     143,7         ; Gate seat OD           [mm] 
Sidia     131         ; Gate seat ID           [mm] 
Sw        18.52          ; Gate seat face width   [mm] 
Gcop      22.7          ; Gate crack open point  [mm] 
Bsdia     0.0             ; Balance stem diameter 
Ghdia    6   ; Gate hole (btwn process bore and gate cavity) diameter [mm] 
Ghlen    20.  ; Total hole length.                                    [mm] 
Ghrn   .005     ;  Roughness of wetted hole surface                   [mm] 
Ghcq      0.7   ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff     .01    ; Gate seal U-seal flow factor.  
Scff     .05    ; Gate seal flow factor 
Scrpr   7.19    ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3    ; Pressurized volume in gate cavity  
Sdf       3     ; Stem Seal dynamic friction factor.        [%] 
Msdf      0.06  ; Min dynamic friction in Stem seal.        [kN] 
Ssf       6     ; Stem packing seal static friction factor  [%] 
Mssf      0.09  ; Min static friction in Stem Packing Seal  [kN] 
Gdf       12     ; Gate Seat dynamic friction factor.   [%] 
Mgdf      0.42   ; Min dynamic friction in Gate Seals   [kN] 
Gsf       14     ; Gate Seal static friction factor     [%] 
Mgsf      0.83   ; Min static friction in Gate Seals    [kN] 
Bsf       2.084  ; Average Belville spring force        [kN] 
Spfric    0     ; Spring friction loss                 [%] 

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     F
  Function     0x1025
  Plugs        1
  Form         1
  Diameter                        6.220
  Length                            5.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                            2030.     
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
  Template     F
  Function     0x2025
  Plugs        1
  Form         1
  Diameter                        6.220
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

;;; Fail close valves
ACTUATOR     A
  Type         FC_FMC-AH700_5"-GV-690_bar-2.9_L
  Tree         1
  Template     F
  Function     0x35
Pdia      162    ; Actuator piston diameter       [mm] 
Msdia     47.64      ; Middle (piston) stem diameter  [mm] 
Sc        598.6     ; Actuator spring constant        [kN/m] 
Spre      0.206     ; Spring pretension             [m] 
Mass      400        ; Mass of accelerated components  [kg] 
Smax      0.1537     ; Actuator stroke.               [m] 
Voc       2.9        ; Pressurized volume in opening cavity    [l] 
Vsdia     53.9       ; Valve (bonnet) stem diameter   [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        1             ; Actuator Seal dynamic (colomb) friction factor.                                                                                                                                                                                      
Mdf       1.967          ; Min dynamic friction in actuator seals.           [kN] 
Sf        2            ; Actuator Seal static (stiction) friction factor  [%] 
Msf       2.295          ; Min static friction in actuator seals.           [kN] 
Ld        10            ; Linear damping of actuator. 
Vlim      0.0002         ; Velocity limit between stiction and colomb fric [m/s] 
Adf       2     ; Acceleration damping factor  
Psl       12.7        ; piston seal width                    [mm] 
Vsl       9.525          ; valve stem seal width                [mm] 
Mssl      9.525          ; Middle stem seal width               [mm] 
Osdia     47.64          ; Overide (upper) stem diameter                [mm] 
Ossl      9.525          ; Overide stem seal width              [mm] 
Vcc        3             ; Pressurized volume in closing cavity [l] 
Vssl      47.8          ; Valve stem seal width                [mm] 
Sodia     143,7         ; Gate seat OD           [mm] 
Sidia     131         ; Gate seat ID           [mm] 
Sw        18.52          ; Gate seat face width   [mm] 
Gcop      22.7          ; Gate crack open point  [mm] 
Bsdia     0.0             ; Balance stem diameter 
Ghdia    6   ; Gate hole (btwn process bore and gate cavity) diameter [mm] 
Ghlen    20.  ; Total hole length.                                    [mm] 
Ghrn   .005     ;  Roughness of wetted hole surface                   [mm] 
Ghcq      0.7   ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff     .01    ; Gate seal U-seal flow factor.  
Scff     .05    ; Gate seal flow factor 
Scrpr   7.19    ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3    ; Pressurized volume in gate cavity  
Sdf       3     ; Stem Seal dynamic friction factor.        [%] 
Msdf      0.06  ; Min dynamic friction in Stem seal.        [kN] 
Ssf       6     ; Stem packing seal static friction factor  [%] 
Mssf      0.09  ; Min static friction in Stem Packing Seal  [kN] 
Gdf       12     ; Gate Seat dynamic friction factor.   [%] 
Mgdf      0.42   ; Min dynamic friction in Gate Seals   [kN] 
Gsf       14     ; Gate Seal static friction factor     [%] 
Mgsf      0.83   ; Min static friction in Gate Seals    [kN] 
Bsf       2.084  ; Average Belville spring force        [kN] 
Spfric    0     ; Spring friction loss                 [%] 

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     F
  Function     0x1035
  Plugs        1
  Form         1
  Diameter                        6.220
  Length                            5.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                            2030.     
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
  Template     F
  Function     0x2035
  Plugs        1
  Form         1
  Diameter                        6.220
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

;;; Fail close valves
ACTUATOR     A
  Type         FC_FMC-AH700_2"-GV-690_bar-0.42_L
  Tree         1
  Template     F
  Function     0x45
Pdia      96.5     ; Actuator piston diameter       [mm] 
Msdia     28.45      ; Middle (piston) stem diameter  [mm] 
Sc        430     ; Actuator spring constant        [kN/m] 
Spre      0.0922     ; Spring pretension             [m] 
Mass      100        ; Mass of accelerated components  [kg] 
Smax      0.0645     ; Actuator stroke.               [m] 
Voc       2       ; Pressurized volume in opening cavity    [l] 
Vsdia     28.5      ; Valve (bonnet) stem diameter   [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        13             ; Actuator Seal dynamic (colomb) friction factor.  [%] 
Mdf       0.14          ; Min dynamic friction in actuator seals.           [kN] 
Sf        15            ; Actuator Seal static (stiction) friction factor  [%] 
Msf       0.34          ; Min static friction in actuator seals.           [kN] 
Ld        10            ; Linear damping of actuator. 
Vlim      0.0002         ; Velocity limit between stiction and colomb fric [m/s] 
Adf       1.8     ; Acceleration damping factor  
Psl       15.74        ; piston seal width                    [mm] 
Vsl       47.78          ; valve stem seal width                [mm] 
Mssl      47.3          ; Middle stem seal width               [mm] 
Osdia     28.5        ; Overide (upper) stem diameter                [mm] 
Ossl      22.23          ; Overide stem seal width              [mm] 
Vcc        2             ; Pressurized volume in closing cavity [l] 
Vssl      47.8          ; Valve stem seal width                [mm] 
Sodia     88.33         ; Gate seat OD           [mm] 
Sidia     52.81         ; Gate seat ID           [mm] 
Sw         7.51         ; Gate seat face width   [mm] 
Gcop      11.3          ; Gate crack open point  [mm] 
Bsdia     0.0             ; Balance stem diameter 
Ghdia    4   ; Gate hole (btwn process bore and gate cavity) diameter [mm] 
Ghlen    10.  ; Total hole length.                                    [mm] 
Ghrn   .005     ;  Roughness of wetted hole surface                   [mm] 
Ghcq      0.7   ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff     .005    ; Gate seal U-seal flow factor.  
Scff     .002    ; Gate seal flow factor 
Scrpr   10.56    ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      4.0    ; Pressurized volume in gate cavity  
Sdf       4     ; Stem Seal dynamic friction factor.        [%] 
Msdf      0.06  ; Min dynamic friction in Stem seal.        [kN] 
Ssf       6     ; Stem packing seal static friction factor  [%] 
Mssf      0.09  ; Min static friction in Stem Packing Seal  [kN] 
Gdf       10     ; Gate Seat dynamic friction factor. 
Mgdf      0.42   ; Min dynamic friction in Gate Seals 
Gsf       20     ; Gate Seal static friction factor 
Mgsf      0.83   ; Min static friction in Gate Seals 
Bsf       2.084  ; Average Belville spring force                [kN] 
Spfric    4.     ; Spring friction loss                         [%] 

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     F
  Function     0x1045
  Plugs        1
  Form         1
  Diameter                        6.220
  Length                            5.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                            2030.     
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
  Template     F
  Function     0x2045
  Plugs        1
  Form         1
  Diameter                        6.220
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

;;; Fail close valves
ACTUATOR     A
  Type         FC_FMC-AH700_2"-GV-690_bar-0.42_L
  Tree         1
  Template     F
  Function     0x55
Pdia      96.5     ; Actuator piston diameter       [mm] 
Msdia     28.45      ; Middle (piston) stem diameter  [mm] 
Sc        430     ; Actuator spring constant        [kN/m] 
Spre      0.0922     ; Spring pretension             [m] 
Mass      100        ; Mass of accelerated components  [kg] 
Smax      0.0645     ; Actuator stroke.               [m] 
Voc       2       ; Pressurized volume in opening cavity    [l] 
Vsdia     28.5      ; Valve (bonnet) stem diameter   [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        13             ; Actuator Seal dynamic (colomb) friction factor.  [%] 
Mdf       0.14          ; Min dynamic friction in actuator seals.           [kN] 
Sf        15            ; Actuator Seal static (stiction) friction factor  [%] 
Msf       0.34          ; Min static friction in actuator seals.           [kN] 
Ld        10            ; Linear damping of actuator. 
Vlim      0.0002         ; Velocity limit between stiction and colomb fric [m/s] 
Adf       1.8     ; Acceleration damping factor  
Psl       15.74        ; piston seal width                    [mm] 
Vsl       47.78          ; valve stem seal width                [mm] 
Mssl      47.3          ; Middle stem seal width               [mm] 
Osdia     28.5        ; Overide (upper) stem diameter                [mm] 
Ossl      22.23          ; Overide stem seal width              [mm] 
Vcc        2             ; Pressurized volume in closing cavity [l] 
Vssl      47.8          ; Valve stem seal width                [mm] 
Sodia     88.33         ; Gate seat OD           [mm] 
Sidia     52.81         ; Gate seat ID           [mm] 
Sw         7.51         ; Gate seat face width   [mm] 
Gcop      11.3          ; Gate crack open point  [mm] 
Bsdia     0.0             ; Balance stem diameter 
Ghdia    4   ; Gate hole (btwn process bore and gate cavity) diameter [mm] 
Ghlen    10.  ; Total hole length.                                    [mm] 
Ghrn   .005     ;  Roughness of wetted hole surface                   [mm] 
Ghcq      0.7   ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff     .005    ; Gate seal U-seal flow factor.  
Scff     .002    ; Gate seal flow factor 
Scrpr   10.56    ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      4.0    ; Pressurized volume in gate cavity  
Sdf       4     ; Stem Seal dynamic friction factor.        [%] 
Msdf      0.06  ; Min dynamic friction in Stem seal.        [kN] 
Ssf       6     ; Stem packing seal static friction factor  [%] 
Mssf      0.09  ; Min static friction in Stem Packing Seal  [kN] 
Gdf       10     ; Gate Seat dynamic friction factor. 
Mgdf      0.42   ; Min dynamic friction in Gate Seals 
Gsf       20     ; Gate Seal static friction factor 
Mgsf      0.83   ; Min static friction in Gate Seals 
Bsf       2.084  ; Average Belville spring force                [kN] 
Spfric    4.     ; Spring friction loss                         [%] 

;;; Actuator open line
LINE         Ao
  Tree         1
  Template     F
  Function     0x1055
  Plugs        1
  Form         1
  Diameter                        6.220
  Length                            5.0
  Nplugs                            1.0
  Rn                            1.50e-3
  Rhup                            2030.     
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
  Template     F
  Function     0x2055
  Plugs        1
  Form         1
  Diameter                        6.220
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

;;; A ball valve described by actuator piston area, ball angle; 0 dgr: fully closed, 90 dgr: fully open
ACTUATOR     A
  Type         BVFO_Perar_10"-BV-405_bar-6.435L
  Tree         1
  Template     F
  Function     0x65
  Pdia                              0.0
  Msdia                             0.0
Sc  1420   ;[kN/m] Actuator spring constant.  
Spre  0.25   ;[m] Actuator spring precompression.  
Mass  400.0  ;[kg] Actuator accelerated assembly mass.  
Smax  0.133 ;[m] Actuator maximum stroke.  
Voc  8.785  ;[l] Pressurized volume in Actuator opening cavity.  
  Vsdia                             0.0
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df  13   ;[%] Dynamic friction in Actuator assembly.  
Mdf  30  ;[kN] Minimum dynamic friction in Actuator assembly.  
Sf  15   ;[%] Static friction in the Ball Valve Actuator assembly.  
Msf  35   ;[kN] Minimum static friction in Actuator assembly.  
Ld  50.0   ;[kNs/m] Actuator assembly velocity dampening.  
Vlim  2.0e-4 ;[m/s] Ball Valve Actuator piston velocity at which transition between dynamic and static friction starts.  
Adf  1.8   ; Actuator acceleration dampening.  
Aopen 48381 ;[mm2] Pro acts on Actuator piston area Aopen.  
Aamb  48381 ;[mm2] Prc acts on Actuator piston area AAmb.  

;;; Actuator open line
LINE         Ao
  Type         Constant
  Tree         1
  Template     F
  Function     0x1065
  Plugs        2
  Form         1
  Diameter                        6.220
  Length                          200.0
  Nplugs                            2.0
  Rn                            1.50e-3
  Rhup                            35330     
  Rhdo                             30.0
  Hdiff                             0.0
  Trnum                           2300.
  Beta                            24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Fail close valves
ACTUATOR     A
  Type         FC_FMC-AH700_5"-GV-690_bar-2.9_L
  Tree         1
  Template     F
  Function     0x75
Pdia      162    ; Actuator piston diameter       [mm] 
Msdia     47.64      ; Middle (piston) stem diameter  [mm] 
Sc        598.6     ; Actuator spring constant        [kN/m] 
Spre      0.206     ; Spring pretension             [m] 
Mass      400        ; Mass of accelerated components  [kg] 
Smax      0.1537     ; Actuator stroke.               [m] 
Voc       2.9        ; Pressurized volume in opening cavity    [l] 
Vsdia     53.9       ; Valve (bonnet) stem diameter   [mm] 
  Cvrhp_a                         2030.
  Cvrha_r                         430.0
Df        1             ; Actuator Seal dynamic (colomb) friction factor.                                                                                                                                                                                      
Mdf       1.967          ; Min dynamic friction in actuator seals.           [kN] 
Sf        2            ; Actuator Seal static (stiction) friction factor  [%] 
Msf       2.295          ; Min static friction in actuator seals.           [kN] 
Ld        10            ; Linear damping of actuator. 
Vlim      0.0002         ; Velocity limit between stiction and colomb fric [m/s] 
Adf       2     ; Acceleration damping factor  
Psl       12.7        ; piston seal width                    [mm] 
Vsl       9.525          ; valve stem seal width                [mm] 
Mssl      9.525          ; Middle stem seal width               [mm] 
Osdia     47.64          ; Overide (upper) stem diameter                [mm] 
Ossl      9.525          ; Overide stem seal width              [mm] 
Vcc        3             ; Pressurized volume in closing cavity [l] 
Vssl      47.8          ; Valve stem seal width                [mm] 
Sodia     143,7         ; Gate seat OD           [mm] 
Sidia     131         ; Gate seat ID           [mm] 
Sw        18.52          ; Gate seat face width   [mm] 
Gcop      22.7          ; Gate crack open point  [mm] 
Bsdia     0.0             ; Balance stem diameter 
Ghdia    6   ; Gate hole (btwn process bore and gate cavity) diameter [mm] 
Ghlen    20.  ; Total hole length.                                    [mm] 
Ghrn   .005     ;  Roughness of wetted hole surface                   [mm] 
Ghcq      0.7   ; Flow coefficient (CQ)for fully dev. turb. flow 
Suff     .01    ; Gate seal U-seal flow factor.  
Scff     .05    ; Gate seal flow factor 
Scrpr   7.19    ; Pressure diff between Prgc and Prup or Prdo causing ... 
Vgc      3    ; Pressurized volume in gate cavity  
Sdf       3     ; Stem Seal dynamic friction factor.        [%] 
Msdf      0.06  ; Min dynamic friction in Stem seal.        [kN] 
Ssf       6     ; Stem packing seal static friction factor  [%] 
Mssf      0.09  ; Min static friction in Stem Packing Seal  [kN] 
Gdf       12     ; Gate Seat dynamic friction factor.   [%] 
Mgdf      0.42   ; Min dynamic friction in Gate Seals   [kN] 
Gsf       14     ; Gate Seal static friction factor     [%] 
Mgsf      0.83   ; Min static friction in Gate Seals    [kN] 
Bsf       2.084  ; Average Belville spring force        [kN] 
Spfric    0     ; Spring friction loss                 [%] 

;;; Actuator open line
LINE         Ao
  Type         Constant
  Tree         1
  Template     F
  Function     0x1075
  Plugs        2
  Form         1
  Diameter                        6.220
  Length                          200.0
  Nplugs                            2.0
  Rn                            1.50e-3
  Rhup                            35330     
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
  Template     F
  Function     0x2075
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
  Type         Constant
  Tree         1
  Template     A
  Function     0x2003
  Plugs        4
  Form         1
  Diameter                        12.70
  Length                          320.0
  Nplugs                            4.0
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

;;; Template return manifold
MANIFOLD     Mr
  Template     B
  Function     0x2012
  Depth                           300.0
  Volume                           10.0
  AssistFlowGain                   0.20

;;; SCM return line
LINE         Sr
  Type         Constant
  Tree         1
  Template     B
  Function     0x2003
  Plugs        17
  Form         1
  Diameter                        12.70
  Length                          1700.
  Nplugs                           17.0
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
  Type         Constant
  Tree         2
  Template     B
  Function     0x2003
  Plugs        12
  Form         1
  Diameter                        12.70
  Length                          1200.
  Nplugs                           12.0
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
  Type         Constant
  Tree         3
  Template     B
  Function     0x2003
  Plugs        2
  Form         1
  Diameter                        12.70
  Length                          110.0
  Nplugs                            2.0
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

;;; Template return manifold
MANIFOLD     Mr
  Template     C
  Function     0x2012
  Depth                           300.0
  Volume                           10.0
  AssistFlowGain                   0.20

;;; SCM return line
LINE         Sr
  Type         Constant
  Tree         1
  Template     C
  Function     0x2003
  Plugs        3
  Form         1
  Diameter                        12.70
  Length                          290.0
  Nplugs                            3.0
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
  Type         Constant
  Tree         2
  Template     C
  Function     0x2003
  Plugs        3
  Form         1
  Diameter                        12.70
  Length                          300.0
  Nplugs                            3.0
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

;;; Template return manifold
MANIFOLD     Mr
  Template     D
  Function     0x2012
  Depth                           300.0
  Volume                           10.0
  AssistFlowGain                   0.20

;;; SCM return line
LINE         Sr
  Type         Constant
  Tree         1
  Template     D
  Function     0x2003
  Plugs        2
  Form         1
  Diameter                        12.70
  Length                          110.0
  Nplugs                            2.0
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

;;; Template return manifold
MANIFOLD     Mr
  Template     E
  Function     0x2012
  Depth                           300.0
  Volume                           10.0
  AssistFlowGain                   0.20

;;; SCM return line
LINE         Sr
  Type         Constant
  Tree         1
  Template     E
  Function     0x2003
  Plugs        1
  Form         1
  Diameter                        12.70
  Length                          100.0
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

;;; Template return manifold
MANIFOLD     Mr
  Template     F
  Function     0x2012
  Depth                           300.0
  Volume                           10.0
  AssistFlowGain                   0.20

;;; SCM return line
LINE         Sr
  Type         Constant
  Tree         1
  Template     F
  Function     0x2003
  Plugs        4
  Form         1
  Diameter                        12.70
  Length                          320.0
  Nplugs                            4.0
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
  Plugs        85
  Form         2
  Diameter                        12.70
  Length                          8450.
  Nplugs                           85.0
  Rn                            1.50e-3
  Rhup                             30.0
  Rhdo                             30.0
  Hdiff                          -2130.    
  Trnum                           2300.
  Beta                            24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Return umbilical
LINE         Ur
  Type         Constant
  Template     B
  Function     0x2002
  Plugs        42
  Form         0
  Diameter                        12.70
  Length                          4175.
  Nplugs                           42.0
  Rn                            1.50e-3
  Rhup                             30.0
  Rhdo                             30.0
  Hdiff                          -2130.    
  Trnum                           2300.
  Beta                            24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Return umbilical
LINE         Ur
  Type         Constant
  Template     C
  Function     0x2002
  Plugs        26
  Form         0
  Diameter                        12.70
  Length                          2600.
  Nplugs                           26.0
  Rn                            1.50e-3
  Rhup                             30.0
  Rhdo                             30.0
  Hdiff                          -2130.    
  Trnum                           2300.
  Beta                            24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Return umbilical
LINE         Ur
  Type         Constant
  Template     D
  Function     0x2002
  Plugs        28
  Form         0
  Diameter                        12.70
  Length                          2730.
  Nplugs                           28.0
  Rn                            1.50e-3
  Rhup                             30.0
  Rhdo                             30.0
  Hdiff                          -2130.    
  Trnum                           2300.
  Beta                            24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Return umbilical
LINE         Ur
  Type         Constant
  Template     E
  Function     0x2002
  Plugs        31
  Form         0
  Diameter                        12.70
  Length                          3090.
  Nplugs                           31.0
  Rn                            1.50e-3
  Rhup                             30.0
  Rhdo                             30.0
  Hdiff                          -2130.    
  Trnum                           2300.
  Beta                            24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0

;;; Return umbilical
LINE         Ur
  Type         Constant
  Template     F
  Function     0x2002
  Plugs        85
  Form         2
  Diameter                        12.70
  Length                          8450.
  Nplugs                           85.0
  Rn                            1.50e-3
  Rhup                             30.0
  Rhdo                             30.0
  Hdiff                          -2130.    
  Trnum                           2300.
  Beta                            24000
  Binc                              0.0
  Bexp                              0.0
  VEcorr                            1.0
  Mwp                             300.0
; Animations:
Animate    S-E1   A-E1-1   A-E1-4   S-A1   S-B1   S-B2   S-B3   S-C1   S-C2   S-D1

