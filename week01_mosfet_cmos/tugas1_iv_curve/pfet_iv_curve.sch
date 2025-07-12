v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -530 -190 -510 -190 {lab=VG}
N -470 -160 -470 -140 {lab=GND}
N -470 -250 -470 -220 {lab=VDD}
N -360 -240 -360 -220 {lab=VG}
N -300 -240 -300 -220 {lab=VDD}
N -360 -160 -360 -140 {lab=GND}
N -300 -160 -300 -140 {lab=GND}
C {sky130_fd_pr/pfet3_01v8.sym} -490 -190 0 0 {name=M1
W=1
L=0.15
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {vsource.sym} -360 -190 2 0 {name=VG value=0 savecurrent=false}
C {vsource.sym} -300 -190 0 0 {name=VDD value=0 savecurrent=false}
C {sky130_fd_pr/corner.sym} -250 -230 0 0 {name=CORNER only_toplevel=true corner=tt}
C {code.sym} -130 -230 0 0 {name=command only_toplevel=false value="
.control
	dc VDD 0 1.8 0.1 VG 0 1.8 0.3
	plot i(VDD)
saveall
.endc
"
	
}
C {lab_pin.sym} -360 -240 0 0 {name=p1 sig_type=std_logic lab=VG}
C {lab_pin.sym} -300 -240 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -470 -250 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -530 -190 0 0 {name=p4 sig_type=std_logic lab=VG}
C {gnd.sym} -470 -140 0 0 {name=l1 lab=GND}
C {gnd.sym} -360 -140 0 0 {name=l2 lab=GND}
C {gnd.sym} -300 -140 0 0 {name=l3 lab=GND}
