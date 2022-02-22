import kshell_utilities as ksutil
import matplotlib.pyplot as plt
import numpy as np

def Zn68_gsf():
    fig, ax = plt.subplots()
    # V50_experimental_filename = "V50_gsf.txt"
    # N, Ex, gsf_experimental, gsf_std = np.loadtxt(V50_experimental_filename, skiprows=1, unpack=True)
    # ax.errorbar(Ex, gsf_experimental, yerr=gsf_std, fmt=".", capsize=1, elinewidth=0.5, label="A.C. Larsen et al., Phys. Rev. C 73, 064301 (2006)")

    bin_width = 0.2
    Ex_min = 5.4
    Ex_max = 9.3334 # S(n)  UPDATE TO ZN!!
    
    res = ksutil.loadtxt(
        path = "jun45/600_states/summary_Zn68_jun45_000.txt",
        load_and_save_to_file = True
    )[0]

    bins, gsf_E1 = res.gsf(
        bin_width = bin_width,
        Ex_min = Ex_min,
        Ex_max = Ex_max,
        multipole_type = "E1",
        plot = False
    )
    bins_M1, gsf_M1 = res.gsf(
        bin_width = bin_width,
        Ex_min = Ex_min,
        Ex_max = Ex_max,
        multipole_type = "M1",
        plot = False
    )
    gsf = gsf_E1 + gsf_M1
    ax.plot(bins[0:50], gsf[0:50], label="jun45 E1+M1 600 states")
    ax.plot(bins[0:50], gsf_M1[0:50], label="jun45 M1 600 states")
    ax.plot(bins[0:50], gsf_E1[0:50], label="jun45 E1 600 states")

    # ax.set_ylim([2.0610052684616102e-09, 1.6590428320549444e-08])
    ax.set_yscale('log')
    ax.set_xlabel(r"E$_{\gamma}$ [MeV]")
    ax.set_ylabel(r"GSF [MeV$^{-3}$]")
    ax.set_title(r"$^{68}$Zn")
    ax.legend(fontsize=10)
    fig.savefig("zn68_gsf_kshell_vs_experimental_jun45_600_states.png", dpi=300)
    plt.show()

def convert_logs():
    """
    Convert logs to summary file.
    """
    path = "jun45/600_states"
    ksutil.collect_logs(path=path)

if __name__ == "__main__":
    # convert_logs()
    Zn68_gsf()
    pass