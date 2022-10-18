#!/bin/sh 
# export OMP_STACKSIZE=1g
export GFORTRAN_UNBUFFERED_PRECONNECTED=y
# ulimit -s unlimited

# --------------- transition probabilities --------------

echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j4n_j4n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_4n_4n.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j4n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j4n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.189, -2.869
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_4n_4n.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j4n_j4n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_4n_4n.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j4n_j6n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_4n_6n.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j4n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j6n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.189, -2.869
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_4n_6n.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j4n_j6n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_4n_6n.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j4n_j8n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_4n_8n.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j4n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j8n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.189, -2.869
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_4n_8n.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j4n_j8n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_4n_8n.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j6n_j6n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_6n_6n.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j6n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j6n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.189, -2.869
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_6n_6n.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j6n_j6n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_6n_6n.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j6n_j8n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_6n_8n.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j6n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j8n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.189, -2.869
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_6n_8n.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j6n_j8n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_6n_8n.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j6n_j10n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_6n_10n.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j6n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j10n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.189, -2.869
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_6n_10n.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j6n_j10n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_6n_10n.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j8n_j8n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_8n_8n.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j8n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j8n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.189, -2.869
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_8n_8n.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j8n_j8n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_8n_8n.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j8n_j10n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_8n_10n.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j8n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j10n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.189, -2.869
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_8n_10n.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j8n_j10n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_8n_10n.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j8n_j12n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_8n_12n.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j8n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j12n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.189, -2.869
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_8n_12n.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j8n_j12n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_8n_12n.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j10n_j10n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_10n_10n.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j10n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j10n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.189, -2.869
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_10n_10n.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j10n_j10n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_10n_10n.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j10n_j12n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_10n_12n.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j10n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j12n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.189, -2.869
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_10n_12n.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j10n_j12n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_10n_12n.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j10n_j14n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_10n_14n.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j10n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j14n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.189, -2.869
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_10n_14n.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j10n_j14n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_10n_14n.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j12n_j12n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_12n_12n.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j12n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j12n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.189, -2.869
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_12n_12n.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j12n_j12n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_12n_12n.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j12n_j14n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_12n_14n.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j12n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j14n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.189, -2.869
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_12n_14n.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j12n_j14n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_12n_14n.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j12n_j16n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_12n_16n.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j12n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j16n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.189, -2.869
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_12n_16n.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j12n_j16n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_12n_16n.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j14n_j14n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_14n_14n.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j14n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j14n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.189, -2.869
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_14n_14n.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j14n_j14n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_14n_14n.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j14n_j16n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_14n_16n.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j14n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j16n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.189, -2.869
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_14n_16n.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j14n_j16n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_14n_16n.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j16n_j16n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_16n_16n.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j16n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j16n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.189, -2.869
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_16n_16n.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j16n_j16n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_16n_16n.input


./collect_logs.py log_*Sc44_GCLSTsdpfsdgix5pn* > summary_Sc44_GCLSTsdpfsdgix5pn.txt
echo "Finish computing Sc44_GCLSTsdpfsdgix5pn. See summary_Sc44_GCLSTsdpfsdgix5pn.txt"
echo

