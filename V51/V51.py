import kshell_utilities as ksutil
import numpy as np
import matplotlib.pyplot as plt

def main():
    fig, ax = plt.subplots()
    experimental_filename = "V51_gsf.txt"
    N, Ex, gsf_experimental, gsf_std = np.loadtxt(experimental_filename, skiprows=1, unpack=True)
    ax.errorbar(Ex, gsf_experimental, yerr=gsf_std, fmt=".", capsize=1, elinewidth=0.5, label="experimental")

    bin_width = 0.2
    Ex_min = 5
    Ex_max = 20
    # multipole_type = "M1"
    
    res = ksutil.loadtxt(
        path = "sdpf-mu/summary_V51_sdpf-mu_000.txt",
        load_and_save_to_file = True
    )[0]
    bins, gsf_M1 = res.gsf(
        bin_width = bin_width,
        Ex_min = Ex_min,
        Ex_max = Ex_max,
        multipole_type = "M1",
        plot = False
    )
    bins, gsf_E1 = res.gsf(
        bin_width = bin_width,
        Ex_min = Ex_min,
        Ex_max = Ex_max,
        multipole_type = "E1",
        plot = False
    )
    ax.plot(bins[0:50], (gsf_M1 + gsf_E1)[0:50], label="sdpf-mu E1 + M1 200 states")
    ax.plot(bins[0:50], gsf_M1[0:50], label="sdpf-mu M1 200 states")
    ax.plot(bins[0:50], gsf_E1[0:50], label="sdpf-mu E1 200 states")

    ax.set_xlabel(r"E$_{\gamma}$ [MeV]")
    ax.set_ylabel(r"GSF [MeV$^{-3}$]")
    ax.set_title(r"$^{51}$V")
    ax.legend(fontsize=10)
    fig.savefig("v51_gsf_kshell_vs_experimental_sdpf-mu_200_states.png", dpi=300)
    plt.show()

def fix_logs():
    ksutil.collect_logs("sdpf-mu")

if __name__ == "__main__":
    # fix_logs()
    main()