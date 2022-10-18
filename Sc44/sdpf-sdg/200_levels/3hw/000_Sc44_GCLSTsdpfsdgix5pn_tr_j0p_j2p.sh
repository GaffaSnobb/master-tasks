#!/bin/bash 
#SBATCH --job-name=0p2p 
#SBATCH --account=NN9464K 
## Syntax is d-hh:mm:ss 
#SBATCH --time=0-10:00:00 
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
mpiexec ./transit.exe Sc44_GCLSTsdpfsdgix5pn_0_2.input > log_Sc44_GCLSTsdpfsdgix5pn_tr_j0p_j2p.txt  

rm -f Sc44_GCLSTsdpfsdgix5pn_0_2.input


