#!/bin/bash 
#SBATCH --job-name=V50_V51_gxpf1a 
#SBATCH --account=NN9464K 
## Syntax is d-hh:mm:ss 
#SBATCH --time=0-03:00:00 
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
# ---------- V50_gxpf1a --------------
echo "start running log_V50_gxpf1a_j0p.txt ..."
cat > V50_gxpf1a_0.input <<EOF
&input
  beta_cm = 0.0
  eff_charge = 1.5, 0.5
  fn_int = "gxpf1a.snt"
  fn_ptn = "V50_gxpf1a_p.ptn"
  fn_save_wave = "V50_gxpf1a_j0p.wav"
  gl = 1.0, 0.0, 
  gs = 5.585, -3.826, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 0
  n_block = 0
  n_eigen = 100
  n_restart_vec = 150
  orbs_ratio = 2, 3, 4, 6, 7, 8
&end
EOF
mpiexec ./kshell.exe V50_gxpf1a_0.input > log_V50_gxpf1a_j0p.txt  

rm -f tmp_snapshot_V50_gxpf1a_p.ptn_0_* tmp_lv_V50_gxpf1a_p.ptn_0_* V50_gxpf1a_0.input 


echo "start running log_V50_gxpf1a_j2p.txt ..."
cat > V50_gxpf1a_2.input <<EOF
&input
  beta_cm = 0.0
  eff_charge = 1.5, 0.5
  fn_int = "gxpf1a.snt"
  fn_ptn = "V50_gxpf1a_p.ptn"
  fn_save_wave = "V50_gxpf1a_j2p.wav"
  gl = 1.0, 0.0, 
  gs = 5.585, -3.826, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 2
  n_block = 0
  n_eigen = 100
  n_restart_vec = 150
  orbs_ratio = 2, 3, 4, 6, 7, 8
&end
EOF
mpiexec ./kshell.exe V50_gxpf1a_2.input > log_V50_gxpf1a_j2p.txt  

rm -f tmp_snapshot_V50_gxpf1a_p.ptn_2_* tmp_lv_V50_gxpf1a_p.ptn_2_* V50_gxpf1a_2.input 


echo "start running log_V50_gxpf1a_j4p.txt ..."
cat > V50_gxpf1a_4.input <<EOF
&input
  beta_cm = 0.0
  eff_charge = 1.5, 0.5
  fn_int = "gxpf1a.snt"
  fn_ptn = "V50_gxpf1a_p.ptn"
  fn_save_wave = "V50_gxpf1a_j4p.wav"
  gl = 1.0, 0.0, 
  gs = 5.585, -3.826, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 4
  n_block = 0
  n_eigen = 100
  n_restart_vec = 150
  orbs_ratio = 2, 3, 4, 6, 7, 8
&end
EOF
mpiexec ./kshell.exe V50_gxpf1a_4.input > log_V50_gxpf1a_j4p.txt  

rm -f tmp_snapshot_V50_gxpf1a_p.ptn_4_* tmp_lv_V50_gxpf1a_p.ptn_4_* V50_gxpf1a_4.input 


echo "start running log_V50_gxpf1a_j6p.txt ..."
cat > V50_gxpf1a_6.input <<EOF
&input
  beta_cm = 0.0
  eff_charge = 1.5, 0.5
  fn_int = "gxpf1a.snt"
  fn_ptn = "V50_gxpf1a_p.ptn"
  fn_save_wave = "V50_gxpf1a_j6p.wav"
  gl = 1.0, 0.0, 
  gs = 5.585, -3.826, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 6
  n_block = 0
  n_eigen = 100
  n_restart_vec = 150
  orbs_ratio = 2, 3, 4, 6, 7, 8
&end
EOF
mpiexec ./kshell.exe V50_gxpf1a_6.input > log_V50_gxpf1a_j6p.txt  

rm -f tmp_snapshot_V50_gxpf1a_p.ptn_6_* tmp_lv_V50_gxpf1a_p.ptn_6_* V50_gxpf1a_6.input 


echo "start running log_V50_gxpf1a_j8p.txt ..."
cat > V50_gxpf1a_8.input <<EOF
&input
  beta_cm = 0.0
  eff_charge = 1.5, 0.5
  fn_int = "gxpf1a.snt"
  fn_ptn = "V50_gxpf1a_p.ptn"
  fn_save_wave = "V50_gxpf1a_j8p.wav"
  gl = 1.0, 0.0, 
  gs = 5.585, -3.826, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 8
  n_block = 0
  n_eigen = 100
  n_restart_vec = 150
  orbs_ratio = 2, 3, 4, 6, 7, 8
&end
EOF
mpiexec ./kshell.exe V50_gxpf1a_8.input > log_V50_gxpf1a_j8p.txt  

rm -f tmp_snapshot_V50_gxpf1a_p.ptn_8_* tmp_lv_V50_gxpf1a_p.ptn_8_* V50_gxpf1a_8.input 


echo "start running log_V50_gxpf1a_j10p.txt ..."
cat > V50_gxpf1a_10.input <<EOF
&input
  beta_cm = 0.0
  eff_charge = 1.5, 0.5
  fn_int = "gxpf1a.snt"
  fn_ptn = "V50_gxpf1a_p.ptn"
  fn_save_wave = "V50_gxpf1a_j10p.wav"
  gl = 1.0, 0.0, 
  gs = 5.585, -3.826, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 10
  n_block = 0
  n_eigen = 100
  n_restart_vec = 150
  orbs_ratio = 2, 3, 4, 6, 7, 8
&end
EOF
mpiexec ./kshell.exe V50_gxpf1a_10.input > log_V50_gxpf1a_j10p.txt  

rm -f tmp_snapshot_V50_gxpf1a_p.ptn_10_* tmp_lv_V50_gxpf1a_p.ptn_10_* V50_gxpf1a_10.input 


echo "start running log_V50_gxpf1a_j12p.txt ..."
cat > V50_gxpf1a_12.input <<EOF
&input
  beta_cm = 0.0
  eff_charge = 1.5, 0.5
  fn_int = "gxpf1a.snt"
  fn_ptn = "V50_gxpf1a_p.ptn"
  fn_save_wave = "V50_gxpf1a_j12p.wav"
  gl = 1.0, 0.0, 
  gs = 5.585, -3.826, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 12
  n_block = 0
  n_eigen = 100
  n_restart_vec = 150
  orbs_ratio = 2, 3, 4, 6, 7, 8
&end
EOF
mpiexec ./kshell.exe V50_gxpf1a_12.input > log_V50_gxpf1a_j12p.txt  

rm -f tmp_snapshot_V50_gxpf1a_p.ptn_12_* tmp_lv_V50_gxpf1a_p.ptn_12_* V50_gxpf1a_12.input 


echo "start running log_V50_gxpf1a_j14p.txt ..."
cat > V50_gxpf1a_14.input <<EOF
&input
  beta_cm = 0.0
  eff_charge = 1.5, 0.5
  fn_int = "gxpf1a.snt"
  fn_ptn = "V50_gxpf1a_p.ptn"
  fn_save_wave = "V50_gxpf1a_j14p.wav"
  gl = 1.0, 0.0, 
  gs = 5.585, -3.826, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 14
  n_block = 0
  n_eigen = 100
  n_restart_vec = 150
  orbs_ratio = 2, 3, 4, 6, 7, 8
&end
EOF
mpiexec ./kshell.exe V50_gxpf1a_14.input > log_V50_gxpf1a_j14p.txt  

rm -f tmp_snapshot_V50_gxpf1a_p.ptn_14_* tmp_lv_V50_gxpf1a_p.ptn_14_* V50_gxpf1a_14.input 


echo "start running log_V50_gxpf1a_j16p.txt ..."
cat > V50_gxpf1a_16.input <<EOF
&input
  beta_cm = 0.0
  eff_charge = 1.5, 0.5
  fn_int = "gxpf1a.snt"
  fn_ptn = "V50_gxpf1a_p.ptn"
  fn_save_wave = "V50_gxpf1a_j16p.wav"
  gl = 1.0, 0.0, 
  gs = 5.585, -3.826, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 16
  n_block = 0
  n_eigen = 100
  n_restart_vec = 150
  orbs_ratio = 2, 3, 4, 6, 7, 8
&end
EOF
mpiexec ./kshell.exe V50_gxpf1a_16.input > log_V50_gxpf1a_j16p.txt  

rm -f tmp_snapshot_V50_gxpf1a_p.ptn_16_* tmp_lv_V50_gxpf1a_p.ptn_16_* V50_gxpf1a_16.input 


echo "start running log_V50_gxpf1a_j18p.txt ..."
cat > V50_gxpf1a_18.input <<EOF
&input
  beta_cm = 0.0
  eff_charge = 1.5, 0.5
  fn_int = "gxpf1a.snt"
  fn_ptn = "V50_gxpf1a_p.ptn"
  fn_save_wave = "V50_gxpf1a_j18p.wav"
  gl = 1.0, 0.0, 
  gs = 5.585, -3.826, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 18
  n_block = 0
  n_eigen = 100
  n_restart_vec = 150
  orbs_ratio = 2, 3, 4, 6, 7, 8
&end
EOF
mpiexec ./kshell.exe V50_gxpf1a_18.input > log_V50_gxpf1a_j18p.txt  

rm -f tmp_snapshot_V50_gxpf1a_p.ptn_18_* tmp_lv_V50_gxpf1a_p.ptn_18_* V50_gxpf1a_18.input 


echo "start running log_V50_gxpf1a_j20p.txt ..."
cat > V50_gxpf1a_20.input <<EOF
&input
  beta_cm = 0.0
  eff_charge = 1.5, 0.5
  fn_int = "gxpf1a.snt"
  fn_ptn = "V50_gxpf1a_p.ptn"
  fn_save_wave = "V50_gxpf1a_j20p.wav"
  gl = 1.0, 0.0, 
  gs = 5.585, -3.826, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 20
  n_block = 0
  n_eigen = 100
  n_restart_vec = 150
  orbs_ratio = 2, 3, 4, 6, 7, 8
&end
EOF
mpiexec ./kshell.exe V50_gxpf1a_20.input > log_V50_gxpf1a_j20p.txt  

rm -f tmp_snapshot_V50_gxpf1a_p.ptn_20_* tmp_lv_V50_gxpf1a_p.ptn_20_* V50_gxpf1a_20.input 


echo "start running log_V50_gxpf1a_j22p.txt ..."
cat > V50_gxpf1a_22.input <<EOF
&input
  beta_cm = 0.0
  eff_charge = 1.5, 0.5
  fn_int = "gxpf1a.snt"
  fn_ptn = "V50_gxpf1a_p.ptn"
  fn_save_wave = "V50_gxpf1a_j22p.wav"
  gl = 1.0, 0.0, 
  gs = 5.585, -3.826, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 22
  n_block = 0
  n_eigen = 100
  n_restart_vec = 150
  orbs_ratio = 2, 3, 4, 6, 7, 8
&end
EOF
mpiexec ./kshell.exe V50_gxpf1a_22.input > log_V50_gxpf1a_j22p.txt  

rm -f tmp_snapshot_V50_gxpf1a_p.ptn_22_* tmp_lv_V50_gxpf1a_p.ptn_22_* V50_gxpf1a_22.input 


echo "start running log_V50_gxpf1a_j24p.txt ..."
cat > V50_gxpf1a_24.input <<EOF
&input
  beta_cm = 0.0
  eff_charge = 1.5, 0.5
  fn_int = "gxpf1a.snt"
  fn_ptn = "V50_gxpf1a_p.ptn"
  fn_save_wave = "V50_gxpf1a_j24p.wav"
  gl = 1.0, 0.0, 
  gs = 5.585, -3.826, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 24
  n_block = 0
  n_eigen = 100
  n_restart_vec = 150
  orbs_ratio = 2, 3, 4, 6, 7, 8
&end
EOF
mpiexec ./kshell.exe V50_gxpf1a_24.input > log_V50_gxpf1a_j24p.txt  

rm -f tmp_snapshot_V50_gxpf1a_p.ptn_24_* tmp_lv_V50_gxpf1a_p.ptn_24_* V50_gxpf1a_24.input 


echo "start running log_V50_gxpf1a_j26p.txt ..."
cat > V50_gxpf1a_26.input <<EOF
&input
  beta_cm = 0.0
  eff_charge = 1.5, 0.5
  fn_int = "gxpf1a.snt"
  fn_ptn = "V50_gxpf1a_p.ptn"
  fn_save_wave = "V50_gxpf1a_j26p.wav"
  gl = 1.0, 0.0, 
  gs = 5.585, -3.826, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 26
  n_block = 0
  n_eigen = 100
  n_restart_vec = 150
  orbs_ratio = 2, 3, 4, 6, 7, 8
&end
EOF
mpiexec ./kshell.exe V50_gxpf1a_26.input > log_V50_gxpf1a_j26p.txt  

rm -f tmp_snapshot_V50_gxpf1a_p.ptn_26_* tmp_lv_V50_gxpf1a_p.ptn_26_* V50_gxpf1a_26.input 


echo "start running log_V50_gxpf1a_j28p.txt ..."
cat > V50_gxpf1a_28.input <<EOF
&input
  beta_cm = 0.0
  eff_charge = 1.5, 0.5
  fn_int = "gxpf1a.snt"
  fn_ptn = "V50_gxpf1a_p.ptn"
  fn_save_wave = "V50_gxpf1a_j28p.wav"
  gl = 1.0, 0.0, 
  gs = 5.585, -3.826, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 28
  n_block = 0
  n_eigen = 100
  n_restart_vec = 150
  orbs_ratio = 2, 3, 4, 6, 7, 8
&end
EOF
mpiexec ./kshell.exe V50_gxpf1a_28.input > log_V50_gxpf1a_j28p.txt  

rm -f tmp_snapshot_V50_gxpf1a_p.ptn_28_* tmp_lv_V50_gxpf1a_p.ptn_28_* V50_gxpf1a_28.input 


# --------------- transition probabilities --------------

echo "start running log_V50_gxpf1a_tr_j0p_j2p.txt ..."
cat > V50_gxpf1a_0_2.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j0p.wav"
  fn_load_wave_r = "V50_gxpf1a_j2p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.585, -3.826
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_0_2.input > log_V50_gxpf1a_tr_j0p_j2p.txt  

rm -f V50_gxpf1a_0_2.input


echo "start running log_V50_gxpf1a_tr_j0p_j4p.txt ..."
cat > V50_gxpf1a_0_4.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j0p.wav"
  fn_load_wave_r = "V50_gxpf1a_j4p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.585, -3.826
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_0_4.input > log_V50_gxpf1a_tr_j0p_j4p.txt  

rm -f V50_gxpf1a_0_4.input


echo "start running log_V50_gxpf1a_tr_j2p_j2p.txt ..."
cat > V50_gxpf1a_2_2.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j2p.wav"
  fn_load_wave_r = "V50_gxpf1a_j2p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.585, -3.826
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_2_2.input > log_V50_gxpf1a_tr_j2p_j2p.txt  

rm -f V50_gxpf1a_2_2.input


echo "start running log_V50_gxpf1a_tr_j2p_j4p.txt ..."
cat > V50_gxpf1a_2_4.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j2p.wav"
  fn_load_wave_r = "V50_gxpf1a_j4p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.585, -3.826
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_2_4.input > log_V50_gxpf1a_tr_j2p_j4p.txt  

rm -f V50_gxpf1a_2_4.input


echo "start running log_V50_gxpf1a_tr_j2p_j6p.txt ..."
cat > V50_gxpf1a_2_6.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j2p.wav"
  fn_load_wave_r = "V50_gxpf1a_j6p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.585, -3.826
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_2_6.input > log_V50_gxpf1a_tr_j2p_j6p.txt  

rm -f V50_gxpf1a_2_6.input


echo "start running log_V50_gxpf1a_tr_j4p_j4p.txt ..."
cat > V50_gxpf1a_4_4.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j4p.wav"
  fn_load_wave_r = "V50_gxpf1a_j4p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.585, -3.826
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_4_4.input > log_V50_gxpf1a_tr_j4p_j4p.txt  

rm -f V50_gxpf1a_4_4.input


echo "start running log_V50_gxpf1a_tr_j4p_j6p.txt ..."
cat > V50_gxpf1a_4_6.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j4p.wav"
  fn_load_wave_r = "V50_gxpf1a_j6p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.585, -3.826
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_4_6.input > log_V50_gxpf1a_tr_j4p_j6p.txt  

rm -f V50_gxpf1a_4_6.input


echo "start running log_V50_gxpf1a_tr_j4p_j8p.txt ..."
cat > V50_gxpf1a_4_8.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j4p.wav"
  fn_load_wave_r = "V50_gxpf1a_j8p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.585, -3.826
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_4_8.input > log_V50_gxpf1a_tr_j4p_j8p.txt  

rm -f V50_gxpf1a_4_8.input


echo "start running log_V50_gxpf1a_tr_j6p_j6p.txt ..."
cat > V50_gxpf1a_6_6.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j6p.wav"
  fn_load_wave_r = "V50_gxpf1a_j6p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.585, -3.826
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_6_6.input > log_V50_gxpf1a_tr_j6p_j6p.txt  

rm -f V50_gxpf1a_6_6.input


echo "start running log_V50_gxpf1a_tr_j6p_j8p.txt ..."
cat > V50_gxpf1a_6_8.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j6p.wav"
  fn_load_wave_r = "V50_gxpf1a_j8p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.585, -3.826
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_6_8.input > log_V50_gxpf1a_tr_j6p_j8p.txt  

rm -f V50_gxpf1a_6_8.input


echo "start running log_V50_gxpf1a_tr_j6p_j10p.txt ..."
cat > V50_gxpf1a_6_10.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j6p.wav"
  fn_load_wave_r = "V50_gxpf1a_j10p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.585, -3.826
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_6_10.input > log_V50_gxpf1a_tr_j6p_j10p.txt  

rm -f V50_gxpf1a_6_10.input


echo "start running log_V50_gxpf1a_tr_j8p_j8p.txt ..."
cat > V50_gxpf1a_8_8.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j8p.wav"
  fn_load_wave_r = "V50_gxpf1a_j8p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.585, -3.826
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_8_8.input > log_V50_gxpf1a_tr_j8p_j8p.txt  

rm -f V50_gxpf1a_8_8.input


echo "start running log_V50_gxpf1a_tr_j8p_j10p.txt ..."
cat > V50_gxpf1a_8_10.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j8p.wav"
  fn_load_wave_r = "V50_gxpf1a_j10p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.585, -3.826
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_8_10.input > log_V50_gxpf1a_tr_j8p_j10p.txt  

rm -f V50_gxpf1a_8_10.input


echo "start running log_V50_gxpf1a_tr_j8p_j12p.txt ..."
cat > V50_gxpf1a_8_12.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j8p.wav"
  fn_load_wave_r = "V50_gxpf1a_j12p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.585, -3.826
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_8_12.input > log_V50_gxpf1a_tr_j8p_j12p.txt  

rm -f V50_gxpf1a_8_12.input


echo "start running log_V50_gxpf1a_tr_j10p_j10p.txt ..."
cat > V50_gxpf1a_10_10.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j10p.wav"
  fn_load_wave_r = "V50_gxpf1a_j10p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.585, -3.826
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_10_10.input > log_V50_gxpf1a_tr_j10p_j10p.txt  

rm -f V50_gxpf1a_10_10.input


echo "start running log_V50_gxpf1a_tr_j10p_j12p.txt ..."
cat > V50_gxpf1a_10_12.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j10p.wav"
  fn_load_wave_r = "V50_gxpf1a_j12p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.585, -3.826
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_10_12.input > log_V50_gxpf1a_tr_j10p_j12p.txt  

rm -f V50_gxpf1a_10_12.input


echo "start running log_V50_gxpf1a_tr_j10p_j14p.txt ..."
cat > V50_gxpf1a_10_14.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j10p.wav"
  fn_load_wave_r = "V50_gxpf1a_j14p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.585, -3.826
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_10_14.input > log_V50_gxpf1a_tr_j10p_j14p.txt  

rm -f V50_gxpf1a_10_14.input


echo "start running log_V50_gxpf1a_tr_j12p_j12p.txt ..."
cat > V50_gxpf1a_12_12.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j12p.wav"
  fn_load_wave_r = "V50_gxpf1a_j12p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.585, -3.826
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_12_12.input > log_V50_gxpf1a_tr_j12p_j12p.txt  

rm -f V50_gxpf1a_12_12.input


echo "start running log_V50_gxpf1a_tr_j12p_j14p.txt ..."
cat > V50_gxpf1a_12_14.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j12p.wav"
  fn_load_wave_r = "V50_gxpf1a_j14p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.585, -3.826
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_12_14.input > log_V50_gxpf1a_tr_j12p_j14p.txt  

rm -f V50_gxpf1a_12_14.input


echo "start running log_V50_gxpf1a_tr_j12p_j16p.txt ..."
cat > V50_gxpf1a_12_16.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j12p.wav"
  fn_load_wave_r = "V50_gxpf1a_j16p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.585, -3.826
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_12_16.input > log_V50_gxpf1a_tr_j12p_j16p.txt  

rm -f V50_gxpf1a_12_16.input


echo "start running log_V50_gxpf1a_tr_j14p_j14p.txt ..."
cat > V50_gxpf1a_14_14.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j14p.wav"
  fn_load_wave_r = "V50_gxpf1a_j14p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.585, -3.826
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_14_14.input > log_V50_gxpf1a_tr_j14p_j14p.txt  

rm -f V50_gxpf1a_14_14.input


echo "start running log_V50_gxpf1a_tr_j14p_j16p.txt ..."
cat > V50_gxpf1a_14_16.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j14p.wav"
  fn_load_wave_r = "V50_gxpf1a_j16p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.585, -3.826
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_14_16.input > log_V50_gxpf1a_tr_j14p_j16p.txt  

rm -f V50_gxpf1a_14_16.input


echo "start running log_V50_gxpf1a_tr_j14p_j18p.txt ..."
cat > V50_gxpf1a_14_18.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j14p.wav"
  fn_load_wave_r = "V50_gxpf1a_j18p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.585, -3.826
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_14_18.input > log_V50_gxpf1a_tr_j14p_j18p.txt  

rm -f V50_gxpf1a_14_18.input


echo "start running log_V50_gxpf1a_tr_j16p_j16p.txt ..."
cat > V50_gxpf1a_16_16.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j16p.wav"
  fn_load_wave_r = "V50_gxpf1a_j16p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.585, -3.826
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_16_16.input > log_V50_gxpf1a_tr_j16p_j16p.txt  

rm -f V50_gxpf1a_16_16.input


echo "start running log_V50_gxpf1a_tr_j16p_j18p.txt ..."
cat > V50_gxpf1a_16_18.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j16p.wav"
  fn_load_wave_r = "V50_gxpf1a_j18p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.585, -3.826
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_16_18.input > log_V50_gxpf1a_tr_j16p_j18p.txt  

rm -f V50_gxpf1a_16_18.input


echo "start running log_V50_gxpf1a_tr_j16p_j20p.txt ..."
cat > V50_gxpf1a_16_20.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j16p.wav"
  fn_load_wave_r = "V50_gxpf1a_j20p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.585, -3.826
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_16_20.input > log_V50_gxpf1a_tr_j16p_j20p.txt  

rm -f V50_gxpf1a_16_20.input


echo "start running log_V50_gxpf1a_tr_j18p_j18p.txt ..."
cat > V50_gxpf1a_18_18.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j18p.wav"
  fn_load_wave_r = "V50_gxpf1a_j18p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.585, -3.826
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_18_18.input > log_V50_gxpf1a_tr_j18p_j18p.txt  

rm -f V50_gxpf1a_18_18.input


echo "start running log_V50_gxpf1a_tr_j18p_j20p.txt ..."
cat > V50_gxpf1a_18_20.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j18p.wav"
  fn_load_wave_r = "V50_gxpf1a_j20p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.585, -3.826
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_18_20.input > log_V50_gxpf1a_tr_j18p_j20p.txt  

rm -f V50_gxpf1a_18_20.input


echo "start running log_V50_gxpf1a_tr_j18p_j22p.txt ..."
cat > V50_gxpf1a_18_22.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j18p.wav"
  fn_load_wave_r = "V50_gxpf1a_j22p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.585, -3.826
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_18_22.input > log_V50_gxpf1a_tr_j18p_j22p.txt  

rm -f V50_gxpf1a_18_22.input


echo "start running log_V50_gxpf1a_tr_j20p_j20p.txt ..."
cat > V50_gxpf1a_20_20.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j20p.wav"
  fn_load_wave_r = "V50_gxpf1a_j20p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.585, -3.826
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_20_20.input > log_V50_gxpf1a_tr_j20p_j20p.txt  

rm -f V50_gxpf1a_20_20.input


echo "start running log_V50_gxpf1a_tr_j20p_j22p.txt ..."
cat > V50_gxpf1a_20_22.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j20p.wav"
  fn_load_wave_r = "V50_gxpf1a_j22p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.585, -3.826
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_20_22.input > log_V50_gxpf1a_tr_j20p_j22p.txt  

rm -f V50_gxpf1a_20_22.input


echo "start running log_V50_gxpf1a_tr_j20p_j24p.txt ..."
cat > V50_gxpf1a_20_24.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j20p.wav"
  fn_load_wave_r = "V50_gxpf1a_j24p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.585, -3.826
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_20_24.input > log_V50_gxpf1a_tr_j20p_j24p.txt  

rm -f V50_gxpf1a_20_24.input


echo "start running log_V50_gxpf1a_tr_j22p_j22p.txt ..."
cat > V50_gxpf1a_22_22.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j22p.wav"
  fn_load_wave_r = "V50_gxpf1a_j22p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.585, -3.826
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_22_22.input > log_V50_gxpf1a_tr_j22p_j22p.txt  

rm -f V50_gxpf1a_22_22.input


echo "start running log_V50_gxpf1a_tr_j22p_j24p.txt ..."
cat > V50_gxpf1a_22_24.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j22p.wav"
  fn_load_wave_r = "V50_gxpf1a_j24p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.585, -3.826
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_22_24.input > log_V50_gxpf1a_tr_j22p_j24p.txt  

rm -f V50_gxpf1a_22_24.input


echo "start running log_V50_gxpf1a_tr_j22p_j26p.txt ..."
cat > V50_gxpf1a_22_26.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j22p.wav"
  fn_load_wave_r = "V50_gxpf1a_j26p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.585, -3.826
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_22_26.input > log_V50_gxpf1a_tr_j22p_j26p.txt  

rm -f V50_gxpf1a_22_26.input


echo "start running log_V50_gxpf1a_tr_j24p_j24p.txt ..."
cat > V50_gxpf1a_24_24.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j24p.wav"
  fn_load_wave_r = "V50_gxpf1a_j24p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.585, -3.826
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_24_24.input > log_V50_gxpf1a_tr_j24p_j24p.txt  

rm -f V50_gxpf1a_24_24.input


echo "start running log_V50_gxpf1a_tr_j24p_j26p.txt ..."
cat > V50_gxpf1a_24_26.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j24p.wav"
  fn_load_wave_r = "V50_gxpf1a_j26p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.585, -3.826
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_24_26.input > log_V50_gxpf1a_tr_j24p_j26p.txt  

rm -f V50_gxpf1a_24_26.input


echo "start running log_V50_gxpf1a_tr_j24p_j28p.txt ..."
cat > V50_gxpf1a_24_28.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j24p.wav"
  fn_load_wave_r = "V50_gxpf1a_j28p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.585, -3.826
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_24_28.input > log_V50_gxpf1a_tr_j24p_j28p.txt  

rm -f V50_gxpf1a_24_28.input


echo "start running log_V50_gxpf1a_tr_j26p_j26p.txt ..."
cat > V50_gxpf1a_26_26.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j26p.wav"
  fn_load_wave_r = "V50_gxpf1a_j26p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.585, -3.826
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_26_26.input > log_V50_gxpf1a_tr_j26p_j26p.txt  

rm -f V50_gxpf1a_26_26.input


echo "start running log_V50_gxpf1a_tr_j26p_j28p.txt ..."
cat > V50_gxpf1a_26_28.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j26p.wav"
  fn_load_wave_r = "V50_gxpf1a_j28p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.585, -3.826
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_26_28.input > log_V50_gxpf1a_tr_j26p_j28p.txt  

rm -f V50_gxpf1a_26_28.input


echo "start running log_V50_gxpf1a_tr_j28p_j28p.txt ..."
cat > V50_gxpf1a_28_28.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V50_gxpf1a_p.ptn"
  fn_ptn_r = "V50_gxpf1a_p.ptn"
  fn_load_wave_l = "V50_gxpf1a_j28p.wav"
  fn_load_wave_r = "V50_gxpf1a_j28p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.585, -3.826
&end
EOF
mpiexec ./transit.exe V50_gxpf1a_28_28.input > log_V50_gxpf1a_tr_j28p_j28p.txt  

rm -f V50_gxpf1a_28_28.input


./collect_logs.py log_*V50_gxpf1a* > summary_V50_gxpf1a.txt
echo "Finish computing V50_gxpf1a.    See summary_V50_gxpf1a.txt"
echo 

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
  gs = 5.585, -3.826, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 1
  n_block = 0
  n_eigen = 100
  n_restart_vec = 150
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
  gs = 5.585, -3.826, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 3
  n_block = 0
  n_eigen = 100
  n_restart_vec = 150
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
  gs = 5.585, -3.826, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 5
  n_block = 0
  n_eigen = 100
  n_restart_vec = 150
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
  gs = 5.585, -3.826, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 7
  n_block = 0
  n_eigen = 100
  n_restart_vec = 150
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
  gs = 5.585, -3.826, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 9
  n_block = 0
  n_eigen = 100
  n_restart_vec = 150
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
  gs = 5.585, -3.826, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 11
  n_block = 0
  n_eigen = 100
  n_restart_vec = 150
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
  gs = 5.585, -3.826, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 13
  n_block = 0
  n_eigen = 100
  n_restart_vec = 150
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
  gs = 5.585, -3.826, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 15
  n_block = 0
  n_eigen = 100
  n_restart_vec = 150
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
  gs = 5.585, -3.826, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 17
  n_block = 0
  n_eigen = 100
  n_restart_vec = 150
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
  gs = 5.585, -3.826, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 19
  n_block = 0
  n_eigen = 100
  n_restart_vec = 150
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
  gs = 5.585, -3.826, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 21
  n_block = 0
  n_eigen = 100
  n_restart_vec = 150
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
  gs = 5.585, -3.826, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 23
  n_block = 0
  n_eigen = 100
  n_restart_vec = 150
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
  gs = 5.585, -3.826, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 25
  n_block = 0
  n_eigen = 100
  n_restart_vec = 150
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
  gs = 5.585, -3.826, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 27
  n_block = 0
  n_eigen = 100
  n_restart_vec = 150
  orbs_ratio = 2, 3, 4, 6, 7, 8
&end
EOF
mpiexec ./kshell.exe V51_gxpf1a_27.input > log_V51_gxpf1a_j27n.txt  

rm -f tmp_snapshot_V51_gxpf1a_n.ptn_27_* tmp_lv_V51_gxpf1a_n.ptn_27_* V51_gxpf1a_27.input 


echo "start running log_V51_gxpf1a_j29n.txt ..."
cat > V51_gxpf1a_29.input <<EOF
&input
  beta_cm = 0.0
  eff_charge = 1.5, 0.5
  fn_int = "gxpf1a.snt"
  fn_ptn = "V51_gxpf1a_n.ptn"
  fn_save_wave = "V51_gxpf1a_j29n.wav"
  gl = 1.0, 0.0, 
  gs = 5.585, -3.826, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 29
  n_block = 0
  n_eigen = 100
  n_restart_vec = 150
  orbs_ratio = 2, 3, 4, 6, 7, 8
&end
EOF
mpiexec ./kshell.exe V51_gxpf1a_29.input > log_V51_gxpf1a_j29n.txt  

rm -f tmp_snapshot_V51_gxpf1a_n.ptn_29_* tmp_lv_V51_gxpf1a_n.ptn_29_* V51_gxpf1a_29.input 


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
  gs = 5.585, -3.826
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
  gs = 5.585, -3.826
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
  gs = 5.585, -3.826
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
  gs = 5.585, -3.826
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
  gs = 5.585, -3.826
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
  gs = 5.585, -3.826
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
  gs = 5.585, -3.826
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
  gs = 5.585, -3.826
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
  gs = 5.585, -3.826
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
  gs = 5.585, -3.826
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
  gs = 5.585, -3.826
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
  gs = 5.585, -3.826
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
  gs = 5.585, -3.826
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
  gs = 5.585, -3.826
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
  gs = 5.585, -3.826
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
  gs = 5.585, -3.826
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
  gs = 5.585, -3.826
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
  gs = 5.585, -3.826
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
  gs = 5.585, -3.826
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
  gs = 5.585, -3.826
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
  gs = 5.585, -3.826
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
  gs = 5.585, -3.826
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
  gs = 5.585, -3.826
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
  gs = 5.585, -3.826
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
  gs = 5.585, -3.826
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
  gs = 5.585, -3.826
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
  gs = 5.585, -3.826
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
  gs = 5.585, -3.826
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
  gs = 5.585, -3.826
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
  gs = 5.585, -3.826
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
  gs = 5.585, -3.826
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
  gs = 5.585, -3.826
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
  gs = 5.585, -3.826
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
  gs = 5.585, -3.826
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
  gs = 5.585, -3.826
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
  gs = 5.585, -3.826
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
  gs = 5.585, -3.826
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
  gs = 5.585, -3.826
&end
EOF
mpiexec ./transit.exe V51_gxpf1a_25_27.input > log_V51_gxpf1a_tr_j25n_j27n.txt  

rm -f V51_gxpf1a_25_27.input


echo "start running log_V51_gxpf1a_tr_j25n_j29n.txt ..."
cat > V51_gxpf1a_25_29.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V51_gxpf1a_n.ptn"
  fn_ptn_r = "V51_gxpf1a_n.ptn"
  fn_load_wave_l = "V51_gxpf1a_j25n.wav"
  fn_load_wave_r = "V51_gxpf1a_j29n.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.585, -3.826
&end
EOF
mpiexec ./transit.exe V51_gxpf1a_25_29.input > log_V51_gxpf1a_tr_j25n_j29n.txt  

rm -f V51_gxpf1a_25_29.input


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
  gs = 5.585, -3.826
&end
EOF
mpiexec ./transit.exe V51_gxpf1a_27_27.input > log_V51_gxpf1a_tr_j27n_j27n.txt  

rm -f V51_gxpf1a_27_27.input


echo "start running log_V51_gxpf1a_tr_j27n_j29n.txt ..."
cat > V51_gxpf1a_27_29.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V51_gxpf1a_n.ptn"
  fn_ptn_r = "V51_gxpf1a_n.ptn"
  fn_load_wave_l = "V51_gxpf1a_j27n.wav"
  fn_load_wave_r = "V51_gxpf1a_j29n.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.585, -3.826
&end
EOF
mpiexec ./transit.exe V51_gxpf1a_27_29.input > log_V51_gxpf1a_tr_j27n_j29n.txt  

rm -f V51_gxpf1a_27_29.input


echo "start running log_V51_gxpf1a_tr_j29n_j29n.txt ..."
cat > V51_gxpf1a_29_29.input <<EOF
&input
  fn_int   = "gxpf1a.snt"
  fn_ptn_l = "V51_gxpf1a_n.ptn"
  fn_ptn_r = "V51_gxpf1a_n.ptn"
  fn_load_wave_l = "V51_gxpf1a_j29n.wav"
  fn_load_wave_r = "V51_gxpf1a_j29n.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 5.585, -3.826
&end
EOF
mpiexec ./transit.exe V51_gxpf1a_29_29.input > log_V51_gxpf1a_tr_j29n_j29n.txt  

rm -f V51_gxpf1a_29_29.input


./collect_logs.py log_*V51_gxpf1a* > summary_V51_gxpf1a.txt
echo "Finish computing V51_gxpf1a.    See summary_V51_gxpf1a.txt"
echo 

