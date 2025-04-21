v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 320 -60 320 -20 {lab=GND}
N 320 -150 320 -120 {lab=Vin}
N 320 -20 520 -20 {lab=GND}
N 520 -70 520 -20 {lab=GND}
N 520 -150 520 -130 {lab=Vc}
N 450 -150 520 -150 {lab=Vc}
N 320 -150 390 -150 {lab=Vin}
C {vsource.sym} 320 -90 0 0 {name=Vin value="pulse(0 1.8 0.25 1n 1n 1 2.5)"}
C {gnd.sym} 480 -20 0 0 {name=l1 lab=GND}
C {code_shown.sym} 20 -210 0 0 {name=Capasitor only_toplevel=false value=".include /foss/pdks/ihp-sg13g2/libs.tech/ngspice/models/
.control
tran 1m 2
save all
.endc"}
C {lab_pin.sym} 320 -150 0 0 {name=p1 sig_type=std_logic lab=Vin}
C {res.sym} 420 -150 3 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {capa.sym} 520 -100 0 0 {name=C1
m=1
value=6.25u
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 520 -150 2 0 {name=p2 sig_type=std_logic lab=Vc}
