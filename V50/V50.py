import numpy as np
import matplotlib.pyplot as plt
import kshell_utilities as ksutil
ksutil.latex_plot()
ksutil.flags["debug"] = True

# [MeV]
BIN_WIDTH = 0.2
EX_MIN = 5.4    # Lower lim. from the 2006 experiment?
EX_MAX = 9.3334 # S(n)

def compare_varying_number_of_levels_per_j():
    n_levels = [60, 100, 200]
    colors = ["cyan", "dodgerblue", "blue"]
    fig_0, ax_0 = plt.subplots()
    fig_1, ax_1 = plt.subplots()
    
    res = ksutil.loadtxt(
        path = "sdpf-mu/200_levels/1hw/summary_V50_sdpf-mu_000.txt",
        load_and_save_to_file = True,
        old_or_new = "new"
    )

    for levels, color in zip(n_levels, colors):
        bins_gsf_M1, gsf_M1 = res.gsf(
            bin_width = BIN_WIDTH,
            Ex_min = EX_MIN,
            Ex_max = EX_MAX,
            multipole_type = "M1",
            include_n_levels = levels,
            plot = False
        )
        ax_0.step(bins_gsf_M1, gsf_M1, label=f"{levels} levels per " + r"$j^{\pi}$", color=color)

        bins_nld, nld = res.nld(
            bin_width = BIN_WIDTH,
            include_n_levels = levels,
            plot = False
        )
        ax_1.step(bins_nld, nld, label=f"{levels} levels per " + r"$j^{\pi}$", color=color)
    
    ax_0.set_yscale('log')
    ax_0.set_xlabel(r"$E_{\gamma}$ [MeV]")
    ax_0.set_ylabel(r"GSF [MeV$^{-3}$]")
    ax_0.set_title(r"$^{50}$V, sdpf-mu, M1")
    ax_0.legend()
    fig_0.savefig("V50_gsf_sdpf-mu_var_n_levels_M1.png", dpi=300)

    ax_1.set_xlabel(r"$E$ [MeV]")
    ax_1.set_ylabel(r"NLD [MeV$^{-1}$]")
    ax_1.set_title(r"$^{50}$V, sdpf-mu")
    ax_1.legend()
    fig_1.savefig("V50_nld_sdpf-mu_var_n_levels.png", dpi=300)
    plt.show()

def gsf_compare_experimental_and_sdpfmu():
    """
    Compare the numerical and experimental gamma strength functions of
    50V. See fig. 4.18 in the thesis.
    """
    fig, ax = plt.subplots()
    V50_experimental_filename = "V50_gsf.txt"
    N, Ex, gsf_experimental, gsf_std = np.loadtxt(V50_experimental_filename, skiprows=1, unpack=True)
    ax.errorbar(Ex, gsf_experimental, yerr=gsf_std, fmt=".", capsize=1, elinewidth=0.5, label="Exp.", color="black")
    
    res = ksutil.loadtxt(
        path = "sdpf-mu/200_levels/1hw/summary_V50_sdpf-mu_000.txt",
        load_and_save_to_file = True
    )

    bins, gsf_E1 = res.gsf(
        bin_width = BIN_WIDTH,
        Ex_min = EX_MIN,
        Ex_max = EX_MAX,
        multipole_type = "E1",
        plot = False
    )
    bins_M1, gsf_M1 = res.gsf(
        bin_width = BIN_WIDTH,
        Ex_min = EX_MIN,
        Ex_max = EX_MAX,
        multipole_type = "M1",
        plot = False
    )
    gsf = gsf_E1 + gsf_M1
    ax.step(bins, gsf, label=r"SM $E1 + M1$", color="grey")
    ax.step(bins, gsf_M1, label=r"SM $M1$", color="red")
    ax.step(bins, gsf_E1, label=r"SM $E1$", color="blue")

    ax.set_yscale('log')
    ax.set_xlabel(r"E$_{\gamma}$ [MeV]")
    # ax.set_ylabel(r"$f(E_{\gamma})$ [MeV$^{-3}$]")
    ax.set_ylabel(r"GSF [MeV$^{-3}$]")
    # ax.set_title(r"$^{50}$V, SDPF-MU, 200 levels per $j^{\pi}$, $1 \hbar \omega$")
    ax.yaxis.set_label_coords(-0.1, 0.5)
    ax.legend()
    # fig.savefig("v50_gsf_kshell_vs_experimental_sdpf-mu_200_levels.png", dpi=300)
    plt.show()

def gsf_M1_compare_experimental_and_gxpf1a_and_sdpfmu():
    """
    Compare the experimental and numerical M1 gamma strength functions
    of 50V using both the GXPF1A and SDPF-MU interactions. See fig. 4.18
    in the thesis.
    """
    fig, ax = plt.subplot_mosaic(
        [['upper'], ['lower']],
        gridspec_kw = dict(height_ratios=[1, 0.5]),
        figsize = (6.4, 7),
        constrained_layout = True,
        sharex = True
    )
    N, Ex, gsf_experimental, gsf_std = np.loadtxt("V50_gsf.txt", skiprows=1, unpack=True)
    ax["upper"].errorbar(Ex, gsf_experimental, yerr=gsf_std, fmt=".", capsize=1, elinewidth=0.5, label="Exp.", color="black")

    res_sdpfmu = ksutil.loadtxt(
        path = "sdpf-mu/200_levels/1hw/summary_V50_sdpf-mu_000.txt"
    )
    res_gxpf1a = ksutil.loadtxt(
        path = "gxpf1a/200_levels/no_trunc/summary_V50_gxpf1a_000.txt",
    )
    bins_M1_sdpfmu, gsf_M1_sdpfmu = res_sdpfmu.gsf(
        bin_width = BIN_WIDTH,
        Ex_min = EX_MIN,
        Ex_max = EX_MAX,
        multipole_type = "M1",
        plot = False
    )
    bins_M1_gxpf1a, gsf_M1_gxpf1a = res_gxpf1a.gsf(
        bin_width = BIN_WIDTH,
        Ex_min = EX_MIN,
        Ex_max = EX_MAX,
        multipole_type = "M1",
        plot = False
    )
    gsf_M1_diff = np.abs(gsf_M1_sdpfmu - gsf_M1_gxpf1a)/gsf_M1_sdpfmu
    
    ax["upper"].step(bins_M1_sdpfmu, gsf_M1_sdpfmu, label=r"SDPF-MU", color="red")
    ax["upper"].step(bins_M1_gxpf1a, gsf_M1_gxpf1a, label=r"GXPF1A", color="maroon")
    ax["upper"].set_yscale("log")
    ax["upper"].set_ylabel(r"GSF [MeV$^{-3}$]")
    ax["upper"].set_title(r"$^{50}$V, 200 levels per $j^{\pi}$, $M1$")
    ax["upper"].legend()
    
    ax["lower"].set_yscale("log")
    ax["lower"].set_ylim((1e-4, 1e1))
    ax["lower"].set_xlabel(r"E$_{\gamma}$ [MeV]")
    ax["lower"].set_ylabel(r"$\frac{ |\mathrm{GSF}_{\mathrm{SDPFMU}} - \mathrm{GSF}_{\mathrm{GXPF1A}}  | }{ \mathrm{GSF}_{\mathrm{SDPFMU}} }$")
    ax["lower"].step(bins_M1_sdpfmu, gsf_M1_diff, label=r"Rel. difference", color="firebrick")
    ax["lower"].legend()

    # fig.savefig("v50_gsf_exp_vs_sdpf-mu_vs_gxpf1a_200_levels.png", dpi=300)
    plt.show()

if __name__ == "__main__":
    # gsf_compare_experimental_and_sdpfmu()
    # gsf_M1_compare_experimental_and_gxpf1a_and_sdpfmu()
    compare_varying_number_of_levels_per_j()
    pass