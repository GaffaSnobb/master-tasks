#!/bin/bash 
#SBATCH --job-name=7p 
#SBATCH --account=NN9464K 
## Syntax is d-hh:mm:ss 
#SBATCH --time=0-05:00:00 
#SBATCH --nodes=64
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
echo "start running log_Zn64_gs8_j14p.txt ..."
cat > Zn64_gs8_14p.input <<EOF
&input
  beta_cm = 10.0
  eff_charge = 1.5, 0.5, 
  fn_int = "gs8.snt"
  fn_ptn = "Zn64_gs8_p.ptn"
  fn_save_wave = "Zn64_gs8_j14p.wav"
  gl = 1.0, 0.0, 
  gs = 4.189, -2.869, 
  hw_type = 2
  is_double_j = .true.
  max_lanc_vec = 350
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 14
  n_block = 8
  n_eigen = 200
  n_restart_vec = 300
  orbs_ratio = 4, 16, 
&end
EOF
mpiexec ./kshell.exe Zn64_gs8_14p.input > log_Zn64_gs8_j14p.txt  

rm -f tmp_snapshot_Zn64_gs8_p.ptn_14_* tmp_lv_Zn64_gs8_p.ptn_14_* Zn64_gs8_14p.input 


