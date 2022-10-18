#!/bin/bash 
#SBATCH --job-name=13n17n
#SBATCH --account=NN9464K 
## Syntax is d-hh:mm:ss 
#SBATCH --time=0-00:30:00 
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

echo "start running log_V51_sdpf-mu_tr_j13n_j17n.txt ..."
cat > V51_sdpf-mu_13_17.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V51_sdpf-mu_n.ptn"
  fn_ptn_r = "V51_sdpf-mu_n.ptn"
  fn_load_wave_l = "V51_sdpf-mu_j13n.wav"
  fn_load_wave_r = "V51_sdpf-mu_j17n.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V51_sdpf-mu_13_17.input > log_V51_sdpf-mu_tr_j13n_j17n.txt  

rm -f V51_sdpf-mu_13_17.input


