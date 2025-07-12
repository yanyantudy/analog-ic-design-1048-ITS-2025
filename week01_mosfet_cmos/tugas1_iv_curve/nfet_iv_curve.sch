v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -830 -330 -810 -330 {lab=VG}
N -770 -300 -770 -270 {lab=GND}
N -770 -390 -770 -360 {lab=VD}
N -640 -390 -640 -360 {lab=VG}
N -580 -390 -580 -360 {lab=VD}
N -580 -300 -580 -270 {lab=GND}
N -640 -300 -640 -270 {lab=GND}
C {sky130_fd_pr/nfet3_03v3_nvt.sym} -790 -330 0 0 {name=M1
W=1
L=0.5
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_03v3_nvt
spiceprefix=X
}
C {vsource.sym} -640 -330 0 0 {name=VG value=0 savecurrent=false}
C {vsource.sym} -580 -330 0 0 {name=VD value=0 savecurrent=false}
C {sky130_fd_pr/corner.sym} -520 -360 0 0 {name=CORNER only_toplevel=true corner=tt}
C {code.sym} -380 -360 0 0 {name=command only_toplevel=false value="
.control
	dc VD 0 3.3 0.1 VG 0 3.3 0.33
	plot -i(VD)
saveall
.endc
"
	
}
C {gnd.sym} -640 -270 0 0 {name=l1 lab=GND}
C {gnd.sym} -580 -270 0 0 {name=l2 lab=GND}
C {gnd.sym} -770 -270 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -640 -390 0 0 {name=p1 sig_type=std_logic lab=VG}
C {lab_pin.sym} -580 -390 0 0 {name=p2 sig_type=std_logic lab=VD}
C {lab_pin.sym} -770 -390 0 0 {name=p3 sig_type=std_logic lab=VD}
C {lab_pin.sym} -830 -330 0 0 {name=p4 sig_type=std_logic lab=VG}
