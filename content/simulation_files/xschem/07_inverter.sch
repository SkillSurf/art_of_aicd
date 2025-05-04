v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 290 0 {}
N 430 -70 430 -40 {
lab=vout}
N 430 50 430 70 {
lab=gnd}
N 430 -150 430 -130 {
lab=vdd}
N 430 -100 450 -100 {
lab=vdd}
N 450 -140 450 -100 {
lab=vdd}
N 430 -140 450 -140 {
lab=vdd}
N 390 -100 390 -10 {
lab=vin}
N 370 -30 390 -30 {
lab=vin}
N 430 -30 500 -30 {
lab=vout}
N 430 -10 430 0 {
lab=vout}
N 390 20 390 30 {
lab=vin}
N 430 70 430 80 {
lab=gnd}
N 430 -160 430 -150 {
lab=vdd}
N 430 30 450 30 {
lab=gnd}
N 450 30 450 60 {
lab=gnd}
N 430 60 450 60 {
lab=gnd}
N 430 -40 430 -10 {
lab=vout}
N 390 -10 390 20 {
lab=vin}
C {devices/title.sym} -130 260 0 0 {name=l5 author="Copyright 2023 IHP PDK Authors"}
C {/foss/pdks/ihp-sg13g2/libs.tech/xschem/sg13g2_pr/sg13_lv_nmos.sym} 410 30 2 1 {name=M1
l=0.45u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {/foss/pdks/ihp-sg13g2/libs.tech/xschem/sg13g2_pr/sg13_lv_pmos.sym} 410 -100 0 0 {name=M2
l=0.45u
w=2.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/vsource.sym} 140 10 0 0 {name=vcc value=1.8v}
C {devices/vsource.sym} 140 -110 0 0 {name=vin value="pulse(0 1.8 1ns 1ns 1ns 5ns 10ns)"}
C {devices/lab_pin.sym} 140 -20 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 140 -140 0 0 {name=p5 sig_type=std_logic lab=vin}
C {devices/code_shown.sym} -10 150 0 0 {name=s1 only_toplevel=false value=".lib /foss/pdks/ihp-sg13g2/libs.tech/ngspice/models/cornerMOSlv.lib mos_tt
.tran 1n 100ns
.save all"}
C {devices/gnd.sym} 140 40 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 140 -80 0 0 {name=l3 lab=GND}
C {iopin.sym} 430 -160 0 0 {name=p1 lab=vdd}
C {iopin.sym} 430 80 0 0 {name=p2 lab=gnd}
C {ipin.sym} 370 -30 0 0 {name=p3 lab=vin}
C {opin.sym} 500 -30 0 0 {name=p6 lab=vout}
