#!/bin/bash 
#SBATCH --job-name=V51_gxpf1a 
#SBATCH --account=NN9464K 
## Syntax is d-hh:mm:ss 
#SBATCH --time=1-00:00:00 
#SBATCH --nodes=32
#SBATCH --ntasks-per-node=1 
#SBATCH --cpus-per-task=32 
#SBATCH --mail-type=ALL 
#SBATCH --mail-user=jonkd@uio.no 
module --quiet purge  
module load intel/2020b 
module load Python/3.8.6-GCCcore-10.2.0 
set -o errexit  
set -o nounset 
# ---------- V51_gxpf1a --------------
echo "start running log_V51_gxpf1a_j1n.txt ..."
cat > V51_gxpf1a_1.input <<EOF
&input
  beta_cm = 0.0
  eff_charge = 1.5, 0.5
  fn_int = "gxpf1a.snt"
  fn_ptn = "V51_gxpf1a_n.ptn"
  fn_save_wave = "V51_gxpf1a_j1n.wav"
  gl = 1.0, 0.0, 
  gs = 5.0265, -3.4434, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 650
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 1
  n_block = 0
  n_eigen = 400
  n_restart_vec = 600
  orbs_ratio = 2, 3, 4, 6, 7, 8
&end
EOF
mpiexec ./kshell.exe V51_gxpf1a_1.input > log_V51_gxpf1a_j1n.txt  

rm -f tmp_snapshot_V51_gxpf1a_n.ptn_1_* tmp_lv_V51_gxpf1a_n.ptn_1_* V51_gxpf1a_1.input 


echo "start running log_V51_gxpf1a_j3n.txt ..."
cat > V51_gxpf1a_3.input <<EOF
&input
  beta_cm = 0.0
  eff_charge = 1.5, 0.5
  fn_int = "gxpf1a.snt"
  fn_ptn = "V51_gxpf1a_n.ptn"
  fn_save_wave = "V51_gxpf1a_j3n.wav"
  gl = 1.0, 0.0, 
  gs = 5.0265, -3.4434, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 650
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 3
  n_block = 0
  n_eigen = 400
  n_restart_vec = 600
  orbs_ratio = 2, 3, 4, 6, 7, 8
&end
EOF
mpiexec ./kshell.exe V51_gxpf1a_3.input > log_V51_gxpf1a_j3n.txt  

rm -f tmp_snapshot_V51_gxpf1a_n.ptn_3_* tmp_lv_V51_gxpf1a_n.ptn_3_* V51_gxpf1a_3.input 


echo "start running log_V51_gxpf1a_j5n.txt ..."
cat > V51_gxpf1a_5.input <<EOF
&input
  beta_cm = 0.0
  eff_charge = 1.5, 0.5
  fn_int = "gxpf1a.snt"
  fn_ptn = "V51_gxpf1a_n.ptn"
  fn_save_wave = "V51_gxpf1a_j5n.wav"
  gl = 1.0, 0.0, 
  gs = 5.0265, -3.4434, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 650
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 5
  n_block = 0
  n_eigen = 400
  n_restart_vec = 600
  orbs_ratio = 2, 3, 4, 6, 7, 8
&end
EOF
mpiexec ./kshell.exe V51_gxpf1a_5.input > log_V51_gxpf1a_j5n.txt  

rm -f tmp_snapshot_V51_gxpf1a_n.ptn_5_* tmp_lv_V51_gxpf1a_n.ptn_5_* V51_gxpf1a_5.input 


echo "start running log_V51_gxpf1a_j7n.txt ..."
cat > V51_gxpf1a_7.input <<EOF
&input
  beta_cm = 0.0
  eff_charge = 1.5, 0.5
  fn_int = "gxpf1a.snt"
  fn_ptn = "V51_gxpf1a_n.ptn"
  fn_save_wave = "V51_gxpf1a_j7n.wav"
  gl = 1.0, 0.0, 
  gs = 5.0265, -3.4434, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 650
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 7
  n_block = 0
  n_eigen = 400
  n_restart_vec = 600
  orbs_ratio = 2, 3, 4, 6, 7, 8
&end
EOF
mpiexec ./kshell.exe V51_gxpf1a_7.input > log_V51_gxpf1a_j7n.txt  

rm -f tmp_snapshot_V51_gxpf1a_n.ptn_7_* tmp_lv_V51_gxpf1a_n.ptn_7_* V51_gxpf1a_7.input 


echo "start running log_V51_gxpf1a_j9n.txt ..."
cat > V51_gxpf1a_9.input <<EOF
&input
  beta_cm = 0.0
  eff_charge = 1.5, 0.5
  fn_int = "gxpf1a.snt"
  fn_ptn = "V51_gxpf1a_n.ptn"
  fn_save_wave = "V51_gxpf1a_j9n.wav"
  gl = 1.0, 0.0, 
  gs = 5.0265, -3.4434, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 650
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 9
  n_block = 0
  n_eigen = 400
  n_restart_vec = 600
  orbs_ratio = 2, 3, 4, 6, 7, 8
&end
EOF
mpiexec ./kshell.exe V51_gxpf1a_9.input > log_V51_gxpf1a_j9n.txt  

rm -f tmp_snapshot_V51_gxpf1a_n.ptn_9_* tmp_lv_V51_gxpf1a_n.ptn_9_* V51_gxpf1a_9.input 


echo "start running log_V51_gxpf1a_j11n.txt ..."
cat > V51_gxpf1a_11.input <<EOF
&input
  beta_cm = 0.0
  eff_charge = 1.5, 0.5
  fn_int = "gxpf1a.snt"
  fn_ptn = "V51_gxpf1a_n.ptn"
  fn_save_wave = "V51_gxpf1a_j11n.wav"
  gl = 1.0, 0.0, 
  gs = 5.0265, -3.4434, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 650
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 11
  n_block = 0
  n_eigen = 400
  n_restart_vec = 600
  orbs_ratio = 2, 3, 4, 6, 7, 8
&end
EOF
mpiexec ./kshell.exe V51_gxpf1a_11.input > log_V51_gxpf1a_j11n.txt  

rm -f tmp_snapshot_V51_gxpf1a_n.ptn_11_* tmp_lv_V51_gxpf1a_n.ptn_11_* V51_gxpf1a_11.input 


echo "start running log_V51_gxpf1a_j13n.txt ..."
cat > V51_gxpf1a_13.input <<EOF
&input
  beta_cm = 0.0
  eff_charge = 1.5, 0.5
  fn_int = "gxpf1a.snt"
  fn_ptn = "V51_gxpf1a_n.ptn"
  fn_save_wave = "V51_gxpf1a_j13n.wav"
  gl = 1.0, 0.0, 
  gs = 5.0265, -3.4434, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 650
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 13
  n_block = 0
  n_eigen = 400
  n_restart_vec = 600
  orbs_ratio = 2, 3, 4, 6, 7, 8
&end
EOF
mpiexec ./kshell.exe V51_gxpf1a_13.input > log_V51_gxpf1a_j13n.txt  

rm -f tmp_snapshot_V51_gxpf1a_n.ptn_13_* tmp_lv_V51_gxpf1a_n.ptn_13_* V51_gxpf1a_13.input 


echo "start running log_V51_gxpf1a_j15n.txt ..."
cat > V51_gxpf1a_15.input <<EOF
&input
  beta_cm = 0.0
  eff_charge = 1.5, 0.5
  fn_int = "gxpf1a.snt"
  fn_ptn = "V51_gxpf1a_n.ptn"
  fn_save_wave = "V51_gxpf1a_j15n.wav"
  gl = 1.0, 0.0, 
  gs = 5.0265, -3.4434, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 650
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 15
  n_block = 0
  n_eigen = 400
  n_restart_vec = 600
  orbs_ratio = 2, 3, 4, 6, 7, 8
&end
EOF
mpiexec ./kshell.exe V51_gxpf1a_15.input > log_V51_gxpf1a_j15n.txt  

rm -f tmp_snapshot_V51_gxpf1a_n.ptn_15_* tmp_lv_V51_gxpf1a_n.ptn_15_* V51_gxpf1a_15.input 


echo "start running log_V51_gxpf1a_j17n.txt ..."
cat > V51_gxpf1a_17.input <<EOF
&input
  beta_cm = 0.0
  eff_charge = 1.5, 0.5
  fn_int = "gxpf1a.snt"
  fn_ptn = "V51_gxpf1a_n.ptn"
  fn_save_wave = "V51_gxpf1a_j17n.wav"
  gl = 1.0, 0.0, 
  gs = 5.0265, -3.4434, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 650
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 17
  n_block = 0
  n_eigen = 400
  n_restart_vec = 600
  orbs_ratio = 2, 3, 4, 6, 7, 8
&end
EOF
mpiexec ./kshell.exe V51_gxpf1a_17.input > log_V51_gxpf1a_j17n.txt  

rm -f tmp_snapshot_V51_gxpf1a_n.ptn_17_* tmp_lv_V51_gxpf1a_n.ptn_17_* V51_gxpf1a_17.input 


echo "start running log_V51_gxpf1a_j19n.txt ..."
cat > V51_gxpf1a_19.input <<EOF
&input
  beta_cm = 0.0
  eff_charge = 1.5, 0.5
  fn_int = "gxpf1a.snt"
  fn_ptn = "V51_gxpf1a_n.ptn"
  fn_save_wave = "V51_gxpf1a_j19n.wav"
  gl = 1.0, 0.0, 
  gs = 5.0265, -3.4434, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 650
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 19
  n_block = 0
  n_eigen = 400
  n_restart_vec = 600
  orbs_ratio = 2, 3, 4, 6, 7, 8
&end
EOF
mpiexec ./kshell.exe V51_gxpf1a_19.input > log_V51_gxpf1a_j19n.txt  

rm -f tmp_snapshot_V51_gxpf1a_n.ptn_19_* tmp_lv_V51_gxpf1a_n.ptn_19_* V51_gxpf1a_19.input 


echo "start running log_V51_gxpf1a_j21n.txt ..."
cat > V51_gxpf1a_21.input <<EOF
&input
  beta_cm = 0.0
  eff_charge = 1.5, 0.5
  fn_int = "gxpf1a.snt"
  fn_ptn = "V51_gxpf1a_n.ptn"
  fn_save_wave = "V51_gxpf1a_j21n.wav"
  gl = 1.0, 0.0, 
  gs = 5.0265, -3.4434, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 650
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 21
  n_block = 0
  n_eigen = 400
  n_restart_vec = 600
  orbs_ratio = 2, 3, 4, 6, 7, 8
&end
EOF
mpiexec ./kshell.exe V51_gxpf1a_21.input > log_V51_gxpf1a_j21n.txt  

rm -f tmp_snapshot_V51_gxpf1a_n.ptn_21_* tmp_lv_V51_gxpf1a_n.ptn_21_* V51_gxpf1a_21.input 


echo "start running log_V51_gxpf1a_j23n.txt ..."
cat > V51_gxpf1a_23.input <<EOF
&input
  beta_cm = 0.0
  eff_charge = 1.5, 0.5
  fn_int = "gxpf1a.snt"
  fn_ptn = "V51_gxpf1a_n.ptn"
  fn_save_wave = "V51_gxpf1a_j23n.wav"
  gl = 1.0, 0.0, 
  gs = 5.0265, -3.4434, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 650
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 23
  n_block = 0
  n_eigen = 400
  n_restart_vec = 600
  orbs_ratio = 2, 3, 4, 6, 7, 8
&end
EOF
mpiexec ./kshell.exe V51_gxpf1a_23.input > log_V51_gxpf1a_j23n.txt  

rm -f tmp_snapshot_V51_gxpf1a_n.ptn_23_* tmp_lv_V51_gxpf1a_n.ptn_23_* V51_gxpf1a_23.input 


echo "start running log_V51_gxpf1a_j25n.txt ..."
cat > V51_gxpf1a_25.input <<EOF
&input
  beta_cm = 0.0
  eff_charge = 1.5, 0.5
  fn_int = "gxpf1a.snt"
  fn_ptn = "V51_gxpf1a_n.ptn"
  fn_save_wave = "V51_gxpf1a_j25n.wav"
  gl = 1.0, 0.0, 
  gs = 5.0265, -3.4434, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 650
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 25
  n_block = 0
  n_eigen = 400
  n_restart_vec = 600
  orbs_ratio = 2, 3, 4, 6, 7, 8
&end
EOF
mpiexec ./kshell.exe V51_gxpf1a_25.input > log_V51_gxpf1a_j25n.txt  

rm -f tmp_snapshot_V51_gxpf1a_n.ptn_25_* tmp_lv_V51_gxpf1a_n.ptn_25_* V51_gxpf1a_25.input 


echo "start running log_V51_gxpf1a_j27n.txt ..."
cat > V51_gxpf1a_27.input <<EOF
&input
  beta_cm = 0.0
  eff_charge = 1.5, 0.5
  fn_int = "gxpf1a.snt"
  fn_ptn = "V51_gxpf1a_n.ptn"
  fn_save_wave = "V51_gxpf1a_j27n.wav"
  gl = 1.0, 0.0, 
  gs = 5.0265, -3.4434, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 650
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 27
  n_block = 0
  n_eigen = 400
  n_restart_vec = 600
  orbs_ratio = 2, 3, 4, 6, 7, 8
&end
EOF
mpiexec ./kshell.exe V51_gxpf1a_27.input > log_V51_gxpf1a_j27n.txt  

rm -f tmp_snapshot_V51_gxpf1a_n.ptn_27_* tmp_lv_V51_gxpf1a_n.ptn_27_* V51_gxpf1a_27.input 


# --------------- transition probabilities --------------

echo "start running log_V51_gxpf1a_tr_j1n_j1n.txt ..."
cat > V51_gxpf1a_1_1.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V51_gxpf1a_n.ptn"
  fn_ptn_r = "V51_gxpf1a_n.ptn"
  fn_load_wave_l = "V51_gxpf1a_j1n.wav"
  fn_load_wave_r = "V51_gxpf1a_j1n.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V51_gxpf1a_1_1.input > log_V51_gxpf1a_tr_j1n_j1n.txt  

rm -f V51_gxpf1a_1_1.input


echo "start running log_V51_gxpf1a_tr_j1n_j3n.txt ..."
cat > V51_gxpf1a_1_3.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V51_gxpf1a_n.ptn"
  fn_ptn_r = "V51_gxpf1a_n.ptn"
  fn_load_wave_l = "V51_gxpf1a_j1n.wav"
  fn_load_wave_r = "V51_gxpf1a_j3n.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V51_gxpf1a_1_3.input > log_V51_gxpf1a_tr_j1n_j3n.txt  

rm -f V51_gxpf1a_1_3.input


echo "start running log_V51_gxpf1a_tr_j1n_j5n.txt ..."
cat > V51_gxpf1a_1_5.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V51_gxpf1a_n.ptn"
  fn_ptn_r = "V51_gxpf1a_n.ptn"
  fn_load_wave_l = "V51_gxpf1a_j1n.wav"
  fn_load_wave_r = "V51_gxpf1a_j5n.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V51_gxpf1a_1_5.input > log_V51_gxpf1a_tr_j1n_j5n.txt  

rm -f V51_gxpf1a_1_5.input


echo "start running log_V51_gxpf1a_tr_j3n_j3n.txt ..."
cat > V51_gxpf1a_3_3.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V51_gxpf1a_n.ptn"
  fn_ptn_r = "V51_gxpf1a_n.ptn"
  fn_load_wave_l = "V51_gxpf1a_j3n.wav"
  fn_load_wave_r = "V51_gxpf1a_j3n.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V51_gxpf1a_3_3.input > log_V51_gxpf1a_tr_j3n_j3n.txt  

rm -f V51_gxpf1a_3_3.input


echo "start running log_V51_gxpf1a_tr_j3n_j5n.txt ..."
cat > V51_gxpf1a_3_5.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V51_gxpf1a_n.ptn"
  fn_ptn_r = "V51_gxpf1a_n.ptn"
  fn_load_wave_l = "V51_gxpf1a_j3n.wav"
  fn_load_wave_r = "V51_gxpf1a_j5n.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V51_gxpf1a_3_5.input > log_V51_gxpf1a_tr_j3n_j5n.txt  

rm -f V51_gxpf1a_3_5.input


echo "start running log_V51_gxpf1a_tr_j3n_j7n.txt ..."
cat > V51_gxpf1a_3_7.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V51_gxpf1a_n.ptn"
  fn_ptn_r = "V51_gxpf1a_n.ptn"
  fn_load_wave_l = "V51_gxpf1a_j3n.wav"
  fn_load_wave_r = "V51_gxpf1a_j7n.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V51_gxpf1a_3_7.input > log_V51_gxpf1a_tr_j3n_j7n.txt  

rm -f V51_gxpf1a_3_7.input


echo "start running log_V51_gxpf1a_tr_j5n_j5n.txt ..."
cat > V51_gxpf1a_5_5.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V51_gxpf1a_n.ptn"
  fn_ptn_r = "V51_gxpf1a_n.ptn"
  fn_load_wave_l = "V51_gxpf1a_j5n.wav"
  fn_load_wave_r = "V51_gxpf1a_j5n.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V51_gxpf1a_5_5.input > log_V51_gxpf1a_tr_j5n_j5n.txt  

rm -f V51_gxpf1a_5_5.input


echo "start running log_V51_gxpf1a_tr_j5n_j7n.txt ..."
cat > V51_gxpf1a_5_7.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V51_gxpf1a_n.ptn"
  fn_ptn_r = "V51_gxpf1a_n.ptn"
  fn_load_wave_l = "V51_gxpf1a_j5n.wav"
  fn_load_wave_r = "V51_gxpf1a_j7n.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V51_gxpf1a_5_7.input > log_V51_gxpf1a_tr_j5n_j7n.txt  

rm -f V51_gxpf1a_5_7.input


echo "start running log_V51_gxpf1a_tr_j5n_j9n.txt ..."
cat > V51_gxpf1a_5_9.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V51_gxpf1a_n.ptn"
  fn_ptn_r = "V51_gxpf1a_n.ptn"
  fn_load_wave_l = "V51_gxpf1a_j5n.wav"
  fn_load_wave_r = "V51_gxpf1a_j9n.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V51_gxpf1a_5_9.input > log_V51_gxpf1a_tr_j5n_j9n.txt  

rm -f V51_gxpf1a_5_9.input


echo "start running log_V51_gxpf1a_tr_j7n_j7n.txt ..."
cat > V51_gxpf1a_7_7.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V51_gxpf1a_n.ptn"
  fn_ptn_r = "V51_gxpf1a_n.ptn"
  fn_load_wave_l = "V51_gxpf1a_j7n.wav"
  fn_load_wave_r = "V51_gxpf1a_j7n.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V51_gxpf1a_7_7.input > log_V51_gxpf1a_tr_j7n_j7n.txt  

rm -f V51_gxpf1a_7_7.input


echo "start running log_V51_gxpf1a_tr_j7n_j9n.txt ..."
cat > V51_gxpf1a_7_9.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V51_gxpf1a_n.ptn"
  fn_ptn_r = "V51_gxpf1a_n.ptn"
  fn_load_wave_l = "V51_gxpf1a_j7n.wav"
  fn_load_wave_r = "V51_gxpf1a_j9n.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V51_gxpf1a_7_9.input > log_V51_gxpf1a_tr_j7n_j9n.txt  

rm -f V51_gxpf1a_7_9.input


echo "start running log_V51_gxpf1a_tr_j7n_j11n.txt ..."
cat > V51_gxpf1a_7_11.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V51_gxpf1a_n.ptn"
  fn_ptn_r = "V51_gxpf1a_n.ptn"
  fn_load_wave_l = "V51_gxpf1a_j7n.wav"
  fn_load_wave_r = "V51_gxpf1a_j11n.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V51_gxpf1a_7_11.input > log_V51_gxpf1a_tr_j7n_j11n.txt  

rm -f V51_gxpf1a_7_11.input


echo "start running log_V51_gxpf1a_tr_j9n_j9n.txt ..."
cat > V51_gxpf1a_9_9.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V51_gxpf1a_n.ptn"
  fn_ptn_r = "V51_gxpf1a_n.ptn"
  fn_load_wave_l = "V51_gxpf1a_j9n.wav"
  fn_load_wave_r = "V51_gxpf1a_j9n.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V51_gxpf1a_9_9.input > log_V51_gxpf1a_tr_j9n_j9n.txt  

rm -f V51_gxpf1a_9_9.input


echo "start running log_V51_gxpf1a_tr_j9n_j11n.txt ..."
cat > V51_gxpf1a_9_11.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V51_gxpf1a_n.ptn"
  fn_ptn_r = "V51_gxpf1a_n.ptn"
  fn_load_wave_l = "V51_gxpf1a_j9n.wav"
  fn_load_wave_r = "V51_gxpf1a_j11n.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V51_gxpf1a_9_11.input > log_V51_gxpf1a_tr_j9n_j11n.txt  

rm -f V51_gxpf1a_9_11.input


echo "start running log_V51_gxpf1a_tr_j9n_j13n.txt ..."
cat > V51_gxpf1a_9_13.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V51_gxpf1a_n.ptn"
  fn_ptn_r = "V51_gxpf1a_n.ptn"
  fn_load_wave_l = "V51_gxpf1a_j9n.wav"
  fn_load_wave_r = "V51_gxpf1a_j13n.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V51_gxpf1a_9_13.input > log_V51_gxpf1a_tr_j9n_j13n.txt  

rm -f V51_gxpf1a_9_13.input


echo "start running log_V51_gxpf1a_tr_j11n_j11n.txt ..."
cat > V51_gxpf1a_11_11.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V51_gxpf1a_n.ptn"
  fn_ptn_r = "V51_gxpf1a_n.ptn"
  fn_load_wave_l = "V51_gxpf1a_j11n.wav"
  fn_load_wave_r = "V51_gxpf1a_j11n.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V51_gxpf1a_11_11.input > log_V51_gxpf1a_tr_j11n_j11n.txt  

rm -f V51_gxpf1a_11_11.input


echo "start running log_V51_gxpf1a_tr_j11n_j13n.txt ..."
cat > V51_gxpf1a_11_13.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V51_gxpf1a_n.ptn"
  fn_ptn_r = "V51_gxpf1a_n.ptn"
  fn_load_wave_l = "V51_gxpf1a_j11n.wav"
  fn_load_wave_r = "V51_gxpf1a_j13n.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V51_gxpf1a_11_13.input > log_V51_gxpf1a_tr_j11n_j13n.txt  

rm -f V51_gxpf1a_11_13.input


echo "start running log_V51_gxpf1a_tr_j11n_j15n.txt ..."
cat > V51_gxpf1a_11_15.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V51_gxpf1a_n.ptn"
  fn_ptn_r = "V51_gxpf1a_n.ptn"
  fn_load_wave_l = "V51_gxpf1a_j11n.wav"
  fn_load_wave_r = "V51_gxpf1a_j15n.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V51_gxpf1a_11_15.input > log_V51_gxpf1a_tr_j11n_j15n.txt  

rm -f V51_gxpf1a_11_15.input


echo "start running log_V51_gxpf1a_tr_j13n_j13n.txt ..."
cat > V51_gxpf1a_13_13.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V51_gxpf1a_n.ptn"
  fn_ptn_r = "V51_gxpf1a_n.ptn"
  fn_load_wave_l = "V51_gxpf1a_j13n.wav"
  fn_load_wave_r = "V51_gxpf1a_j13n.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V51_gxpf1a_13_13.input > log_V51_gxpf1a_tr_j13n_j13n.txt  

rm -f V51_gxpf1a_13_13.input


echo "start running log_V51_gxpf1a_tr_j13n_j15n.txt ..."
cat > V51_gxpf1a_13_15.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V51_gxpf1a_n.ptn"
  fn_ptn_r = "V51_gxpf1a_n.ptn"
  fn_load_wave_l = "V51_gxpf1a_j13n.wav"
  fn_load_wave_r = "V51_gxpf1a_j15n.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V51_gxpf1a_13_15.input > log_V51_gxpf1a_tr_j13n_j15n.txt  

rm -f V51_gxpf1a_13_15.input


echo "start running log_V51_gxpf1a_tr_j13n_j17n.txt ..."
cat > V51_gxpf1a_13_17.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V51_gxpf1a_n.ptn"
  fn_ptn_r = "V51_gxpf1a_n.ptn"
  fn_load_wave_l = "V51_gxpf1a_j13n.wav"
  fn_load_wave_r = "V51_gxpf1a_j17n.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V51_gxpf1a_13_17.input > log_V51_gxpf1a_tr_j13n_j17n.txt  

rm -f V51_gxpf1a_13_17.input


echo "start running log_V51_gxpf1a_tr_j15n_j15n.txt ..."
cat > V51_gxpf1a_15_15.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V51_gxpf1a_n.ptn"
  fn_ptn_r = "V51_gxpf1a_n.ptn"
  fn_load_wave_l = "V51_gxpf1a_j15n.wav"
  fn_load_wave_r = "V51_gxpf1a_j15n.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V51_gxpf1a_15_15.input > log_V51_gxpf1a_tr_j15n_j15n.txt  

rm -f V51_gxpf1a_15_15.input


echo "start running log_V51_gxpf1a_tr_j15n_j17n.txt ..."
cat > V51_gxpf1a_15_17.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V51_gxpf1a_n.ptn"
  fn_ptn_r = "V51_gxpf1a_n.ptn"
  fn_load_wave_l = "V51_gxpf1a_j15n.wav"
  fn_load_wave_r = "V51_gxpf1a_j17n.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V51_gxpf1a_15_17.input > log_V51_gxpf1a_tr_j15n_j17n.txt  

rm -f V51_gxpf1a_15_17.input


echo "start running log_V51_gxpf1a_tr_j15n_j19n.txt ..."
cat > V51_gxpf1a_15_19.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V51_gxpf1a_n.ptn"
  fn_ptn_r = "V51_gxpf1a_n.ptn"
  fn_load_wave_l = "V51_gxpf1a_j15n.wav"
  fn_load_wave_r = "V51_gxpf1a_j19n.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V51_gxpf1a_15_19.input > log_V51_gxpf1a_tr_j15n_j19n.txt  

rm -f V51_gxpf1a_15_19.input


echo "start running log_V51_gxpf1a_tr_j17n_j17n.txt ..."
cat > V51_gxpf1a_17_17.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V51_gxpf1a_n.ptn"
  fn_ptn_r = "V51_gxpf1a_n.ptn"
  fn_load_wave_l = "V51_gxpf1a_j17n.wav"
  fn_load_wave_r = "V51_gxpf1a_j17n.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V51_gxpf1a_17_17.input > log_V51_gxpf1a_tr_j17n_j17n.txt  

rm -f V51_gxpf1a_17_17.input


echo "start running log_V51_gxpf1a_tr_j17n_j19n.txt ..."
cat > V51_gxpf1a_17_19.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V51_gxpf1a_n.ptn"
  fn_ptn_r = "V51_gxpf1a_n.ptn"
  fn_load_wave_l = "V51_gxpf1a_j17n.wav"
  fn_load_wave_r = "V51_gxpf1a_j19n.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V51_gxpf1a_17_19.input > log_V51_gxpf1a_tr_j17n_j19n.txt  

rm -f V51_gxpf1a_17_19.input


echo "start running log_V51_gxpf1a_tr_j17n_j21n.txt ..."
cat > V51_gxpf1a_17_21.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V51_gxpf1a_n.ptn"
  fn_ptn_r = "V51_gxpf1a_n.ptn"
  fn_load_wave_l = "V51_gxpf1a_j17n.wav"
  fn_load_wave_r = "V51_gxpf1a_j21n.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V51_gxpf1a_17_21.input > log_V51_gxpf1a_tr_j17n_j21n.txt  

rm -f V51_gxpf1a_17_21.input


echo "start running log_V51_gxpf1a_tr_j19n_j19n.txt ..."
cat > V51_gxpf1a_19_19.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V51_gxpf1a_n.ptn"
  fn_ptn_r = "V51_gxpf1a_n.ptn"
  fn_load_wave_l = "V51_gxpf1a_j19n.wav"
  fn_load_wave_r = "V51_gxpf1a_j19n.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V51_gxpf1a_19_19.input > log_V51_gxpf1a_tr_j19n_j19n.txt  

rm -f V51_gxpf1a_19_19.input


echo "start running log_V51_gxpf1a_tr_j19n_j21n.txt ..."
cat > V51_gxpf1a_19_21.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V51_gxpf1a_n.ptn"
  fn_ptn_r = "V51_gxpf1a_n.ptn"
  fn_load_wave_l = "V51_gxpf1a_j19n.wav"
  fn_load_wave_r = "V51_gxpf1a_j21n.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V51_gxpf1a_19_21.input > log_V51_gxpf1a_tr_j19n_j21n.txt  

rm -f V51_gxpf1a_19_21.input


echo "start running log_V51_gxpf1a_tr_j19n_j23n.txt ..."
cat > V51_gxpf1a_19_23.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V51_gxpf1a_n.ptn"
  fn_ptn_r = "V51_gxpf1a_n.ptn"
  fn_load_wave_l = "V51_gxpf1a_j19n.wav"
  fn_load_wave_r = "V51_gxpf1a_j23n.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V51_gxpf1a_19_23.input > log_V51_gxpf1a_tr_j19n_j23n.txt  

rm -f V51_gxpf1a_19_23.input


echo "start running log_V51_gxpf1a_tr_j21n_j21n.txt ..."
cat > V51_gxpf1a_21_21.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V51_gxpf1a_n.ptn"
  fn_ptn_r = "V51_gxpf1a_n.ptn"
  fn_load_wave_l = "V51_gxpf1a_j21n.wav"
  fn_load_wave_r = "V51_gxpf1a_j21n.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V51_gxpf1a_21_21.input > log_V51_gxpf1a_tr_j21n_j21n.txt  

rm -f V51_gxpf1a_21_21.input


echo "start running log_V51_gxpf1a_tr_j21n_j23n.txt ..."
cat > V51_gxpf1a_21_23.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V51_gxpf1a_n.ptn"
  fn_ptn_r = "V51_gxpf1a_n.ptn"
  fn_load_wave_l = "V51_gxpf1a_j21n.wav"
  fn_load_wave_r = "V51_gxpf1a_j23n.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V51_gxpf1a_21_23.input > log_V51_gxpf1a_tr_j21n_j23n.txt  

rm -f V51_gxpf1a_21_23.input


echo "start running log_V51_gxpf1a_tr_j21n_j25n.txt ..."
cat > V51_gxpf1a_21_25.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V51_gxpf1a_n.ptn"
  fn_ptn_r = "V51_gxpf1a_n.ptn"
  fn_load_wave_l = "V51_gxpf1a_j21n.wav"
  fn_load_wave_r = "V51_gxpf1a_j25n.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V51_gxpf1a_21_25.input > log_V51_gxpf1a_tr_j21n_j25n.txt  

rm -f V51_gxpf1a_21_25.input


echo "start running log_V51_gxpf1a_tr_j23n_j23n.txt ..."
cat > V51_gxpf1a_23_23.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V51_gxpf1a_n.ptn"
  fn_ptn_r = "V51_gxpf1a_n.ptn"
  fn_load_wave_l = "V51_gxpf1a_j23n.wav"
  fn_load_wave_r = "V51_gxpf1a_j23n.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V51_gxpf1a_23_23.input > log_V51_gxpf1a_tr_j23n_j23n.txt  

rm -f V51_gxpf1a_23_23.input


echo "start running log_V51_gxpf1a_tr_j23n_j25n.txt ..."
cat > V51_gxpf1a_23_25.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V51_gxpf1a_n.ptn"
  fn_ptn_r = "V51_gxpf1a_n.ptn"
  fn_load_wave_l = "V51_gxpf1a_j23n.wav"
  fn_load_wave_r = "V51_gxpf1a_j25n.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V51_gxpf1a_23_25.input > log_V51_gxpf1a_tr_j23n_j25n.txt  

rm -f V51_gxpf1a_23_25.input


echo "start running log_V51_gxpf1a_tr_j23n_j27n.txt ..."
cat > V51_gxpf1a_23_27.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V51_gxpf1a_n.ptn"
  fn_ptn_r = "V51_gxpf1a_n.ptn"
  fn_load_wave_l = "V51_gxpf1a_j23n.wav"
  fn_load_wave_r = "V51_gxpf1a_j27n.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V51_gxpf1a_23_27.input > log_V51_gxpf1a_tr_j23n_j27n.txt  

rm -f V51_gxpf1a_23_27.input


echo "start running log_V51_gxpf1a_tr_j25n_j25n.txt ..."
cat > V51_gxpf1a_25_25.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V51_gxpf1a_n.ptn"
  fn_ptn_r = "V51_gxpf1a_n.ptn"
  fn_load_wave_l = "V51_gxpf1a_j25n.wav"
  fn_load_wave_r = "V51_gxpf1a_j25n.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V51_gxpf1a_25_25.input > log_V51_gxpf1a_tr_j25n_j25n.txt  

rm -f V51_gxpf1a_25_25.input


echo "start running log_V51_gxpf1a_tr_j25n_j27n.txt ..."
cat > V51_gxpf1a_25_27.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V51_gxpf1a_n.ptn"
  fn_ptn_r = "V51_gxpf1a_n.ptn"
  fn_load_wave_l = "V51_gxpf1a_j25n.wav"
  fn_load_wave_r = "V51_gxpf1a_j27n.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V51_gxpf1a_25_27.input > log_V51_gxpf1a_tr_j25n_j27n.txt  

rm -f V51_gxpf1a_25_27.input


echo "start running log_V51_gxpf1a_tr_j27n_j27n.txt ..."
cat > V51_gxpf1a_27_27.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V51_gxpf1a_n.ptn"
  fn_ptn_r = "V51_gxpf1a_n.ptn"
  fn_load_wave_l = "V51_gxpf1a_j27n.wav"
  fn_load_wave_r = "V51_gxpf1a_j27n.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V51_gxpf1a_27_27.input > log_V51_gxpf1a_tr_j27n_j27n.txt  

rm -f V51_gxpf1a_27_27.input


./collect_logs.py log_*V51_gxpf1a* > summary_V51_gxpf1a.txt
echo "Finish computing V51_gxpf1a.    See summary_V51_gxpf1a.txt"
echo 

