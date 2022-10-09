#!/bin/bash 
#SBATCH --job-name=V50_gxpf1a 
#SBATCH --account=NN9464K 
## Syntax is d-hh:mm:ss 
#SBATCH --time=0-03:00:00 
#SBATCH --nodes=16
#SBATCH --ntasks-per-node=8 
#SBATCH --cpus-per-task=16 
#SBATCH --mail-type=ALL 
#SBATCH --mail-user=jonkd@uio.no 
module --quiet purge  
module load intel/2020b 
module load Python/3.8.6-GCCcore-10.2.0 
set -o errexit  
set -o nounset 
export OMP_NUM_THREADS=32 
# ---------- V50_gxpf1a --------------
echo "start running log_V50_gxpf1a_j0p.txt ..."
cat > V50_gxpf1a_0p.input <<EOF
&input
  beta_cm = 0.0
  eff_charge = 1.5, 0.5
  fn_int = "gxpf1a.snt"
  fn_ptn = "V50_gxpf1a_p.ptn"
  fn_save_wave = "V50_gxpf1a_j0p.wav"
  gl = 1.0, 0.0, 
  gs = 5.027, -3.443, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 350
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 0
  n_block = 0
  n_eigen = 200
  n_restart_vec = 300
  orbs_ratio = 2, 3, 4, 6, 7, 8
&end
EOF
mpiexec ./kshell.exe V50_gxpf1a_0p.input > log_V50_gxpf1a_j0p.txt  

rm -f tmp_snapshot_V50_gxpf1a_p.ptn_0_* tmp_lv_V50_gxpf1a_p.ptn_0_* V50_gxpf1a_0p.input 


echo "start running log_V50_gxpf1a_j2p.txt ..."
cat > V50_gxpf1a_2p.input <<EOF
&input
  beta_cm = 0.0
  eff_charge = 1.5, 0.5
  fn_int = "gxpf1a.snt"
  fn_ptn = "V50_gxpf1a_p.ptn"
  fn_save_wave = "V50_gxpf1a_j2p.wav"
  gl = 1.0, 0.0, 
  gs = 5.027, -3.443, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 350
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 2
  n_block = 0
  n_eigen = 200
  n_restart_vec = 300
  orbs_ratio = 2, 3, 4, 6, 7, 8
&end
EOF
mpiexec ./kshell.exe V50_gxpf1a_2p.input > log_V50_gxpf1a_j2p.txt  

rm -f tmp_snapshot_V50_gxpf1a_p.ptn_2_* tmp_lv_V50_gxpf1a_p.ptn_2_* V50_gxpf1a_2p.input 


echo "start running log_V50_gxpf1a_j4p.txt ..."
cat > V50_gxpf1a_4p.input <<EOF
&input
  beta_cm = 0.0
  eff_charge = 1.5, 0.5
  fn_int = "gxpf1a.snt"
  fn_ptn = "V50_gxpf1a_p.ptn"
  fn_save_wave = "V50_gxpf1a_j4p.wav"
  gl = 1.0, 0.0, 
  gs = 5.027, -3.443, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 350
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 4
  n_block = 0
  n_eigen = 200
  n_restart_vec = 300
  orbs_ratio = 2, 3, 4, 6, 7, 8
&end
EOF
mpiexec ./kshell.exe V50_gxpf1a_4p.input > log_V50_gxpf1a_j4p.txt  

rm -f tmp_snapshot_V50_gxpf1a_p.ptn_4_* tmp_lv_V50_gxpf1a_p.ptn_4_* V50_gxpf1a_4p.input 


echo "start running log_V50_gxpf1a_j6p.txt ..."
cat > V50_gxpf1a_6p.input <<EOF
&input
  beta_cm = 0.0
  eff_charge = 1.5, 0.5
  fn_int = "gxpf1a.snt"
  fn_ptn = "V50_gxpf1a_p.ptn"
  fn_save_wave = "V50_gxpf1a_j6p.wav"
  gl = 1.0, 0.0, 
  gs = 5.027, -3.443, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 350
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 6
  n_block = 0
  n_eigen = 200
  n_restart_vec = 300
  orbs_ratio = 2, 3, 4, 6, 7, 8
&end
EOF
mpiexec ./kshell.exe V50_gxpf1a_6p.input > log_V50_gxpf1a_j6p.txt  

rm -f tmp_snapshot_V50_gxpf1a_p.ptn_6_* tmp_lv_V50_gxpf1a_p.ptn_6_* V50_gxpf1a_6p.input 


echo "start running log_V50_gxpf1a_j8p.txt ..."
cat > V50_gxpf1a_8p.input <<EOF
&input
  beta_cm = 0.0
  eff_charge = 1.5, 0.5
  fn_int = "gxpf1a.snt"
  fn_ptn = "V50_gxpf1a_p.ptn"
  fn_save_wave = "V50_gxpf1a_j8p.wav"
  gl = 1.0, 0.0, 
  gs = 5.027, -3.443, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 350
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 8
  n_block = 0
  n_eigen = 200
  n_restart_vec = 300
  orbs_ratio = 2, 3, 4, 6, 7, 8
&end
EOF
mpiexec ./kshell.exe V50_gxpf1a_8p.input > log_V50_gxpf1a_j8p.txt  

rm -f tmp_snapshot_V50_gxpf1a_p.ptn_8_* tmp_lv_V50_gxpf1a_p.ptn_8_* V50_gxpf1a_8p.input 


echo "start running log_V50_gxpf1a_j10p.txt ..."
cat > V50_gxpf1a_10p.input <<EOF
&input
  beta_cm = 0.0
  eff_charge = 1.5, 0.5
  fn_int = "gxpf1a.snt"
  fn_ptn = "V50_gxpf1a_p.ptn"
  fn_save_wave = "V50_gxpf1a_j10p.wav"
  gl = 1.0, 0.0, 
  gs = 5.027, -3.443, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 350
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 10
  n_block = 0
  n_eigen = 200
  n_restart_vec = 300
  orbs_ratio = 2, 3, 4, 6, 7, 8
&end
EOF
mpiexec ./kshell.exe V50_gxpf1a_10p.input > log_V50_gxpf1a_j10p.txt  

rm -f tmp_snapshot_V50_gxpf1a_p.ptn_10_* tmp_lv_V50_gxpf1a_p.ptn_10_* V50_gxpf1a_10p.input 


echo "start running log_V50_gxpf1a_j12p.txt ..."
cat > V50_gxpf1a_12p.input <<EOF
&input
  beta_cm = 0.0
  eff_charge = 1.5, 0.5
  fn_int = "gxpf1a.snt"
  fn_ptn = "V50_gxpf1a_p.ptn"
  fn_save_wave = "V50_gxpf1a_j12p.wav"
  gl = 1.0, 0.0, 
  gs = 5.027, -3.443, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 350
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 12
  n_block = 0
  n_eigen = 200
  n_restart_vec = 300
  orbs_ratio = 2, 3, 4, 6, 7, 8
&end
EOF
mpiexec ./kshell.exe V50_gxpf1a_12p.input > log_V50_gxpf1a_j12p.txt  

rm -f tmp_snapshot_V50_gxpf1a_p.ptn_12_* tmp_lv_V50_gxpf1a_p.ptn_12_* V50_gxpf1a_12p.input 


echo "start running log_V50_gxpf1a_j14p.txt ..."
cat > V50_gxpf1a_14p.input <<EOF
&input
  beta_cm = 0.0
  eff_charge = 1.5, 0.5
  fn_int = "gxpf1a.snt"
  fn_ptn = "V50_gxpf1a_p.ptn"
  fn_save_wave = "V50_gxpf1a_j14p.wav"
  gl = 1.0, 0.0, 
  gs = 5.027, -3.443, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 350
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 14
  n_block = 0
  n_eigen = 200
  n_restart_vec = 300
  orbs_ratio = 2, 3, 4, 6, 7, 8
&end
EOF
mpiexec ./kshell.exe V50_gxpf1a_14p.input > log_V50_gxpf1a_j14p.txt  

rm -f tmp_snapshot_V50_gxpf1a_p.ptn_14_* tmp_lv_V50_gxpf1a_p.ptn_14_* V50_gxpf1a_14p.input 


echo "start running log_V50_gxpf1a_j16p.txt ..."
cat > V50_gxpf1a_16p.input <<EOF
&input
  beta_cm = 0.0
  eff_charge = 1.5, 0.5
  fn_int = "gxpf1a.snt"
  fn_ptn = "V50_gxpf1a_p.ptn"
  fn_save_wave = "V50_gxpf1a_j16p.wav"
  gl = 1.0, 0.0, 
  gs = 5.027, -3.443, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 350
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 16
  n_block = 0
  n_eigen = 200
  n_restart_vec = 300
  orbs_ratio = 2, 3, 4, 6, 7, 8
&end
EOF
mpiexec ./kshell.exe V50_gxpf1a_16p.input > log_V50_gxpf1a_j16p.txt  

rm -f tmp_snapshot_V50_gxpf1a_p.ptn_16_* tmp_lv_V50_gxpf1a_p.ptn_16_* V50_gxpf1a_16p.input 


# --------------- transition probabilities --------------

echo "start running log_V50_gxpf1a_tr_j0p_j2p.txt ..."
cat > V50_gxpf1a_0p_2p.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j0p.wav"
  fn_load_wave_r = "V50_gxpf1a_j2p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.027, -3.443
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_0p_2p.input > log_V50_gxpf1a_tr_j0p_j2p.txt  

rm -f V50_gxpf1a_0p_2p.input


echo "start running log_V50_gxpf1a_tr_j0p_j4p.txt ..."
cat > V50_gxpf1a_0p_4p.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j0p.wav"
  fn_load_wave_r = "V50_gxpf1a_j4p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.027, -3.443
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_0p_4p.input > log_V50_gxpf1a_tr_j0p_j4p.txt  

rm -f V50_gxpf1a_0p_4p.input


echo "start running log_V50_gxpf1a_tr_j2p_j2p.txt ..."
cat > V50_gxpf1a_2p_2p.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j2p.wav"
  fn_load_wave_r = "V50_gxpf1a_j2p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.027, -3.443
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_2p_2p.input > log_V50_gxpf1a_tr_j2p_j2p.txt  

rm -f V50_gxpf1a_2p_2p.input


echo "start running log_V50_gxpf1a_tr_j2p_j4p.txt ..."
cat > V50_gxpf1a_2p_4p.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j2p.wav"
  fn_load_wave_r = "V50_gxpf1a_j4p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.027, -3.443
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_2p_4p.input > log_V50_gxpf1a_tr_j2p_j4p.txt  

rm -f V50_gxpf1a_2p_4p.input


echo "start running log_V50_gxpf1a_tr_j2p_j6p.txt ..."
cat > V50_gxpf1a_2p_6p.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j2p.wav"
  fn_load_wave_r = "V50_gxpf1a_j6p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.027, -3.443
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_2p_6p.input > log_V50_gxpf1a_tr_j2p_j6p.txt  

rm -f V50_gxpf1a_2p_6p.input


echo "start running log_V50_gxpf1a_tr_j4p_j4p.txt ..."
cat > V50_gxpf1a_4p_4p.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j4p.wav"
  fn_load_wave_r = "V50_gxpf1a_j4p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.027, -3.443
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_4p_4p.input > log_V50_gxpf1a_tr_j4p_j4p.txt  

rm -f V50_gxpf1a_4p_4p.input


echo "start running log_V50_gxpf1a_tr_j4p_j6p.txt ..."
cat > V50_gxpf1a_4p_6p.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j4p.wav"
  fn_load_wave_r = "V50_gxpf1a_j6p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.027, -3.443
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_4p_6p.input > log_V50_gxpf1a_tr_j4p_j6p.txt  

rm -f V50_gxpf1a_4p_6p.input


echo "start running log_V50_gxpf1a_tr_j4p_j8p.txt ..."
cat > V50_gxpf1a_4p_8p.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j4p.wav"
  fn_load_wave_r = "V50_gxpf1a_j8p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.027, -3.443
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_4p_8p.input > log_V50_gxpf1a_tr_j4p_j8p.txt  

rm -f V50_gxpf1a_4p_8p.input


echo "start running log_V50_gxpf1a_tr_j6p_j6p.txt ..."
cat > V50_gxpf1a_6p_6p.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j6p.wav"
  fn_load_wave_r = "V50_gxpf1a_j6p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.027, -3.443
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_6p_6p.input > log_V50_gxpf1a_tr_j6p_j6p.txt  

rm -f V50_gxpf1a_6p_6p.input


echo "start running log_V50_gxpf1a_tr_j6p_j8p.txt ..."
cat > V50_gxpf1a_6p_8p.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j6p.wav"
  fn_load_wave_r = "V50_gxpf1a_j8p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.027, -3.443
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_6p_8p.input > log_V50_gxpf1a_tr_j6p_j8p.txt  

rm -f V50_gxpf1a_6p_8p.input


echo "start running log_V50_gxpf1a_tr_j6p_j10p.txt ..."
cat > V50_gxpf1a_6p_10p.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j6p.wav"
  fn_load_wave_r = "V50_gxpf1a_j10p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.027, -3.443
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_6p_10p.input > log_V50_gxpf1a_tr_j6p_j10p.txt  

rm -f V50_gxpf1a_6p_10p.input


echo "start running log_V50_gxpf1a_tr_j8p_j8p.txt ..."
cat > V50_gxpf1a_8p_8p.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j8p.wav"
  fn_load_wave_r = "V50_gxpf1a_j8p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.027, -3.443
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_8p_8p.input > log_V50_gxpf1a_tr_j8p_j8p.txt  

rm -f V50_gxpf1a_8p_8p.input


echo "start running log_V50_gxpf1a_tr_j8p_j10p.txt ..."
cat > V50_gxpf1a_8p_10p.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j8p.wav"
  fn_load_wave_r = "V50_gxpf1a_j10p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.027, -3.443
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_8p_10p.input > log_V50_gxpf1a_tr_j8p_j10p.txt  

rm -f V50_gxpf1a_8p_10p.input


echo "start running log_V50_gxpf1a_tr_j8p_j12p.txt ..."
cat > V50_gxpf1a_8p_12p.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j8p.wav"
  fn_load_wave_r = "V50_gxpf1a_j12p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.027, -3.443
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_8p_12p.input > log_V50_gxpf1a_tr_j8p_j12p.txt  

rm -f V50_gxpf1a_8p_12p.input


echo "start running log_V50_gxpf1a_tr_j10p_j10p.txt ..."
cat > V50_gxpf1a_10p_10p.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j10p.wav"
  fn_load_wave_r = "V50_gxpf1a_j10p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.027, -3.443
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_10p_10p.input > log_V50_gxpf1a_tr_j10p_j10p.txt  

rm -f V50_gxpf1a_10p_10p.input


echo "start running log_V50_gxpf1a_tr_j10p_j12p.txt ..."
cat > V50_gxpf1a_10p_12p.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j10p.wav"
  fn_load_wave_r = "V50_gxpf1a_j12p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.027, -3.443
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_10p_12p.input > log_V50_gxpf1a_tr_j10p_j12p.txt  

rm -f V50_gxpf1a_10p_12p.input


echo "start running log_V50_gxpf1a_tr_j10p_j14p.txt ..."
cat > V50_gxpf1a_10p_14p.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j10p.wav"
  fn_load_wave_r = "V50_gxpf1a_j14p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.027, -3.443
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_10p_14p.input > log_V50_gxpf1a_tr_j10p_j14p.txt  

rm -f V50_gxpf1a_10p_14p.input


echo "start running log_V50_gxpf1a_tr_j12p_j12p.txt ..."
cat > V50_gxpf1a_12p_12p.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j12p.wav"
  fn_load_wave_r = "V50_gxpf1a_j12p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.027, -3.443
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_12p_12p.input > log_V50_gxpf1a_tr_j12p_j12p.txt  

rm -f V50_gxpf1a_12p_12p.input


echo "start running log_V50_gxpf1a_tr_j12p_j14p.txt ..."
cat > V50_gxpf1a_12p_14p.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j12p.wav"
  fn_load_wave_r = "V50_gxpf1a_j14p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.027, -3.443
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_12p_14p.input > log_V50_gxpf1a_tr_j12p_j14p.txt  

rm -f V50_gxpf1a_12p_14p.input


echo "start running log_V50_gxpf1a_tr_j12p_j16p.txt ..."
cat > V50_gxpf1a_12p_16p.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j12p.wav"
  fn_load_wave_r = "V50_gxpf1a_j16p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.027, -3.443
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_12p_16p.input > log_V50_gxpf1a_tr_j12p_j16p.txt  

rm -f V50_gxpf1a_12p_16p.input


echo "start running log_V50_gxpf1a_tr_j14p_j14p.txt ..."
cat > V50_gxpf1a_14p_14p.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j14p.wav"
  fn_load_wave_r = "V50_gxpf1a_j14p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.027, -3.443
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_14p_14p.input > log_V50_gxpf1a_tr_j14p_j14p.txt  

rm -f V50_gxpf1a_14p_14p.input


echo "start running log_V50_gxpf1a_tr_j14p_j16p.txt ..."
cat > V50_gxpf1a_14p_16p.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j14p.wav"
  fn_load_wave_r = "V50_gxpf1a_j16p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.027, -3.443
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_14p_16p.input > log_V50_gxpf1a_tr_j14p_j16p.txt  

rm -f V50_gxpf1a_14p_16p.input


echo "start running log_V50_gxpf1a_tr_j16p_j16p.txt ..."
cat > V50_gxpf1a_16p_16p.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j16p.wav"
  fn_load_wave_r = "V50_gxpf1a_j16p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.027, -3.443
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_16p_16p.input > log_V50_gxpf1a_tr_j16p_j16p.txt  

rm -f V50_gxpf1a_16p_16p.input


./collect_logs.py log_*V50_gxpf1a* > summary_V50_gxpf1a.txt
echo "Finish computing V50_gxpf1a. See summary_V50_gxpf1a.txt"
echo

