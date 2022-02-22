#!/bin/bash 
#SBATCH --job-name=V50_gxpf1a 
#SBATCH --account=NN9464K 
## Syntax is d-hh:mm:ss 
#SBATCH --time=0-10:00:00 
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
  max_lanc_vec = 350
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 18
  n_block = 0
  n_eigen = 200
  n_restart_vec = 300
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
  max_lanc_vec = 350
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 20
  n_block = 0
  n_eigen = 200
  n_restart_vec = 300
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
  max_lanc_vec = 350
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 22
  n_block = 0
  n_eigen = 200
  n_restart_vec = 300
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
  max_lanc_vec = 350
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 24
  n_block = 0
  n_eigen = 200
  n_restart_vec = 300
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
  max_lanc_vec = 350
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 26
  n_block = 0
  n_eigen = 200
  n_restart_vec = 300
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
  max_lanc_vec = 350
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 28
  n_block = 0
  n_eigen = 200
  n_restart_vec = 300
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

