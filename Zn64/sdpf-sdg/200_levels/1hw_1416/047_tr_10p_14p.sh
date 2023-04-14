#!/bin/bash 
#SBATCH --job-name=Zn64_gs8 
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
echo "start running log_Zn64_gs8_tr_j10p_j14p.txt ..."
cat > Zn64_gs8_10p_14p.input <<EOF
&input
  fn_int   = "gs8.snt"
  fn_ptn_l = "Zn64_gs8_p.ptn"
  fn_ptn_r = "Zn64_gs8_p.ptn"
  fn_load_wave_l = "Zn64_gs8_j10p.wav"
  fn_load_wave_r = "Zn64_gs8_j14p.wav"
  hw_type = 2
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 4.189, -2.869
&end
EOF
mpiexec ./transit.exe Zn64_gs8_10p_14p.input > log_Zn64_gs8_tr_j10p_j14p.txt  

rm -f Zn64_gs8_10p_14p.input


