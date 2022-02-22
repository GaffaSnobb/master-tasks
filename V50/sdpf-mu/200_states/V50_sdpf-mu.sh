#!/bin/bash
#SBATCH --job-name=V50_sdpf-mu
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
# ---------- V50_sdpf-mu --------------

# --------------- transition probabilities --------------


echo "start running log_V50_sdpf-mu_tr_j2p_j6p.txt ..."
cat > V50_sdpf-mu_2_6.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_p.ptn"
  fn_ptn_r = "V50_sdpf-mu_p.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j2p.wav"
  fn_load_wave_r = "V50_sdpf-mu_j6p.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_2_6.input > log_V50_sdpf-mu_tr_j2p_j6p.txt

rm -f V50_sdpf-mu_2_6.input



echo "start running log_V50_sdpf-mu_tr_j4p_j6p.txt ..."
cat > V50_sdpf-mu_4_6.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_p.ptn"
  fn_ptn_r = "V50_sdpf-mu_p.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j4p.wav"
  fn_load_wave_r = "V50_sdpf-mu_j6p.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_4_6.input > log_V50_sdpf-mu_tr_j4p_j6p.txt

rm -f V50_sdpf-mu_4_6.input


echo "start running log_V50_sdpf-mu_tr_j4p_j8p.txt ..."
cat > V50_sdpf-mu_4_8.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_p.ptn"
  fn_ptn_r = "V50_sdpf-mu_p.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j4p.wav"
  fn_load_wave_r = "V50_sdpf-mu_j8p.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_4_8.input > log_V50_sdpf-mu_tr_j4p_j8p.txt

rm -f V50_sdpf-mu_4_8.input



echo "start running log_V50_sdpf-mu_tr_j4p_j6n.txt ..."
cat > V50_sdpf-mu_4_6.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_p.ptn"
  fn_ptn_r = "V50_sdpf-mu_n.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j4p.wav"
  fn_load_wave_r = "V50_sdpf-mu_j6n.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_4_6.input > log_V50_sdpf-mu_tr_j4p_j6n.txt

rm -f V50_sdpf-mu_4_6.input


echo "start running log_V50_sdpf-mu_tr_j6p_j6p.txt ..."
cat > V50_sdpf-mu_6_6.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_p.ptn"
  fn_ptn_r = "V50_sdpf-mu_p.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j6p.wav"
  fn_load_wave_r = "V50_sdpf-mu_j6p.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_6_6.input > log_V50_sdpf-mu_tr_j6p_j6p.txt

rm -f V50_sdpf-mu_6_6.input


echo "start running log_V50_sdpf-mu_tr_j6p_j8p.txt ..."
cat > V50_sdpf-mu_6_8.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_p.ptn"
  fn_ptn_r = "V50_sdpf-mu_p.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j6p.wav"
  fn_load_wave_r = "V50_sdpf-mu_j8p.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_6_8.input > log_V50_sdpf-mu_tr_j6p_j8p.txt

rm -f V50_sdpf-mu_6_8.input


echo "start running log_V50_sdpf-mu_tr_j6p_j10p.txt ..."
cat > V50_sdpf-mu_6_10.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_p.ptn"
  fn_ptn_r = "V50_sdpf-mu_p.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j6p.wav"
  fn_load_wave_r = "V50_sdpf-mu_j10p.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_6_10.input > log_V50_sdpf-mu_tr_j6p_j10p.txt

rm -f V50_sdpf-mu_6_10.input


echo "start running log_V50_sdpf-mu_tr_j6p_j4n.txt ..."
cat > V50_sdpf-mu_6_4.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_p.ptn"
  fn_ptn_r = "V50_sdpf-mu_n.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j6p.wav"
  fn_load_wave_r = "V50_sdpf-mu_j4n.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_6_4.input > log_V50_sdpf-mu_tr_j6p_j4n.txt

rm -f V50_sdpf-mu_6_4.input


echo "start running log_V50_sdpf-mu_tr_j6p_j6n.txt ..."
cat > V50_sdpf-mu_6_6.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_p.ptn"
  fn_ptn_r = "V50_sdpf-mu_n.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j6p.wav"
  fn_load_wave_r = "V50_sdpf-mu_j6n.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_6_6.input > log_V50_sdpf-mu_tr_j6p_j6n.txt

rm -f V50_sdpf-mu_6_6.input


echo "start running log_V50_sdpf-mu_tr_j6p_j8n.txt ..."
cat > V50_sdpf-mu_6_8.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_p.ptn"
  fn_ptn_r = "V50_sdpf-mu_n.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j6p.wav"
  fn_load_wave_r = "V50_sdpf-mu_j8n.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_6_8.input > log_V50_sdpf-mu_tr_j6p_j8n.txt

rm -f V50_sdpf-mu_6_8.input


echo "start running log_V50_sdpf-mu_tr_j8p_j8p.txt ..."
cat > V50_sdpf-mu_8_8.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_p.ptn"
  fn_ptn_r = "V50_sdpf-mu_p.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j8p.wav"
  fn_load_wave_r = "V50_sdpf-mu_j8p.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_8_8.input > log_V50_sdpf-mu_tr_j8p_j8p.txt

rm -f V50_sdpf-mu_8_8.input


echo "start running log_V50_sdpf-mu_tr_j8p_j10p.txt ..."
cat > V50_sdpf-mu_8_10.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_p.ptn"
  fn_ptn_r = "V50_sdpf-mu_p.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j8p.wav"
  fn_load_wave_r = "V50_sdpf-mu_j10p.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_8_10.input > log_V50_sdpf-mu_tr_j8p_j10p.txt

rm -f V50_sdpf-mu_8_10.input


echo "start running log_V50_sdpf-mu_tr_j8p_j12p.txt ..."
cat > V50_sdpf-mu_8_12.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_p.ptn"
  fn_ptn_r = "V50_sdpf-mu_p.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j8p.wav"
  fn_load_wave_r = "V50_sdpf-mu_j12p.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_8_12.input > log_V50_sdpf-mu_tr_j8p_j12p.txt

rm -f V50_sdpf-mu_8_12.input


echo "start running log_V50_sdpf-mu_tr_j8p_j6n.txt ..."
cat > V50_sdpf-mu_8_6.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_p.ptn"
  fn_ptn_r = "V50_sdpf-mu_n.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j8p.wav"
  fn_load_wave_r = "V50_sdpf-mu_j6n.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_8_6.input > log_V50_sdpf-mu_tr_j8p_j6n.txt

rm -f V50_sdpf-mu_8_6.input


echo "start running log_V50_sdpf-mu_tr_j8p_j8n.txt ..."
cat > V50_sdpf-mu_8_8.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_p.ptn"
  fn_ptn_r = "V50_sdpf-mu_n.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j8p.wav"
  fn_load_wave_r = "V50_sdpf-mu_j8n.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_8_8.input > log_V50_sdpf-mu_tr_j8p_j8n.txt

rm -f V50_sdpf-mu_8_8.input


echo "start running log_V50_sdpf-mu_tr_j8p_j10n.txt ..."
cat > V50_sdpf-mu_8_10.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_p.ptn"
  fn_ptn_r = "V50_sdpf-mu_n.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j8p.wav"
  fn_load_wave_r = "V50_sdpf-mu_j10n.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_8_10.input > log_V50_sdpf-mu_tr_j8p_j10n.txt

rm -f V50_sdpf-mu_8_10.input


echo "start running log_V50_sdpf-mu_tr_j10p_j10p.txt ..."
cat > V50_sdpf-mu_10_10.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_p.ptn"
  fn_ptn_r = "V50_sdpf-mu_p.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j10p.wav"
  fn_load_wave_r = "V50_sdpf-mu_j10p.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_10_10.input > log_V50_sdpf-mu_tr_j10p_j10p.txt

rm -f V50_sdpf-mu_10_10.input


echo "start running log_V50_sdpf-mu_tr_j10p_j12p.txt ..."
cat > V50_sdpf-mu_10_12.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_p.ptn"
  fn_ptn_r = "V50_sdpf-mu_p.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j10p.wav"
  fn_load_wave_r = "V50_sdpf-mu_j12p.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_10_12.input > log_V50_sdpf-mu_tr_j10p_j12p.txt

rm -f V50_sdpf-mu_10_12.input


echo "start running log_V50_sdpf-mu_tr_j10p_j14p.txt ..."
cat > V50_sdpf-mu_10_14.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_p.ptn"
  fn_ptn_r = "V50_sdpf-mu_p.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j10p.wav"
  fn_load_wave_r = "V50_sdpf-mu_j14p.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_10_14.input > log_V50_sdpf-mu_tr_j10p_j14p.txt

rm -f V50_sdpf-mu_10_14.input


echo "start running log_V50_sdpf-mu_tr_j10p_j8n.txt ..."
cat > V50_sdpf-mu_10_8.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_p.ptn"
  fn_ptn_r = "V50_sdpf-mu_n.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j10p.wav"
  fn_load_wave_r = "V50_sdpf-mu_j8n.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_10_8.input > log_V50_sdpf-mu_tr_j10p_j8n.txt

rm -f V50_sdpf-mu_10_8.input


echo "start running log_V50_sdpf-mu_tr_j10p_j10n.txt ..."
cat > V50_sdpf-mu_10_10.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_p.ptn"
  fn_ptn_r = "V50_sdpf-mu_n.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j10p.wav"
  fn_load_wave_r = "V50_sdpf-mu_j10n.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_10_10.input > log_V50_sdpf-mu_tr_j10p_j10n.txt

rm -f V50_sdpf-mu_10_10.input


echo "start running log_V50_sdpf-mu_tr_j10p_j12n.txt ..."
cat > V50_sdpf-mu_10_12.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_p.ptn"
  fn_ptn_r = "V50_sdpf-mu_n.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j10p.wav"
  fn_load_wave_r = "V50_sdpf-mu_j12n.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_10_12.input > log_V50_sdpf-mu_tr_j10p_j12n.txt

rm -f V50_sdpf-mu_10_12.input


echo "start running log_V50_sdpf-mu_tr_j12p_j12p.txt ..."
cat > V50_sdpf-mu_12_12.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_p.ptn"
  fn_ptn_r = "V50_sdpf-mu_p.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j12p.wav"
  fn_load_wave_r = "V50_sdpf-mu_j12p.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_12_12.input > log_V50_sdpf-mu_tr_j12p_j12p.txt

rm -f V50_sdpf-mu_12_12.input


echo "start running log_V50_sdpf-mu_tr_j12p_j14p.txt ..."
cat > V50_sdpf-mu_12_14.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_p.ptn"
  fn_ptn_r = "V50_sdpf-mu_p.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j12p.wav"
  fn_load_wave_r = "V50_sdpf-mu_j14p.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_12_14.input > log_V50_sdpf-mu_tr_j12p_j14p.txt

rm -f V50_sdpf-mu_12_14.input


echo "start running log_V50_sdpf-mu_tr_j12p_j16p.txt ..."
cat > V50_sdpf-mu_12_16.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_p.ptn"
  fn_ptn_r = "V50_sdpf-mu_p.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j12p.wav"
  fn_load_wave_r = "V50_sdpf-mu_j16p.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_12_16.input > log_V50_sdpf-mu_tr_j12p_j16p.txt

rm -f V50_sdpf-mu_12_16.input


echo "start running log_V50_sdpf-mu_tr_j12p_j10n.txt ..."
cat > V50_sdpf-mu_12_10.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_p.ptn"
  fn_ptn_r = "V50_sdpf-mu_n.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j12p.wav"
  fn_load_wave_r = "V50_sdpf-mu_j10n.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_12_10.input > log_V50_sdpf-mu_tr_j12p_j10n.txt

rm -f V50_sdpf-mu_12_10.input


echo "start running log_V50_sdpf-mu_tr_j12p_j12n.txt ..."
cat > V50_sdpf-mu_12_12.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_p.ptn"
  fn_ptn_r = "V50_sdpf-mu_n.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j12p.wav"
  fn_load_wave_r = "V50_sdpf-mu_j12n.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_12_12.input > log_V50_sdpf-mu_tr_j12p_j12n.txt

rm -f V50_sdpf-mu_12_12.input


echo "start running log_V50_sdpf-mu_tr_j12p_j14n.txt ..."
cat > V50_sdpf-mu_12_14.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_p.ptn"
  fn_ptn_r = "V50_sdpf-mu_n.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j12p.wav"
  fn_load_wave_r = "V50_sdpf-mu_j14n.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_12_14.input > log_V50_sdpf-mu_tr_j12p_j14n.txt

rm -f V50_sdpf-mu_12_14.input


echo "start running log_V50_sdpf-mu_tr_j14p_j14p.txt ..."
cat > V50_sdpf-mu_14_14.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_p.ptn"
  fn_ptn_r = "V50_sdpf-mu_p.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j14p.wav"
  fn_load_wave_r = "V50_sdpf-mu_j14p.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_14_14.input > log_V50_sdpf-mu_tr_j14p_j14p.txt

rm -f V50_sdpf-mu_14_14.input


echo "start running log_V50_sdpf-mu_tr_j14p_j16p.txt ..."
cat > V50_sdpf-mu_14_16.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_p.ptn"
  fn_ptn_r = "V50_sdpf-mu_p.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j14p.wav"
  fn_load_wave_r = "V50_sdpf-mu_j16p.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_14_16.input > log_V50_sdpf-mu_tr_j14p_j16p.txt

rm -f V50_sdpf-mu_14_16.input


echo "start running log_V50_sdpf-mu_tr_j14p_j12n.txt ..."
cat > V50_sdpf-mu_14_12.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_p.ptn"
  fn_ptn_r = "V50_sdpf-mu_n.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j14p.wav"
  fn_load_wave_r = "V50_sdpf-mu_j12n.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_14_12.input > log_V50_sdpf-mu_tr_j14p_j12n.txt

rm -f V50_sdpf-mu_14_12.input


echo "start running log_V50_sdpf-mu_tr_j14p_j14n.txt ..."
cat > V50_sdpf-mu_14_14.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_p.ptn"
  fn_ptn_r = "V50_sdpf-mu_n.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j14p.wav"
  fn_load_wave_r = "V50_sdpf-mu_j14n.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_14_14.input > log_V50_sdpf-mu_tr_j14p_j14n.txt

rm -f V50_sdpf-mu_14_14.input


echo "start running log_V50_sdpf-mu_tr_j14p_j16n.txt ..."
cat > V50_sdpf-mu_14_16.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_p.ptn"
  fn_ptn_r = "V50_sdpf-mu_n.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j14p.wav"
  fn_load_wave_r = "V50_sdpf-mu_j16n.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_14_16.input > log_V50_sdpf-mu_tr_j14p_j16n.txt

rm -f V50_sdpf-mu_14_16.input


echo "start running log_V50_sdpf-mu_tr_j16p_j16p.txt ..."
cat > V50_sdpf-mu_16_16.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_p.ptn"
  fn_ptn_r = "V50_sdpf-mu_p.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j16p.wav"
  fn_load_wave_r = "V50_sdpf-mu_j16p.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_16_16.input > log_V50_sdpf-mu_tr_j16p_j16p.txt

rm -f V50_sdpf-mu_16_16.input


echo "start running log_V50_sdpf-mu_tr_j16p_j14n.txt ..."
cat > V50_sdpf-mu_16_14.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_p.ptn"
  fn_ptn_r = "V50_sdpf-mu_n.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j16p.wav"
  fn_load_wave_r = "V50_sdpf-mu_j14n.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_16_14.input > log_V50_sdpf-mu_tr_j16p_j14n.txt

rm -f V50_sdpf-mu_16_14.input


echo "start running log_V50_sdpf-mu_tr_j16p_j16n.txt ..."
cat > V50_sdpf-mu_16_16.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_p.ptn"
  fn_ptn_r = "V50_sdpf-mu_n.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j16p.wav"
  fn_load_wave_r = "V50_sdpf-mu_j16n.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_16_16.input > log_V50_sdpf-mu_tr_j16p_j16n.txt

rm -f V50_sdpf-mu_16_16.input



echo "start running log_V50_sdpf-mu_tr_j2n_j6n.txt ..."
cat > V50_sdpf-mu_2_6.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_n.ptn"
  fn_ptn_r = "V50_sdpf-mu_n.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j2n.wav"
  fn_load_wave_r = "V50_sdpf-mu_j6n.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_2_6.input > log_V50_sdpf-mu_tr_j2n_j6n.txt

rm -f V50_sdpf-mu_2_6.input




echo "start running log_V50_sdpf-mu_tr_j4n_j6n.txt ..."
cat > V50_sdpf-mu_4_6.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_n.ptn"
  fn_ptn_r = "V50_sdpf-mu_n.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j4n.wav"
  fn_load_wave_r = "V50_sdpf-mu_j6n.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_4_6.input > log_V50_sdpf-mu_tr_j4n_j6n.txt

rm -f V50_sdpf-mu_4_6.input


echo "start running log_V50_sdpf-mu_tr_j4n_j8n.txt ..."
cat > V50_sdpf-mu_4_8.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_n.ptn"
  fn_ptn_r = "V50_sdpf-mu_n.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j4n.wav"
  fn_load_wave_r = "V50_sdpf-mu_j8n.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_4_8.input > log_V50_sdpf-mu_tr_j4n_j8n.txt

rm -f V50_sdpf-mu_4_8.input


echo "start running log_V50_sdpf-mu_tr_j6n_j6n.txt ..."
cat > V50_sdpf-mu_6_6.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_n.ptn"
  fn_ptn_r = "V50_sdpf-mu_n.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j6n.wav"
  fn_load_wave_r = "V50_sdpf-mu_j6n.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_6_6.input > log_V50_sdpf-mu_tr_j6n_j6n.txt

rm -f V50_sdpf-mu_6_6.input


echo "start running log_V50_sdpf-mu_tr_j6n_j8n.txt ..."
cat > V50_sdpf-mu_6_8.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_n.ptn"
  fn_ptn_r = "V50_sdpf-mu_n.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j6n.wav"
  fn_load_wave_r = "V50_sdpf-mu_j8n.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_6_8.input > log_V50_sdpf-mu_tr_j6n_j8n.txt

rm -f V50_sdpf-mu_6_8.input


echo "start running log_V50_sdpf-mu_tr_j6n_j10n.txt ..."
cat > V50_sdpf-mu_6_10.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_n.ptn"
  fn_ptn_r = "V50_sdpf-mu_n.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j6n.wav"
  fn_load_wave_r = "V50_sdpf-mu_j10n.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_6_10.input > log_V50_sdpf-mu_tr_j6n_j10n.txt

rm -f V50_sdpf-mu_6_10.input


echo "start running log_V50_sdpf-mu_tr_j8n_j8n.txt ..."
cat > V50_sdpf-mu_8_8.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_n.ptn"
  fn_ptn_r = "V50_sdpf-mu_n.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j8n.wav"
  fn_load_wave_r = "V50_sdpf-mu_j8n.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_8_8.input > log_V50_sdpf-mu_tr_j8n_j8n.txt

rm -f V50_sdpf-mu_8_8.input


echo "start running log_V50_sdpf-mu_tr_j8n_j10n.txt ..."
cat > V50_sdpf-mu_8_10.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_n.ptn"
  fn_ptn_r = "V50_sdpf-mu_n.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j8n.wav"
  fn_load_wave_r = "V50_sdpf-mu_j10n.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_8_10.input > log_V50_sdpf-mu_tr_j8n_j10n.txt

rm -f V50_sdpf-mu_8_10.input


echo "start running log_V50_sdpf-mu_tr_j8n_j12n.txt ..."
cat > V50_sdpf-mu_8_12.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_n.ptn"
  fn_ptn_r = "V50_sdpf-mu_n.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j8n.wav"
  fn_load_wave_r = "V50_sdpf-mu_j12n.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_8_12.input > log_V50_sdpf-mu_tr_j8n_j12n.txt

rm -f V50_sdpf-mu_8_12.input


echo "start running log_V50_sdpf-mu_tr_j10n_j10n.txt ..."
cat > V50_sdpf-mu_10_10.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_n.ptn"
  fn_ptn_r = "V50_sdpf-mu_n.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j10n.wav"
  fn_load_wave_r = "V50_sdpf-mu_j10n.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_10_10.input > log_V50_sdpf-mu_tr_j10n_j10n.txt

rm -f V50_sdpf-mu_10_10.input


echo "start running log_V50_sdpf-mu_tr_j10n_j12n.txt ..."
cat > V50_sdpf-mu_10_12.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_n.ptn"
  fn_ptn_r = "V50_sdpf-mu_n.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j10n.wav"
  fn_load_wave_r = "V50_sdpf-mu_j12n.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_10_12.input > log_V50_sdpf-mu_tr_j10n_j12n.txt

rm -f V50_sdpf-mu_10_12.input


echo "start running log_V50_sdpf-mu_tr_j10n_j14n.txt ..."
cat > V50_sdpf-mu_10_14.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_n.ptn"
  fn_ptn_r = "V50_sdpf-mu_n.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j10n.wav"
  fn_load_wave_r = "V50_sdpf-mu_j14n.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_10_14.input > log_V50_sdpf-mu_tr_j10n_j14n.txt

rm -f V50_sdpf-mu_10_14.input


echo "start running log_V50_sdpf-mu_tr_j12n_j12n.txt ..."
cat > V50_sdpf-mu_12_12.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_n.ptn"
  fn_ptn_r = "V50_sdpf-mu_n.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j12n.wav"
  fn_load_wave_r = "V50_sdpf-mu_j12n.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_12_12.input > log_V50_sdpf-mu_tr_j12n_j12n.txt

rm -f V50_sdpf-mu_12_12.input


echo "start running log_V50_sdpf-mu_tr_j12n_j14n.txt ..."
cat > V50_sdpf-mu_12_14.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_n.ptn"
  fn_ptn_r = "V50_sdpf-mu_n.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j12n.wav"
  fn_load_wave_r = "V50_sdpf-mu_j14n.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_12_14.input > log_V50_sdpf-mu_tr_j12n_j14n.txt

rm -f V50_sdpf-mu_12_14.input


echo "start running log_V50_sdpf-mu_tr_j12n_j16n.txt ..."
cat > V50_sdpf-mu_12_16.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_n.ptn"
  fn_ptn_r = "V50_sdpf-mu_n.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j12n.wav"
  fn_load_wave_r = "V50_sdpf-mu_j16n.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_12_16.input > log_V50_sdpf-mu_tr_j12n_j16n.txt

rm -f V50_sdpf-mu_12_16.input


echo "start running log_V50_sdpf-mu_tr_j14n_j14n.txt ..."
cat > V50_sdpf-mu_14_14.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_n.ptn"
  fn_ptn_r = "V50_sdpf-mu_n.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j14n.wav"
  fn_load_wave_r = "V50_sdpf-mu_j14n.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_14_14.input > log_V50_sdpf-mu_tr_j14n_j14n.txt

rm -f V50_sdpf-mu_14_14.input


echo "start running log_V50_sdpf-mu_tr_j14n_j16n.txt ..."
cat > V50_sdpf-mu_14_16.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_n.ptn"
  fn_ptn_r = "V50_sdpf-mu_n.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j14n.wav"
  fn_load_wave_r = "V50_sdpf-mu_j16n.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_14_16.input > log_V50_sdpf-mu_tr_j14n_j16n.txt

rm -f V50_sdpf-mu_14_16.input


echo "start running log_V50_sdpf-mu_tr_j16n_j16n.txt ..."
cat > V50_sdpf-mu_16_16.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "V50_sdpf-mu_n.ptn"
  fn_ptn_r = "V50_sdpf-mu_n.ptn"
  fn_load_wave_l = "V50_sdpf-mu_j16n.wav"
  fn_load_wave_r = "V50_sdpf-mu_j16n.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 5.0265, -3.4434
&end
EOF
mpiexec ./transit.exe V50_sdpf-mu_16_16.input > log_V50_sdpf-mu_tr_j16n_j16n.txt

rm -f V50_sdpf-mu_16_16.input


./collect_logs.py log_*V50_sdpf-mu* > summary_V50_sdpf-mu.txt
echo "Finish computing V50_sdpf-mu.    See summary_V50_sdpf-mu.txt"
echo