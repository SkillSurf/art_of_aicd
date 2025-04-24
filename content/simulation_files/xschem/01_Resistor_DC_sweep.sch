v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 480 -60 480 -20 {lab=GND}
N 320 -60 320 -20 {lab=GND}
N 320 -160 320 -120 {lab=Vin}
N 320 -160 480 -160 {lab=Vin}
N 480 -160 480 -120 {lab=Vin}
N 320 -20 480 -20 {lab=GND}
C {vsource.sym} 320 -90 0 0 {name=Vin value=0 savecurrent=false}
C {gnd.sym} 480 -20 0 0 {name=l1 lab=GND}
C {code_shown.sym} 20 -210 0 0 {name=Resistor only_toplevel=false value=".include /foss/pdks/ihp-sg13g2/libs.tech/ngspice/models/
.control
dc Vin 0 1.8 1m
let i_neg = vin#branch
let i_in = -i_neg
save all
.endc"}
C {res.sym} 480 -90 0 0 {name=R2
value=3k
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 320 -160 0 0 {name=p1 sig_type=std_logic lab=Vin}
