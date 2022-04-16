#!/bin/bash 
#SBATCH --job-name=Sc45_GCLSTsdpfsdgix5pn 
#SBATCH --account=NN9464K 
## Syntax is d-hh:mm:ss 
#SBATCH --time=0-00:10:00 
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
echo "start running log_Sc45_GCLSTsdpfsdgix5pn_j7p.txt ..."
cat > Sc45_GCLSTsdpfsdgix5pn_7p.input <<EOF
&input
  beta_cm = 10.0
  eff_charge = 1.5, 0.5, 
  fn_int = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn = "Sc45_GCLSTsdpfsdgix5pn_p.ptn"
  fn_save_wave = "Sc45_GCLSTsdpfsdgix5pn_j7p.wav"
  gl = 1.0, 0.0, 
  gs = 4.189, -2.869, 
  hw_type = 2
  is_double_j = .true.
  max_lanc_vec = 350
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 7
  n_block = 8
  n_eigen = 200
  n_restart_vec = 300
&end
EOF
mpiexec ./kshell.exe Sc45_GCLSTsdpfsdgix5pn_7p.input > log_Sc45_GCLSTsdpfsdgix5pn_j7p.txt  

rm -f tmp_snapshot_Sc45_GCLSTsdpfsdgix5pn_p.ptn_7_* tmp_lv_Sc45_GCLSTsdpfsdgix5pn_p.ptn_7_* Sc45_GCLSTsdpfsdgix5pn_7p.input 


