#!/bin/bash 
#SBATCH --job-name=1p3n
#SBATCH --account=NN9464K 
## Syntax is d-hh:mm:ss 
#SBATCH --time=0-00:30:00
#SBATCH --nodes=32
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
echo "start running log_Sc45_GCLSTsdpfsdgix5pn_tr_j1p_j3n.txt ..."
cat > Sc45_GCLSTsdpfsdgix5pn_1p_3n.input <<EOF
&input
  fn_int   = "GCLSTsdpfsdgix5pn.snt"
  fn_ptn_l = "Sc45_GCLSTsdpfsdgix5pn_p.ptn"
  fn_ptn_r = "Sc45_GCLSTsdpfsdgix5pn_n.ptn"
  fn_load_wave_l = "Sc45_GCLSTsdpfsdgix5pn_j1p.wav"
  fn_load_wave_r = "Sc45_GCLSTsdpfsdgix5pn_j3n.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.189, -2.869
&end
EOF
mpiexec ./transit.exe Sc45_GCLSTsdpfsdgix5pn_1p_3n.input > log_Sc45_GCLSTsdpfsdgix5pn_tr_j1p_j3n.txt  

rm -f Sc45_GCLSTsdpfsdgix5pn_1p_3n.input


