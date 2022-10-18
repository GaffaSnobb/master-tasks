import time
import numpy as np
import matplotlib.pyplot as plt
import kshell_utilities as ksutil
import seaborn as sns
ksutil.latex_plot()
ksutil.flags["debug"] = True

BIN_WIDTH = 0.2
EX_MIN = 5
EX_MAX = 9.699    # S(n).

def compare_experimental_GCLSTsdpfsdgix5pn():
    fig, ax = plt.subplots()
    N, Ex, gsf_experimental, gsf_std = np.loadtxt("Sc44_gsf.txt", skiprows=2, unpack=True)
    ax.errorbar(Ex, gsf_experimental, yerr=gsf_std, fmt=".", capsize=1, elinewidth=0.5, label="Exp. old", color="black")
    Ex, gsf_experimental, gsf_std = np.loadtxt("gsf_44Sc_renorm_2022.txt", skiprows=2, unpack=True)
    ax.errorbar(Ex, gsf_experimental, yerr=gsf_std, fmt=".", capsize=1, elinewidth=0.5, label="Exp. new", color="grey")
    
    res_GCLSTsdpfsdgix5pn = ksutil.loadtxt(
        path = "sdpf-sdg/200_levels/3hw/summary_Sc44_GCLSTsdpfsdgix5pn_000.txt",
    )
    bins_GCLSTsdpfsdgix5pn, gsf_M1_GCLSTsdpfsdgix5pn = res_GCLSTsdpfsdgix5pn.gsf(
        bin_width = BIN_WIDTH,
        Ex_min = EX_MIN,
        Ex_max = EX_MAX,
        multipole_type = "M1",
        plot = False
    )
    bins_GCLSTsdpfsdgix5pn, gsf_E1_GCLSTsdpfsdgix5pn = res_GCLSTsdpfsdgix5pn.gsf(
        bin_width = BIN_WIDTH,
        Ex_min = EX_MIN,
        Ex_max = EX_MAX,
        multipole_type = "E1",
        plot = False
    )
    ax.step(bins_GCLSTsdpfsdgix5pn, (gsf_M1_GCLSTsdpfsdgix5pn + gsf_E1_GCLSTsdpfsdgix5pn), label=r"SM $E1 + M1$", color="grey")
    ax.step(bins_GCLSTsdpfsdgix5pn, gsf_M1_GCLSTsdpfsdgix5pn, label=r"SM $M1$", color="red")
    ax.step(bins_GCLSTsdpfsdgix5pn, gsf_E1_GCLSTsdpfsdgix5pn, label=r"SM $E1$", color="blue")

    ax.set_yscale('log')
    ax.set_xlabel(r"E$_{\gamma}$ [MeV]")
    ax.set_ylabel(r"GSF [MeV$^{-3}$]")
    ax.set_title(r"$^{44}$Sc, GCLSTsdpfsdgix5pn, 200 levels per $j^{\pi}$, $3 \hbar \omega$")
    ax.legend()
    fig.savefig("Sc44_gsf_kshell_vs_experimental_GCLSTsdpfsdgix5pn_200_levels.png", dpi=300)
    plt.show()

def k_sieja_comparison():
    fig_0, ax_0 = plt.subplots()
    fig_1, ax_1 = plt.subplots()
    N, Ex, gsf_experimental, gsf_std = np.loadtxt("Sc44_gsf.txt", skiprows=2, unpack=True)
    ax_0.errorbar(Ex, gsf_experimental, yerr=gsf_std, fmt=".", capsize=1, elinewidth=0.5, label="Exp.", color="black")
    ax_1.errorbar(Ex, gsf_experimental, yerr=gsf_std, fmt=".", capsize=1, elinewidth=0.5, label="Exp.", color="black")
    
    Ex, gsf_experimental, gsf_std = np.loadtxt("Sc44_gsf_renorm_2022.txt", skiprows=2, unpack=True)
    ax_0.errorbar(Ex, gsf_experimental, yerr=gsf_std, fmt=".", capsize=1, elinewidth=0.5, label="Re-norm. exp.", color="grey")
    ax_1.errorbar(Ex, gsf_experimental, yerr=gsf_std, fmt=".", capsize=1, elinewidth=0.5, label="Re-norm. exp.", color="grey")

    bin_width = 0.2
    Ex_min = 5
    Ex_max = 9.699    # S(n).

    res = ksutil.loadtxt(
        path = "sdpf-sdg/60_levels/1hw/summary_Sc44_GCLSTsdpfsdgix5pn.txt",
        load_and_save_to_file = True,
        old_or_new = "new"
    )
    bins, gsf_M1 = res.gsf(
        bin_width = bin_width,
        Ex_min = Ex_min,
        Ex_max = Ex_max,
        multipole_type = "M1",
        partial_or_total = "total",
        plot = False
    )
    bins, gsf_E1 = res.gsf(
        bin_width = bin_width,
        Ex_min = Ex_min,
        Ex_max = Ex_max,
        multipole_type = "E1",
        partial_or_total = "total",
        plot = False
    )
    gsf = gsf_E1 + gsf_M1
    ax_0.step(bins[0:50], gsf[0:50], label=r"SM $E1+M1$", color="grey")
    ax_0.step(bins[0:50], gsf_M1[0:50], label=r"SM $M1$", color="red")
    ax_0.step(bins[0:50], gsf_E1[0:50], label=r"SM $E1$", color="blue")

    ax_0.set_ylim([1.2e-10, 2.2e-6])
    ax_0.set_xlim(right=8.5)
    ax_0.set_yscale('log')
    ax_0.set_xlabel(r"$E_{\gamma}$ [MeV]")
    ax_0.set_ylabel(r"GSF [MeV$^{-3}$]")
    ax_0.legend(loc="upper right", fontsize=12)
    fig_0.savefig("Sc44_gsf_total_kseja_comparison.png", dpi=300)
    
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
    ax_1.step(bins[0:50], gsf[0:50], label=r"SM $E1+M1$", color="grey")
    ax_1.step(bins[0:50], gsf_M1[0:50], label=r"SM $M1$", color="red")
    ax_1.step(bins[0:50], gsf_E1[0:50], label=r"SM $E1$", color="blue")

    ax_1.set_ylim([1.2e-10, 2.2e-6])
    ax_1.set_xlim(right=8.5)
    ax_1.set_yscale('log')
    ax_1.set_xlabel(r"$E_{\gamma}$ [MeV]")
    ax_1.set_ylabel(r"GSF [MeV$^{-3}$]")
    ax_1.legend(loc="upper right", fontsize=12)
    fig_1.savefig("Sc44_gsf_partial_kseja_comparison.png", dpi=300)
    
    plt.show()

def compare_varying_number_of_levels_per_j():
    n_levels = [60, 100, 200]
    colors = ["cyan", "dodgerblue", "blue"]
    fig_0, ax_0 = plt.subplots()
    fig_1, ax_1 = plt.subplots()
    
    res = ksutil.loadtxt(
        path = "sdpf-sdg/200_levels/3hw/summary_Sc44_GCLSTsdpfsdgix5pn_000.txt",
        load_and_save_to_file = True,
        old_or_new = "new"
    )

    for levels, color in zip(n_levels, colors):
        bins_gsf_E1, gsf_E1 = res.gsf(
            bin_width = BIN_WIDTH,
            Ex_min = EX_MIN,
            Ex_max = EX_MAX,
            multipole_type = "E1",
            include_n_levels = levels,
            plot = False
        )
        ax_0.step(bins_gsf_E1[0:50], gsf_E1[0:50], label=f"{levels} levels per " + r"$j^{\pi}$", color=color)

        bins_nld, nld = res.nld(
            bin_width = BIN_WIDTH,
            include_n_levels = levels,
            plot = False
        )
        ax_1.step(bins_nld[0:50], nld[0:50], label=f"{levels} levels per " + r"$j^{\pi}$", color=color)
    
    ax_0.set_yscale('log')
    ax_0.set_xlabel(r"$E_{\gamma}$ [MeV]")
    ax_0.set_ylabel(r"GSF [MeV$^{-3}$]")
    # ax_0.set_title(r"$^{44}$Sc, GCLSTsdpfsdgix5pn, 3$\hbar \omega$, E1")
    ax_0.legend()
    fig_0.savefig("Sc44_gsf_GCLSTsdpfsdgix5pn_var_n_levels_E1.png", dpi=300)

    ax_1.set_xlabel(r"$E$ [MeV]")
    ax_1.set_ylabel(r"NLD [MeV$^{-1}$]")
    # ax_1.set_title(r"$^{44}$Sc, GCLSTsdpfsdgix5pn, 3$\hbar \omega$")
    ax_1.legend()
    fig_1.savefig("Sc44_nld_GCLSTsdpfsdgix5pn_var_n_levels.png", dpi=300)
    plt.show()

def angular_momentum_distribution():
    res = ksutil.loadtxt(
        path = "sdpf-sdg/200_levels/3hw/summary_Sc44_GCLSTsdpfsdgix5pn_000.txt",
        load_and_save_to_file = True,
        old_or_new = "new"
    )
    res.angular_momentum_distribution_plot(
        bin_width = 1,
        E_min = EX_MIN,
        E_max = 15,
        filter_parity = "+",
        save_plot = True,
        # single_spin_plot = [0, 2, 4, 7]
    )
    res.angular_momentum_distribution_plot(
        bin_width = 1,
        E_min = EX_MIN,
        E_max = 15,
        filter_parity = "-",
        save_plot = True
        # single_spin_plot = [0, 2, 4, 7]
    )

def gba():
    res = ksutil.loadtxt(
        path = "sdpf-sdg/200_levels/3hw/summary_Sc44_GCLSTsdpfsdgix5pn_000.txt",
        load_and_save_to_file = True,
        old_or_new = "new"
    )
    fig, ax = plt.subplots(nrows=2, ncols=1, figsize=(6.4, 4.8*2))
    j_list = [0, 1, 2, 3, 4, 5, 6, 7, 8]
    n_j = len(j_list)

    bins_M1_all_j, gsf_M1_all_j = res.gsf(
        bin_width = BIN_WIDTH,
        Ex_min = EX_MIN,
        Ex_max = EX_MAX,
        multipole_type = "M1",
        return_n_transitions = False,
        plot = False,
    )
    bins_E1_all_j, gsf_E1_all_j = res.gsf(
        bin_width = BIN_WIDTH,
        Ex_min = EX_MIN,
        Ex_max = EX_MAX,
        multipole_type = "E1",
        return_n_transitions = False,
        plot = False,
    )
    ax[0].plot(bins_M1_all_j, gsf_M1_all_j, color="black", label=r"All $j_i$")
    ax[1].plot(bins_E1_all_j, gsf_E1_all_j, color="black", label=r"All $j_i$")

    for i in range(n_j):
        bins_M1_one_j, gsf_M1_one_j = res.gsf(
            bin_width = BIN_WIDTH,
            Ex_min = EX_MIN,
            Ex_max = EX_MAX,
            multipole_type = "M1",
            partial_or_total = "partial",
            filter_spins = [j_list[i]],
            plot = False,
        )
        bins_E1_one_j, gsf_E1_one_j = res.gsf(
            bin_width = BIN_WIDTH,
            Ex_min = EX_MIN,
            Ex_max = EX_MAX,
            multipole_type = "E1",
            partial_or_total = "partial",
            filter_spins = [j_list[i]],
            plot = False,
        )
        ax[0].plot(bins_M1_one_j, gsf_M1_one_j, color="black", alpha=0.2)
        ax[1].plot(bins_E1_one_j, gsf_E1_one_j, color="black", alpha=0.2)

    ax[0].set_title(r"$^{44}$Sc, $M1$")
    ax[0].set_yscale("log")
    ax[0].set_ylabel(r"GSF [MeV$^{-3}$]")
    ax[0].plot([0], [0], color="black", alpha=0.2, label=r"Single $j_i$")  # Dummy for legend.
    ax[0].legend(loc="lower left")

    ax[1].set_title(r"$^{44}$Sc, $E1$")
    ax[1].set_yscale("log")
    ax[1].set_xlabel(r"$E_{\gamma}$ [MeV]")
    ax[1].set_ylabel(r"GSF [MeV$^{-3}$]")
    ax[1].plot([0], [0], color="black", alpha=0.2, label=r"Single $j$")  # Dummy for legend.
    ax[1].legend(loc="lower left")
    fig.savefig("Sc44_gba_j_M1_E1.png", dpi=300)
    plt.show()

def compare_hw_trunc():
    fig, ax = plt.subplots()
    N, Ex, gsf_experimental, gsf_std = np.loadtxt("Sc44_gsf.txt", skiprows=2, unpack=True)
    ax.errorbar(Ex, gsf_experimental, yerr=gsf_std, fmt=".", capsize=1, elinewidth=0.5, label="Exp. old", color="black")

    Ex, gsf_experimental, gsf_std = np.loadtxt("Sc44_gsf_renorm_2022.txt", skiprows=2, unpack=True)
    ax.errorbar(Ex, gsf_experimental, yerr=gsf_std, fmt=".", capsize=1, elinewidth=0.5, label="Exp. new", color="grey")
    res_GCLSTsdpfsdgix5pn_3hw = ksutil.loadtxt(
        path = "sdpf-sdg/200_levels/3hw/summary_Sc44_GCLSTsdpfsdgix5pn_000.txt",
    )
    bins_GCLSTsdpfsdgix5pn_3hw, gsf_M1_GCLSTsdpfsdgix5pn_3hw = res_GCLSTsdpfsdgix5pn_3hw.gsf(
        bin_width = BIN_WIDTH,
        Ex_min = EX_MIN,
        Ex_max = EX_MAX,
        multipole_type = "M1",
        plot = False
    )
    bins_GCLSTsdpfsdgix5pn_3hw, gsf_E1_GCLSTsdpfsdgix5pn_3hw = res_GCLSTsdpfsdgix5pn_3hw.gsf(
        bin_width = BIN_WIDTH,
        Ex_min = EX_MIN,
        Ex_max = EX_MAX,
        multipole_type = "E1",
        plot = False
    )
    ax.step(bins_GCLSTsdpfsdgix5pn_3hw, (gsf_M1_GCLSTsdpfsdgix5pn_3hw + gsf_E1_GCLSTsdpfsdgix5pn_3hw), label=r"SM $E1 + M1$", color="grey")
    ax.step(bins_GCLSTsdpfsdgix5pn_3hw, gsf_M1_GCLSTsdpfsdgix5pn_3hw, label=r"SM $M1$", color="red")
    ax.step(bins_GCLSTsdpfsdgix5pn_3hw, gsf_E1_GCLSTsdpfsdgix5pn_3hw, label=r"SM $E1$", color="blue")

    res_GCLSTsdpfsdgix5pn_1hw = ksutil.loadtxt(
        path = "sdpf-sdg/200_levels/1hw/summary_Sc44_GCLSTsdpfsdgix5pn_000.txt",
    )
    bins_GCLSTsdpfsdgix5pn_1hw, gsf_M1_GCLSTsdpfsdgix5pn_1hw = res_GCLSTsdpfsdgix5pn_1hw.gsf(
        bin_width = BIN_WIDTH,
        Ex_min = EX_MIN,
        Ex_max = EX_MAX,
        multipole_type = "M1",
        plot = False
    )
    bins_GCLSTsdpfsdgix5pn_1hw, gsf_E1_GCLSTsdpfsdgix5pn_1hw = res_GCLSTsdpfsdgix5pn_1hw.gsf(
        bin_width = BIN_WIDTH,
        Ex_min = EX_MIN,
        Ex_max = EX_MAX,
        multipole_type = "E1",
        plot = False
    )
    ax.step(bins_GCLSTsdpfsdgix5pn_1hw, (gsf_M1_GCLSTsdpfsdgix5pn_1hw + gsf_E1_GCLSTsdpfsdgix5pn_1hw), label=r"SM $E1 + M1$", color="grey", linestyle="dashed")
    ax.step(bins_GCLSTsdpfsdgix5pn_1hw, gsf_M1_GCLSTsdpfsdgix5pn_1hw, label=r"SM $M1$", color="red", linestyle="dashed")
    ax.step(bins_GCLSTsdpfsdgix5pn_1hw, gsf_E1_GCLSTsdpfsdgix5pn_1hw, label=r"SM $E1$", color="blue", linestyle="dashed")

    ax.set_yscale('log')
    ax.set_xlabel(r"E$_{\gamma}$ [MeV]")
    ax.set_ylabel(r"GSF [MeV$^{-3}$]")
    ax.set_title(r"$^{44}$Sc, GCLSTsdpfsdgix5pn, 200 levels per $j^{\pi}$")
    ax.legend()
    # fig.savefig("Sc44_gsf_kshell_vs_experimental_GCLSTsdpfsdgix5pn_200_levels.png", dpi=300)
    plt.show()

if __name__ == "__main__":
    compare_experimental_GCLSTsdpfsdgix5pn()
    k_sieja_comparison()
    compare_varying_number_of_levels_per_j()
    angular_momentum_distribution()
    gba()
    compare_hw_trunc()
    pass