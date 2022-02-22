import time
import numpy as np
import matplotlib.pyplot as plt
import kshell_utilities as ksutil

def gxpf():
    fig, ax = plt.subplots()
    V50_experimental_filename = "Sc44_gsf.txt"
    N, Ex, gsf_experimental, gsf_std = np.loadtxt(V50_experimental_filename, skiprows=2, unpack=True)
    ax.errorbar(Ex, gsf_experimental, yerr=gsf_std, fmt=".", capsize=1, elinewidth=0.5, label="A.C. Larsen et al., Phys. Rev. C 76, 044303 (2007)")

    bin_width = 0.2
    Ex_min = 5
    Ex_max = 20
    multipole_type = "M1"
    
    res = ksutil.loadtxt(
        path = "gxpf1a/summary_Sc44_gxpf1a.txt",
        load_and_save_to_file = True,
        old_or_new = "old"
    )[0]
    bins, gsf = res.gsf(
        bin_width = bin_width,
        Ex_min = Ex_min,
        Ex_max = Ex_max,
        multipole_type = multipole_type,
        plot = False
    )
    ax.plot(bins[0:50], gsf[0:50], label="GXPF1A M1 100 states")
    
    ax.set_xlabel(r"E$_{\gamma}$ [MeV]")
    ax.set_ylabel(r"GSF [MeV$^{-3}$]")
    ax.set_title(r"$^{50}$V")
    ax.legend(fontsize=10)
    fig.savefig("Sc44_gsf_kshell_vs_experimental_gxpf1a_100_states.png", dpi=300)
    plt.show()

def sdpf_sdg():
    fig, ax = plt.subplots()
    V50_experimental_filename = "Sc44_gsf.txt"
    N, Ex, gsf_experimental, gsf_std = np.loadtxt(V50_experimental_filename, skiprows=2, unpack=True)
    ax.errorbar(Ex, gsf_experimental, yerr=gsf_std, fmt=".", capsize=1, elinewidth=0.5, label="A.C. Larsen et al., Phys. Rev. C 76, 044303 (2007)")

    bin_width = 0.2
    Ex_min = 5
    Ex_max = 9.699    # S(n).
    
    res = ksutil.loadtxt(
        # path = "sdpf-sdg/1hw/summary_Sc44_GCLSTsdpfsdgix5pn.txt",
        path = "sdpf-sdg/200_states/3hw/summary_Sc44_GCLSTsdpfsdgix5pn_000.txt",
        load_and_save_to_file = True,
        old_or_new = "new"
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
    gsf = gsf_E1 + gsf_M1
    ax.plot(bins[0:50], gsf[0:50], label="sdpf-sdg E1+M1 200 states 3hw")
    ax.plot(bins[0:50], gsf_M1[0:50], label="sdpf-sdg M1 200 states 3hw")
    ax.plot(bins[0:50], gsf_E1[0:50], label="sdpf-sdg E1 200 states 3hw")
    ax.set_yscale('log')
    
    ax.set_xlabel(r"E$_{\gamma}$ [MeV]")
    ax.set_ylabel(r"GSF [MeV$^{-3}$]")
    ax.set_title(r"$^{44}$Sc")
    ax.legend(fontsize=10)
    fig.savefig("Sc44_gsf_kshell_vs_experimental_sdpf-sdg_200_states.png", dpi=300)
    plt.show()

def convert_logs():
    ksutil.collect_logs("sdpf-sdg/200_states/3hw")

def k_seja_comparison():
    fig, ax = plt.subplots()
    V50_experimental_filename = "Sc44_gsf.txt"
    N, Ex, gsf_experimental, gsf_std = np.loadtxt(V50_experimental_filename, skiprows=2, unpack=True)
    ax.errorbar(Ex, gsf_experimental, yerr=gsf_std, fmt=".", capsize=1, elinewidth=0.5, label="A.C. Larsen et al., Phys. Rev. C 76, 044303 (2007)", color="black")

    bin_width = 0.2
    Ex_min = 5
    Ex_max = 9.699    # S(n).
    
    # 3hw
    res = ksutil.loadtxt(
        # path = "sdpf-sdg/1hw/summary_Sc44_GCLSTsdpfsdgix5pn.txt",
        path = "sdpf-sdg/200_states/3hw/summary_Sc44_GCLSTsdpfsdgix5pn_000.txt",
        load_and_save_to_file = True,
        old_or_new = "new"
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
    gsf = gsf_E1 + gsf_M1
    # ax.plot(bins[0:50], gsf[0:50], label="sdpf-sdg E1+M1 200 states 3hw")
    # ax.plot(bins[0:50], gsf_M1[0:50], label="sdpf-sdg M1 200 states 3hw")
    # ax.plot(bins[0:50], gsf_E1[0:50], label="sdpf-sdg E1 200 states 3hw")

    # 1hw
    res = ksutil.loadtxt(
        path = "sdpf-sdg/60_states/1hw/summary_Sc44_GCLSTsdpfsdgix5pn.txt",
        load_and_save_to_file = True,
        old_or_new = "new"
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
        # prefactor_E1 = 1.047e-6,
        plot = False
    )
    gsf = gsf_E1 + gsf_M1
    ax.step(bins[0:50], gsf[0:50], label="E1+M1", color="grey")
    ax.step(bins[0:50], gsf_M1[0:50], label="M1", color="red")
    ax.step(bins[0:50], gsf_E1[0:50], label="E1", color="blue")

    ax.set_ylim([1.2e-10, 1e-6])
    ax.set_xlim(right=8.5)
    ax.set_yscale('log')
    ax.set_xlabel(r"E$_{\gamma}$ [MeV]")
    ax.set_ylabel(r"GSF [MeV$^{-3}$]")
    ax.set_title(r"$^{44}$Sc sdpf-sdg 60 states 1hw [0J, 12J]")
    ax.legend(fontsize=10)
    fig.savefig("Sc44_gsf_kseja_comparison.png", dpi=300)
    plt.show()

def compare_partial_and_total_level_density():
    fig, ax = plt.subplots()
    V50_experimental_filename = "Sc44_gsf.txt"
    N, Ex, gsf_experimental, gsf_std = np.loadtxt(V50_experimental_filename, skiprows=2, unpack=True)
    ax.errorbar(Ex, gsf_experimental, yerr=gsf_std, fmt=".", capsize=1, elinewidth=0.5, label="A.C. Larsen et al., Phys. Rev. C 76, 044303 (2007)", color="black")

    bin_width = 0.2
    Ex_min = 3  # MeV.
    Ex_max = 9.699    # S(n) MeV.

    res = ksutil.loadtxt(
        path = "sdpf-sdg/60_states/1hw/summary_Sc44_GCLSTsdpfsdgix5pn.txt",
        load_and_save_to_file = True,
        old_or_new = "new"
    )[0]

    # Partial level density.
    bins, gsf_M1 = res.gsf(
        bin_width = bin_width,
        Ex_min = Ex_min,
        Ex_max = Ex_max,
        multipole_type = "M1",
        partial_or_total = "partial",
        plot = False
    )
    bins, gsf_E1 = res.gsf(
        bin_width = bin_width,
        Ex_min = Ex_min,
        Ex_max = Ex_max,
        multipole_type = "E1",
        partial_or_total = "partial",
        plot = False
    )
    gsf = gsf_E1 + gsf_M1
    ax.step(bins[0:50], gsf[0:50], color="grey")
    ax.step(bins[0:50], gsf_M1[0:50], color="red")
    ax.step(bins[0:50], gsf_E1[0:50], color="blue")

    # Total level density.
    bins, gsf_M1 = res.gsf(
        bin_width = bin_width,
        Ex_min = Ex_min,
        Ex_max = Ex_max,
        multipole_type = "M1",
        partial_or_total = "total",
        # include_only_nonzero_in_average = False,
        plot = False
    )
    bins, gsf_E1 = res.gsf(
        bin_width = bin_width,
        Ex_min = Ex_min,
        Ex_max = Ex_max,
        multipole_type = "E1",
        # prefactor_E1 = 1.047e-6,
        partial_or_total = "total",
        # include_only_nonzero_in_average = False,
        plot = False
    )
    gsf = gsf_E1 + gsf_M1
    ax.step(bins[0:50], gsf[0:50], color="grey", linestyle="dashed")
    ax.step(bins[0:50], gsf_M1[0:50], color="red", linestyle="dashed")
    ax.step(bins[0:50], gsf_E1[0:50], color="blue", linestyle="dashed")

    ax.plot([0], [0], color="black", label="partial level density")
    ax.plot([0], [0], color="black", linestyle="dashed", label="total level density")

    ax.set_ylim([1.2e-10, 1e-6])
    ax.set_xlim(right=8.5)
    ax.set_yscale('log')
    ax.set_xlabel(r"E$_{\gamma}$ [MeV]")
    ax.set_ylabel(r"GSF [MeV$^{-3}$]")
    ax.set_title(r"$^{44}$Sc sdpf-sdg 60 states 1hw [0J, 12J]")
    ax.legend(fontsize=10)
    fig.savefig("Sc44_gsf_partial_total_rho_comparison.png", dpi=300)
    plt.show()

if __name__ == "__main__":
    # gxpf()
    # sdpf_sdg()
    # k_seja_comparison()
    compare_partial_and_total_level_density()
    # convert_logs()
    pass