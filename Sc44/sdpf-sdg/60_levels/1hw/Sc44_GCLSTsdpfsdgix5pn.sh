#!/bin/sh 
# export OMP_STACKSIZE=1g
export GFORTRAN_UNBUFFERED_PRECONNECTED=y
# ulimit -s unlimited

# ---------- Sc44_GCLSTsdpfsdgix5pn --------------
echo "start running log_Sc44_GCLSTsdpfsdgix5pn_j0p.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_0.input <<EOF
&input
  beta_cm = 10.0
  eff_charge = 1.5, 0.5, 
  fn_int = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_save_wave = "Sc44_GCLSTsdpfsdgix5pn_j0p.wav"
  gl = 1.0, 0.0, 
  gs = 4.18875, -2.8695
  hw_type = 2
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 0
  n_block = 0
  n_eigen = 60
  n_restart_vec = 90
&end
EOF
nice ./kshell.exe Sc44_GCLSTsdpfsdgix5pn_0.input > log_Sc44_GCLSTsdpfsdgix5pn_j0p.txt 2>&1 

rm -f tmp_snapshot_Sc44_GCLSTsdpfsdgix5pn_p.ptn_0_* tmp_lv_Sc44_GCLSTsdpfsdgix5pn_p.ptn_0_* Sc44_GCLSTsdpfsdgix5pn_0.input 


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_j2p.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_2.input <<EOF
&input
  beta_cm = 10.0
  eff_charge = 1.5, 0.5, 
  fn_int = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_save_wave = "Sc44_GCLSTsdpfsdgix5pn_j2p.wav"
  gl = 1.0, 0.0, 
  gs = 4.18875, -2.8695
  hw_type = 2
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 2
  n_block = 0
  n_eigen = 60
  n_restart_vec = 90
&end
EOF
nice ./kshell.exe Sc44_GCLSTsdpfsdgix5pn_2.input > log_Sc44_GCLSTsdpfsdgix5pn_j2p.txt 2>&1 

rm -f tmp_snapshot_Sc44_GCLSTsdpfsdgix5pn_p.ptn_2_* tmp_lv_Sc44_GCLSTsdpfsdgix5pn_p.ptn_2_* Sc44_GCLSTsdpfsdgix5pn_2.input 


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_j4p.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_4.input <<EOF
&input
  beta_cm = 10.0
  eff_charge = 1.5, 0.5, 
  fn_int = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_save_wave = "Sc44_GCLSTsdpfsdgix5pn_j4p.wav"
  gl = 1.0, 0.0, 
  gs = 4.18875, -2.8695
  hw_type = 2
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 4
  n_block = 0
  n_eigen = 60
  n_restart_vec = 90
&end
EOF
nice ./kshell.exe Sc44_GCLSTsdpfsdgix5pn_4.input > log_Sc44_GCLSTsdpfsdgix5pn_j4p.txt 2>&1 

rm -f tmp_snapshot_Sc44_GCLSTsdpfsdgix5pn_p.ptn_4_* tmp_lv_Sc44_GCLSTsdpfsdgix5pn_p.ptn_4_* Sc44_GCLSTsdpfsdgix5pn_4.input 


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_j6p.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_6.input <<EOF
&input
  beta_cm = 10.0
  eff_charge = 1.5, 0.5, 
  fn_int = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_save_wave = "Sc44_GCLSTsdpfsdgix5pn_j6p.wav"
  gl = 1.0, 0.0, 
  gs = 4.18875, -2.8695
  hw_type = 2
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 6
  n_block = 0
  n_eigen = 60
  n_restart_vec = 90
&end
EOF
nice ./kshell.exe Sc44_GCLSTsdpfsdgix5pn_6.input > log_Sc44_GCLSTsdpfsdgix5pn_j6p.txt 2>&1 

rm -f tmp_snapshot_Sc44_GCLSTsdpfsdgix5pn_p.ptn_6_* tmp_lv_Sc44_GCLSTsdpfsdgix5pn_p.ptn_6_* Sc44_GCLSTsdpfsdgix5pn_6.input 


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_j8p.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_8.input <<EOF
&input
  beta_cm = 10.0
  eff_charge = 1.5, 0.5, 
  fn_int = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_save_wave = "Sc44_GCLSTsdpfsdgix5pn_j8p.wav"
  gl = 1.0, 0.0, 
  gs = 4.18875, -2.8695
  hw_type = 2
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 8
  n_block = 0
  n_eigen = 60
  n_restart_vec = 90
&end
EOF
nice ./kshell.exe Sc44_GCLSTsdpfsdgix5pn_8.input > log_Sc44_GCLSTsdpfsdgix5pn_j8p.txt 2>&1 

rm -f tmp_snapshot_Sc44_GCLSTsdpfsdgix5pn_p.ptn_8_* tmp_lv_Sc44_GCLSTsdpfsdgix5pn_p.ptn_8_* Sc44_GCLSTsdpfsdgix5pn_8.input 


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_j10p.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_10.input <<EOF
&input
  beta_cm = 10.0
  eff_charge = 1.5, 0.5, 
  fn_int = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_save_wave = "Sc44_GCLSTsdpfsdgix5pn_j10p.wav"
  gl = 1.0, 0.0, 
  gs = 4.18875, -2.8695
  hw_type = 2
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 10
  n_block = 0
  n_eigen = 60
  n_restart_vec = 90
&end
EOF
nice ./kshell.exe Sc44_GCLSTsdpfsdgix5pn_10.input > log_Sc44_GCLSTsdpfsdgix5pn_j10p.txt 2>&1 

rm -f tmp_snapshot_Sc44_GCLSTsdpfsdgix5pn_p.ptn_10_* tmp_lv_Sc44_GCLSTsdpfsdgix5pn_p.ptn_10_* Sc44_GCLSTsdpfsdgix5pn_10.input 


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_j12p.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_12.input <<EOF
&input
  beta_cm = 10.0
  eff_charge = 1.5, 0.5, 
  fn_int = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_save_wave = "Sc44_GCLSTsdpfsdgix5pn_j12p.wav"
  gl = 1.0, 0.0, 
  gs = 4.18875, -2.8695
  hw_type = 2
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 12
  n_block = 0
  n_eigen = 60
  n_restart_vec = 90
&end
EOF
nice ./kshell.exe Sc44_GCLSTsdpfsdgix5pn_12.input > log_Sc44_GCLSTsdpfsdgix5pn_j12p.txt 2>&1 

rm -f tmp_snapshot_Sc44_GCLSTsdpfsdgix5pn_p.ptn_12_* tmp_lv_Sc44_GCLSTsdpfsdgix5pn_p.ptn_12_* Sc44_GCLSTsdpfsdgix5pn_12.input 


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_j14p.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_14.input <<EOF
&input
  beta_cm = 10.0
  eff_charge = 1.5, 0.5, 
  fn_int = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_save_wave = "Sc44_GCLSTsdpfsdgix5pn_j14p.wav"
  gl = 1.0, 0.0, 
  gs = 4.18875, -2.8695
  hw_type = 2
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 14
  n_block = 0
  n_eigen = 60
  n_restart_vec = 90
&end
EOF
nice ./kshell.exe Sc44_GCLSTsdpfsdgix5pn_14.input > log_Sc44_GCLSTsdpfsdgix5pn_j14p.txt 2>&1 

rm -f tmp_snapshot_Sc44_GCLSTsdpfsdgix5pn_p.ptn_14_* tmp_lv_Sc44_GCLSTsdpfsdgix5pn_p.ptn_14_* Sc44_GCLSTsdpfsdgix5pn_14.input 


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_j16p.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_16.input <<EOF
&input
  beta_cm = 10.0
  eff_charge = 1.5, 0.5, 
  fn_int = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_save_wave = "Sc44_GCLSTsdpfsdgix5pn_j16p.wav"
  gl = 1.0, 0.0, 
  gs = 4.18875, -2.8695
  hw_type = 2
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 16
  n_block = 0
  n_eigen = 60
  n_restart_vec = 90
&end
EOF
nice ./kshell.exe Sc44_GCLSTsdpfsdgix5pn_16.input > log_Sc44_GCLSTsdpfsdgix5pn_j16p.txt 2>&1 

rm -f tmp_snapshot_Sc44_GCLSTsdpfsdgix5pn_p.ptn_16_* tmp_lv_Sc44_GCLSTsdpfsdgix5pn_p.ptn_16_* Sc44_GCLSTsdpfsdgix5pn_16.input 


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_j18p.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_18.input <<EOF
&input
  beta_cm = 10.0
  eff_charge = 1.5, 0.5, 
  fn_int = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_save_wave = "Sc44_GCLSTsdpfsdgix5pn_j18p.wav"
  gl = 1.0, 0.0, 
  gs = 4.18875, -2.8695
  hw_type = 2
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 18
  n_block = 0
  n_eigen = 51
  n_restart_vec = 90
&end
EOF
nice ./kshell.exe Sc44_GCLSTsdpfsdgix5pn_18.input > log_Sc44_GCLSTsdpfsdgix5pn_j18p.txt 2>&1 

rm -f tmp_snapshot_Sc44_GCLSTsdpfsdgix5pn_p.ptn_18_* tmp_lv_Sc44_GCLSTsdpfsdgix5pn_p.ptn_18_* Sc44_GCLSTsdpfsdgix5pn_18.input 


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_j20p.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_20.input <<EOF
&input
  beta_cm = 10.0
  eff_charge = 1.5, 0.5, 
  fn_int = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_save_wave = "Sc44_GCLSTsdpfsdgix5pn_j20p.wav"
  gl = 1.0, 0.0, 
  gs = 4.18875, -2.8695
  hw_type = 2
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 20
  n_block = 0
  n_eigen = 21
  n_restart_vec = 90
&end
EOF
nice ./kshell.exe Sc44_GCLSTsdpfsdgix5pn_20.input > log_Sc44_GCLSTsdpfsdgix5pn_j20p.txt 2>&1 

rm -f tmp_snapshot_Sc44_GCLSTsdpfsdgix5pn_p.ptn_20_* tmp_lv_Sc44_GCLSTsdpfsdgix5pn_p.ptn_20_* Sc44_GCLSTsdpfsdgix5pn_20.input 


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_j22p.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_22.input <<EOF
&input
  beta_cm = 10.0
  eff_charge = 1.5, 0.5, 
  fn_int = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_save_wave = "Sc44_GCLSTsdpfsdgix5pn_j22p.wav"
  gl = 1.0, 0.0, 
  gs = 4.18875, -2.8695
  hw_type = 2
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 22
  n_block = 0
  n_eigen = 7
  n_restart_vec = 90
&end
EOF
nice ./kshell.exe Sc44_GCLSTsdpfsdgix5pn_22.input > log_Sc44_GCLSTsdpfsdgix5pn_j22p.txt 2>&1 

rm -f tmp_snapshot_Sc44_GCLSTsdpfsdgix5pn_p.ptn_22_* tmp_lv_Sc44_GCLSTsdpfsdgix5pn_p.ptn_22_* Sc44_GCLSTsdpfsdgix5pn_22.input 


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_j24p.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_24.input <<EOF
&input
  beta_cm = 10.0
  eff_charge = 1.5, 0.5, 
  fn_int = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_save_wave = "Sc44_GCLSTsdpfsdgix5pn_j24p.wav"
  gl = 1.0, 0.0, 
  gs = 4.18875, -2.8695
  hw_type = 2
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 24
  n_block = 0
  n_eigen = 1
  n_restart_vec = 90
&end
EOF
nice ./kshell.exe Sc44_GCLSTsdpfsdgix5pn_24.input > log_Sc44_GCLSTsdpfsdgix5pn_j24p.txt 2>&1 

rm -f tmp_snapshot_Sc44_GCLSTsdpfsdgix5pn_p.ptn_24_* tmp_lv_Sc44_GCLSTsdpfsdgix5pn_p.ptn_24_* Sc44_GCLSTsdpfsdgix5pn_24.input 


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_j0n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_0.input <<EOF
&input
  beta_cm = 10.0
  eff_charge = 1.5, 0.5, 
  fn_int = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_save_wave = "Sc44_GCLSTsdpfsdgix5pn_j0n.wav"
  gl = 1.0, 0.0, 
  gs = 4.18875, -2.8695
  hw_type = 2
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 0
  n_block = 0
  n_eigen = 60
  n_restart_vec = 90
&end
EOF
nice ./kshell.exe Sc44_GCLSTsdpfsdgix5pn_0.input > log_Sc44_GCLSTsdpfsdgix5pn_j0n.txt 2>&1 

rm -f tmp_snapshot_Sc44_GCLSTsdpfsdgix5pn_n.ptn_0_* tmp_lv_Sc44_GCLSTsdpfsdgix5pn_n.ptn_0_* Sc44_GCLSTsdpfsdgix5pn_0.input 


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_j2n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_2.input <<EOF
&input
  beta_cm = 10.0
  eff_charge = 1.5, 0.5, 
  fn_int = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_save_wave = "Sc44_GCLSTsdpfsdgix5pn_j2n.wav"
  gl = 1.0, 0.0, 
  gs = 4.18875, -2.8695
  hw_type = 2
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 2
  n_block = 0
  n_eigen = 60
  n_restart_vec = 90
&end
EOF
nice ./kshell.exe Sc44_GCLSTsdpfsdgix5pn_2.input > log_Sc44_GCLSTsdpfsdgix5pn_j2n.txt 2>&1 

rm -f tmp_snapshot_Sc44_GCLSTsdpfsdgix5pn_n.ptn_2_* tmp_lv_Sc44_GCLSTsdpfsdgix5pn_n.ptn_2_* Sc44_GCLSTsdpfsdgix5pn_2.input 


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_j4n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_4.input <<EOF
&input
  beta_cm = 10.0
  eff_charge = 1.5, 0.5, 
  fn_int = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_save_wave = "Sc44_GCLSTsdpfsdgix5pn_j4n.wav"
  gl = 1.0, 0.0, 
  gs = 4.18875, -2.8695
  hw_type = 2
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 4
  n_block = 0
  n_eigen = 60
  n_restart_vec = 90
&end
EOF
nice ./kshell.exe Sc44_GCLSTsdpfsdgix5pn_4.input > log_Sc44_GCLSTsdpfsdgix5pn_j4n.txt 2>&1 

rm -f tmp_snapshot_Sc44_GCLSTsdpfsdgix5pn_n.ptn_4_* tmp_lv_Sc44_GCLSTsdpfsdgix5pn_n.ptn_4_* Sc44_GCLSTsdpfsdgix5pn_4.input 


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_j6n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_6.input <<EOF
&input
  beta_cm = 10.0
  eff_charge = 1.5, 0.5, 
  fn_int = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_save_wave = "Sc44_GCLSTsdpfsdgix5pn_j6n.wav"
  gl = 1.0, 0.0, 
  gs = 4.18875, -2.8695
  hw_type = 2
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 6
  n_block = 0
  n_eigen = 60
  n_restart_vec = 90
&end
EOF
nice ./kshell.exe Sc44_GCLSTsdpfsdgix5pn_6.input > log_Sc44_GCLSTsdpfsdgix5pn_j6n.txt 2>&1 

rm -f tmp_snapshot_Sc44_GCLSTsdpfsdgix5pn_n.ptn_6_* tmp_lv_Sc44_GCLSTsdpfsdgix5pn_n.ptn_6_* Sc44_GCLSTsdpfsdgix5pn_6.input 


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_j8n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_8.input <<EOF
&input
  beta_cm = 10.0
  eff_charge = 1.5, 0.5, 
  fn_int = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_save_wave = "Sc44_GCLSTsdpfsdgix5pn_j8n.wav"
  gl = 1.0, 0.0, 
  gs = 4.18875, -2.8695
  hw_type = 2
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 8
  n_block = 0
  n_eigen = 60
  n_restart_vec = 90
&end
EOF
nice ./kshell.exe Sc44_GCLSTsdpfsdgix5pn_8.input > log_Sc44_GCLSTsdpfsdgix5pn_j8n.txt 2>&1 

rm -f tmp_snapshot_Sc44_GCLSTsdpfsdgix5pn_n.ptn_8_* tmp_lv_Sc44_GCLSTsdpfsdgix5pn_n.ptn_8_* Sc44_GCLSTsdpfsdgix5pn_8.input 


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_j10n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_10.input <<EOF
&input
  beta_cm = 10.0
  eff_charge = 1.5, 0.5, 
  fn_int = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_save_wave = "Sc44_GCLSTsdpfsdgix5pn_j10n.wav"
  gl = 1.0, 0.0, 
  gs = 4.18875, -2.8695
  hw_type = 2
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 10
  n_block = 0
  n_eigen = 60
  n_restart_vec = 90
&end
EOF
nice ./kshell.exe Sc44_GCLSTsdpfsdgix5pn_10.input > log_Sc44_GCLSTsdpfsdgix5pn_j10n.txt 2>&1 

rm -f tmp_snapshot_Sc44_GCLSTsdpfsdgix5pn_n.ptn_10_* tmp_lv_Sc44_GCLSTsdpfsdgix5pn_n.ptn_10_* Sc44_GCLSTsdpfsdgix5pn_10.input 


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_j12n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_12.input <<EOF
&input
  beta_cm = 10.0
  eff_charge = 1.5, 0.5, 
  fn_int = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_save_wave = "Sc44_GCLSTsdpfsdgix5pn_j12n.wav"
  gl = 1.0, 0.0, 
  gs = 4.18875, -2.8695
  hw_type = 2
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 12
  n_block = 0
  n_eigen = 60
  n_restart_vec = 90
&end
EOF
nice ./kshell.exe Sc44_GCLSTsdpfsdgix5pn_12.input > log_Sc44_GCLSTsdpfsdgix5pn_j12n.txt 2>&1 

rm -f tmp_snapshot_Sc44_GCLSTsdpfsdgix5pn_n.ptn_12_* tmp_lv_Sc44_GCLSTsdpfsdgix5pn_n.ptn_12_* Sc44_GCLSTsdpfsdgix5pn_12.input 


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_j14n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_14.input <<EOF
&input
  beta_cm = 10.0
  eff_charge = 1.5, 0.5, 
  fn_int = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_save_wave = "Sc44_GCLSTsdpfsdgix5pn_j14n.wav"
  gl = 1.0, 0.0, 
  gs = 4.18875, -2.8695
  hw_type = 2
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 14
  n_block = 0
  n_eigen = 60
  n_restart_vec = 90
&end
EOF
nice ./kshell.exe Sc44_GCLSTsdpfsdgix5pn_14.input > log_Sc44_GCLSTsdpfsdgix5pn_j14n.txt 2>&1 

rm -f tmp_snapshot_Sc44_GCLSTsdpfsdgix5pn_n.ptn_14_* tmp_lv_Sc44_GCLSTsdpfsdgix5pn_n.ptn_14_* Sc44_GCLSTsdpfsdgix5pn_14.input 


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_j16n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_16.input <<EOF
&input
  beta_cm = 10.0
  eff_charge = 1.5, 0.5, 
  fn_int = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_save_wave = "Sc44_GCLSTsdpfsdgix5pn_j16n.wav"
  gl = 1.0, 0.0, 
  gs = 4.18875, -2.8695
  hw_type = 2
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 16
  n_block = 0
  n_eigen = 60
  n_restart_vec = 90
&end
EOF
nice ./kshell.exe Sc44_GCLSTsdpfsdgix5pn_16.input > log_Sc44_GCLSTsdpfsdgix5pn_j16n.txt 2>&1 

rm -f tmp_snapshot_Sc44_GCLSTsdpfsdgix5pn_n.ptn_16_* tmp_lv_Sc44_GCLSTsdpfsdgix5pn_n.ptn_16_* Sc44_GCLSTsdpfsdgix5pn_16.input 


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_j18n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_18.input <<EOF
&input
  beta_cm = 10.0
  eff_charge = 1.5, 0.5, 
  fn_int = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_save_wave = "Sc44_GCLSTsdpfsdgix5pn_j18n.wav"
  gl = 1.0, 0.0, 
  gs = 4.18875, -2.8695
  hw_type = 2
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 18
  n_block = 0
  n_eigen = 60
  n_restart_vec = 90
&end
EOF
nice ./kshell.exe Sc44_GCLSTsdpfsdgix5pn_18.input > log_Sc44_GCLSTsdpfsdgix5pn_j18n.txt 2>&1 

rm -f tmp_snapshot_Sc44_GCLSTsdpfsdgix5pn_n.ptn_18_* tmp_lv_Sc44_GCLSTsdpfsdgix5pn_n.ptn_18_* Sc44_GCLSTsdpfsdgix5pn_18.input 


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_j20n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_20.input <<EOF
&input
  beta_cm = 10.0
  eff_charge = 1.5, 0.5, 
  fn_int = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_save_wave = "Sc44_GCLSTsdpfsdgix5pn_j20n.wav"
  gl = 1.0, 0.0, 
  gs = 4.18875, -2.8695
  hw_type = 2
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 20
  n_block = 0
  n_eigen = 60
  n_restart_vec = 90
&end
EOF
nice ./kshell.exe Sc44_GCLSTsdpfsdgix5pn_20.input > log_Sc44_GCLSTsdpfsdgix5pn_j20n.txt 2>&1 

rm -f tmp_snapshot_Sc44_GCLSTsdpfsdgix5pn_n.ptn_20_* tmp_lv_Sc44_GCLSTsdpfsdgix5pn_n.ptn_20_* Sc44_GCLSTsdpfsdgix5pn_20.input 


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_j22n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_22.input <<EOF
&input
  beta_cm = 10.0
  eff_charge = 1.5, 0.5, 
  fn_int = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_save_wave = "Sc44_GCLSTsdpfsdgix5pn_j22n.wav"
  gl = 1.0, 0.0, 
  gs = 4.18875, -2.8695
  hw_type = 2
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 22
  n_block = 0
  n_eigen = 60
  n_restart_vec = 90
&end
EOF
nice ./kshell.exe Sc44_GCLSTsdpfsdgix5pn_22.input > log_Sc44_GCLSTsdpfsdgix5pn_j22n.txt 2>&1 

rm -f tmp_snapshot_Sc44_GCLSTsdpfsdgix5pn_n.ptn_22_* tmp_lv_Sc44_GCLSTsdpfsdgix5pn_n.ptn_22_* Sc44_GCLSTsdpfsdgix5pn_22.input 


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_j24n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_24.input <<EOF
&input
  beta_cm = 10.0
  eff_charge = 1.5, 0.5, 
  fn_int = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_save_wave = "Sc44_GCLSTsdpfsdgix5pn_j24n.wav"
  gl = 1.0, 0.0, 
  gs = 4.18875, -2.8695
  hw_type = 2
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 24
  n_block = 0
  n_eigen = 60
  n_restart_vec = 90
&end
EOF
nice ./kshell.exe Sc44_GCLSTsdpfsdgix5pn_24.input > log_Sc44_GCLSTsdpfsdgix5pn_j24n.txt 2>&1 

rm -f tmp_snapshot_Sc44_GCLSTsdpfsdgix5pn_n.ptn_24_* tmp_lv_Sc44_GCLSTsdpfsdgix5pn_n.ptn_24_* Sc44_GCLSTsdpfsdgix5pn_24.input 


# --------------- transition probabilities --------------

echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j0p_j2p.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_0_2.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j0p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j2p.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_0_2.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j0p_j2p.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_0_2.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j0p_j4p.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_0_4.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j0p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j4p.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_0_4.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j0p_j4p.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_0_4.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j0p_j2n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_0_2.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j0p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j2n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_0_2.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j0p_j2n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_0_2.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j2p_j2p.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_2_2.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j2p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j2p.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_2_2.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j2p_j2p.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_2_2.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j2p_j4p.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_2_4.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j2p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j4p.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_2_4.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j2p_j4p.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_2_4.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j2p_j6p.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_2_6.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j2p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j6p.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_2_6.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j2p_j6p.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_2_6.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j2p_j0n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_2_0.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j2p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j0n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_2_0.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j2p_j0n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_2_0.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j2p_j2n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_2_2.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j2p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j2n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_2_2.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j2p_j2n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_2_2.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j2p_j4n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_2_4.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j2p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j4n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_2_4.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j2p_j4n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_2_4.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j4p_j4p.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_4_4.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j4p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j4p.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_4_4.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j4p_j4p.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_4_4.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j4p_j6p.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_4_6.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j4p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j6p.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_4_6.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j4p_j6p.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_4_6.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j4p_j8p.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_4_8.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j4p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j8p.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_4_8.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j4p_j8p.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_4_8.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j4p_j2n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_4_2.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j4p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j2n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_4_2.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j4p_j2n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_4_2.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j4p_j4n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_4_4.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j4p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j4n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_4_4.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j4p_j4n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_4_4.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j4p_j6n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_4_6.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j4p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j6n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_4_6.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j4p_j6n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_4_6.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j6p_j6p.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_6_6.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j6p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j6p.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_6_6.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j6p_j6p.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_6_6.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j6p_j8p.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_6_8.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j6p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j8p.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_6_8.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j6p_j8p.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_6_8.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j6p_j10p.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_6_10.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j6p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j10p.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_6_10.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j6p_j10p.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_6_10.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j6p_j4n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_6_4.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j6p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j4n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_6_4.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j6p_j4n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_6_4.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j6p_j6n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_6_6.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j6p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j6n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_6_6.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j6p_j6n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_6_6.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j6p_j8n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_6_8.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j6p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j8n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_6_8.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j6p_j8n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_6_8.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j8p_j8p.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_8_8.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j8p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j8p.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_8_8.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j8p_j8p.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_8_8.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j8p_j10p.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_8_10.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j8p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j10p.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_8_10.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j8p_j10p.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_8_10.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j8p_j12p.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_8_12.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j8p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j12p.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_8_12.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j8p_j12p.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_8_12.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j8p_j6n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_8_6.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j8p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j6n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_8_6.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j8p_j6n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_8_6.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j8p_j8n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_8_8.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j8p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j8n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_8_8.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j8p_j8n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_8_8.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j8p_j10n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_8_10.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j8p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j10n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_8_10.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j8p_j10n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_8_10.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j10p_j10p.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_10_10.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j10p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j10p.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_10_10.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j10p_j10p.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_10_10.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j10p_j12p.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_10_12.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j10p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j12p.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_10_12.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j10p_j12p.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_10_12.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j10p_j14p.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_10_14.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j10p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j14p.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_10_14.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j10p_j14p.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_10_14.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j10p_j8n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_10_8.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j10p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j8n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_10_8.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j10p_j8n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_10_8.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j10p_j10n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_10_10.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j10p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j10n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_10_10.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j10p_j10n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_10_10.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j10p_j12n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_10_12.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j10p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j12n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_10_12.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j10p_j12n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_10_12.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j12p_j12p.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_12_12.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j12p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j12p.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_12_12.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j12p_j12p.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_12_12.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j12p_j14p.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_12_14.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j12p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j14p.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_12_14.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j12p_j14p.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_12_14.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j12p_j16p.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_12_16.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j12p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j16p.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_12_16.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j12p_j16p.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_12_16.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j12p_j10n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_12_10.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j12p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j10n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_12_10.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j12p_j10n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_12_10.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j12p_j12n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_12_12.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j12p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j12n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_12_12.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j12p_j12n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_12_12.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j12p_j14n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_12_14.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j12p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j14n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_12_14.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j12p_j14n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_12_14.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j14p_j14p.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_14_14.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j14p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j14p.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_14_14.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j14p_j14p.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_14_14.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j14p_j16p.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_14_16.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j14p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j16p.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_14_16.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j14p_j16p.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_14_16.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j14p_j18p.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_14_18.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j14p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j18p.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_14_18.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j14p_j18p.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_14_18.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j14p_j12n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_14_12.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j14p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j12n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_14_12.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j14p_j12n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_14_12.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j14p_j14n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_14_14.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j14p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j14n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_14_14.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j14p_j14n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_14_14.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j14p_j16n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_14_16.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j14p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j16n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_14_16.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j14p_j16n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_14_16.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j16p_j16p.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_16_16.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j16p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j16p.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_16_16.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j16p_j16p.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_16_16.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j16p_j18p.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_16_18.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j16p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j18p.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_16_18.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j16p_j18p.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_16_18.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j16p_j20p.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_16_20.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j16p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j20p.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_16_20.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j16p_j20p.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_16_20.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j16p_j14n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_16_14.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j16p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j14n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_16_14.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j16p_j14n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_16_14.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j16p_j16n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_16_16.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j16p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j16n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_16_16.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j16p_j16n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_16_16.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j16p_j18n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_16_18.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j16p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j18n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_16_18.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j16p_j18n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_16_18.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j18p_j18p.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_18_18.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j18p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j18p.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_18_18.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j18p_j18p.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_18_18.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j18p_j20p.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_18_20.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j18p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j20p.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_18_20.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j18p_j20p.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_18_20.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j18p_j22p.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_18_22.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j18p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j22p.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_18_22.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j18p_j22p.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_18_22.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j18p_j16n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_18_16.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j18p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j16n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_18_16.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j18p_j16n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_18_16.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j18p_j18n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_18_18.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j18p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j18n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_18_18.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j18p_j18n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_18_18.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j18p_j20n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_18_20.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j18p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j20n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_18_20.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j18p_j20n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_18_20.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j20p_j20p.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_20_20.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j20p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j20p.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_20_20.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j20p_j20p.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_20_20.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j20p_j22p.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_20_22.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j20p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j22p.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_20_22.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j20p_j22p.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_20_22.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j20p_j24p.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_20_24.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j20p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j24p.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_20_24.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j20p_j24p.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_20_24.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j20p_j18n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_20_18.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j20p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j18n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_20_18.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j20p_j18n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_20_18.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j20p_j20n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_20_20.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j20p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j20n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_20_20.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j20p_j20n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_20_20.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j20p_j22n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_20_22.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j20p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j22n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_20_22.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j20p_j22n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_20_22.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j22p_j22p.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_22_22.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j22p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j22p.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_22_22.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j22p_j22p.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_22_22.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j22p_j24p.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_22_24.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j22p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j24p.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_22_24.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j22p_j24p.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_22_24.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j22p_j20n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_22_20.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j22p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j20n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_22_20.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j22p_j20n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_22_20.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j22p_j22n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_22_22.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j22p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j22n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_22_22.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j22p_j22n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_22_22.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j22p_j24n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_22_24.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j22p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j24n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_22_24.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j22p_j24n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_22_24.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j24p_j24p.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_24_24.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j24p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j24p.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_24_24.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j24p_j24p.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_24_24.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j24p_j22n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_24_22.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j24p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j22n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_24_22.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j24p_j22n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_24_22.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j24p_j24n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_24_24.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j24p.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j24n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_24_24.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j24p_j24n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_24_24.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j0n_j2n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_0_2.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j0n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j2n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_0_2.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j0n_j2n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_0_2.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j0n_j4n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_0_4.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j0n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j4n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_0_4.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j0n_j4n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_0_4.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j2n_j2n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_2_2.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j2n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j2n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_2_2.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j2n_j2n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_2_2.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j2n_j4n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_2_4.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j2n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j4n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_2_4.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j2n_j4n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_2_4.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j2n_j6n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_2_6.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j2n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j6n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_2_6.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j2n_j6n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_2_6.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j4n_j4n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_4_4.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j4n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j4n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_4_4.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j4n_j4n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_4_4.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j4n_j6n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_4_6.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j4n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j6n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_4_6.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j4n_j6n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_4_6.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j4n_j8n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_4_8.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j4n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j8n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_4_8.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j4n_j8n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_4_8.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j6n_j6n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_6_6.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j6n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j6n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_6_6.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j6n_j6n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_6_6.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j6n_j8n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_6_8.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j6n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j8n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_6_8.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j6n_j8n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_6_8.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j6n_j10n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_6_10.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j6n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j10n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_6_10.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j6n_j10n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_6_10.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j8n_j8n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_8_8.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j8n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j8n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_8_8.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j8n_j8n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_8_8.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j8n_j10n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_8_10.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j8n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j10n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_8_10.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j8n_j10n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_8_10.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j8n_j12n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_8_12.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j8n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j12n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_8_12.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j8n_j12n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_8_12.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j10n_j10n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_10_10.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j10n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j10n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_10_10.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j10n_j10n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_10_10.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j10n_j12n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_10_12.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j10n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j12n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_10_12.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j10n_j12n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_10_12.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j10n_j14n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_10_14.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j10n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j14n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_10_14.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j10n_j14n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_10_14.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j12n_j12n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_12_12.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j12n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j12n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_12_12.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j12n_j12n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_12_12.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j12n_j14n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_12_14.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j12n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j14n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_12_14.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j12n_j14n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_12_14.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j12n_j16n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_12_16.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j12n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j16n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_12_16.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j12n_j16n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_12_16.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j14n_j14n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_14_14.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j14n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j14n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_14_14.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j14n_j14n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_14_14.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j14n_j16n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_14_16.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j14n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j16n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_14_16.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j14n_j16n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_14_16.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j14n_j18n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_14_18.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j14n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j18n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_14_18.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j14n_j18n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_14_18.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j16n_j16n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_16_16.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j16n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j16n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_16_16.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j16n_j16n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_16_16.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j16n_j18n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_16_18.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j16n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j18n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_16_18.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j16n_j18n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_16_18.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j16n_j20n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_16_20.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j16n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j20n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_16_20.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j16n_j20n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_16_20.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j18n_j18n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_18_18.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j18n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j18n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_18_18.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j18n_j18n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_18_18.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j18n_j20n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_18_20.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j18n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j20n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_18_20.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j18n_j20n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_18_20.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j18n_j22n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_18_22.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j18n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j22n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_18_22.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j18n_j22n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_18_22.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j20n_j20n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_20_20.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j20n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j20n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_20_20.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j20n_j20n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_20_20.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j20n_j22n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_20_22.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j20n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j22n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_20_22.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j20n_j22n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_20_22.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j20n_j24n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_20_24.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j20n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j24n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_20_24.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j20n_j24n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_20_24.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j22n_j22n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_22_22.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j22n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j22n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_22_22.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j22n_j22n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_22_22.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j22n_j24n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_22_24.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j22n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j24n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_22_24.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j22n_j24n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_22_24.input


echo "start running log_Sc44_GCLSTsdpfsdgix5pn_tr_j24n_j24n.txt ..."
cat > Sc44_GCLSTsdpfsdgix5pn_24_24.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_ptn_r = "Sc44_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc44_GCLSTsdpfsdgix5pn_j24n.wav"
  fn_load_wave_r = "Sc44_GCLSTsdpfsdgix5pn_j24n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.18875, -2.8695
&end
EOF
nice ./transit.exe Sc44_GCLSTsdpfsdgix5pn_24_24.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j24n_j24n.txt 2>&1 

rm -f Sc44_GCLSTsdpfsdgix5pn_24_24.input


./collect_logs.py log_*Sc44_GCLSTsdpfsdgix5pn* > summary_Sc44_GCLSTsdpfsdgix5pn.txt
echo "Finish computing Sc44_GCLSTsdpfsdgix5pn.    See summary_Sc44_GCLSTsdpfsdgix5pn.txt"
echo 

