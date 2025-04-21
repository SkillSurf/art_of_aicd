v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 320 -60 320 -20 {lab=GND}
N 320 -150 320 -120 {lab=Vin}
N 320 -20 520 -20 {lab=GND}
N 520 -60 520 -20 {lab=GND}
N 520 -150 520 -120 {lab=Vin}
N 320 -150 520 -150 {lab=Vin}
C {vsource.sym} 320 -90 0 0 {name=Vin value=0}
C {gnd.sym} 480 -20 0 0 {name=l1 lab=GND}
C {code_shown.sym} 30 -220 0 0 {name=Capasitor only_toplevel=false value=".include /foss/pdks/ihp-sg13g2/libs.tech/ngspice/models/
.model Diode D (IS=1e-12 N=2 RS=1k CJO=1p M=0.5 VJ=0.7)
.control
dc Vin -1.8 1.8 1m
let i_neg = vin#branch
let i_in = -i_neg
save all
.endc"}
C {lab_pin.sym} 520 -150 2 0 {name=p1 sig_type=std_logic lab=Vin}
C {diode.sym} 520 -90 0 0 {name=D1 model=Diode}
