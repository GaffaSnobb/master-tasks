import kshell_utilities as ksutil
import numpy as np
import matplotlib.pyplot as plt
ksutil.latex_plot()
ksutil.flags["debug"] = True

BIN_WIDTH = 0.2
EX_MIN = 5.4    # Same as V50, but is that correcto?
EX_MAX = 11.1   # S(n).

def V50_V51_compare_experimental_and_sdpfmu():
    fig, ax = plt.subplots(
        nrows = 2,
        ncols = 1,
        figsize = (6.4, 9),
        constrained_layout = True,
        sharex = True
    )

    ax[0].errorbar(
        *np.loadtxt("../V50/V50_gsf.txt", skiprows=1, unpack=True)[1:],
        fmt = ".",
        capsize = 1,
        elinewidth = 0.5,
        label = "Exp.",
        color = "black"
    )
    _, Ex, gsf_experimental, gsf_std = np.loadtxt("V51_gsf.txt", skiprows=1, unpack=True)
    ax[1].errorbar(
        x = Ex[:-3],
        y = gsf_experimental[:-3],
        yerr = gsf_std[:-3],
        fmt = ".",
        capsize = 1,
        elinewidth = 0.5,
        label = "Exp.",
        color = "black"
    )
    V50 = ksutil.loadtxt(
        path = "../V50/sdpf-mu/200_levels/1hw/summary_V50_sdpf-mu_000.txt"
    )
    V51 = ksutil.loadtxt(
        path = "sdpf-mu/200_levels/summary_V51_sdpf-mu_000.txt"
    )
    bins_V50_M1, gsf_V50_M1 = V50.gsf(
        bin_width = BIN_WIDTH,
        Ex_min = EX_MIN,
        Ex_max = EX_MAX,
        multipole_type = "M1",
        plot = False
    )
    bins_V50_E1, gsf_V50_E1 = V50.gsf(
        bin_width = BIN_WIDTH,
        Ex_min = EX_MIN,
        Ex_max = EX_MAX,
        multipole_type = "E1",
        plot = False
    )
    bins_V51_M1, gsf_V51_M1 = V51.gsf(
        bin_width = BIN_WIDTH,
        Ex_min = EX_MIN,
        Ex_max = EX_MAX,
        multipole_type = "M1",
        plot = False
    )
    bins_V51_E1, gsf_V51_E1 = V51.gsf(
        bin_width = BIN_WIDTH,
        Ex_min = EX_MIN,
        Ex_max = EX_MAX,
        multipole_type = "E1",
        plot = False
    )
    gsf_V50_E1[gsf_V50_E1 == 0] = np.nan
    gsf_V50_M1[gsf_V50_M1 == 0] = np.nan
    gsf_V51_E1[gsf_V51_E1 == 0] = np.nan
    gsf_V51_M1[gsf_V51_M1 == 0] = np.nan
    
    ax[0].step(bins_V50_M1, gsf_V50_M1, label=r"SM $M1$", color="red")
    ax[0].step(bins_V50_E1, gsf_V50_E1, label=r"SM $E1$", color="blue")
    ax[0].step(bins_V50_E1, (gsf_V50_E1 + gsf_V50_M1), label=r"SM $E1 + M1$", color="grey")
    ax[0].legend(loc="lower right")
    ax[0].set_yscale("log")
    ax[0].set_ylabel(r"GSF [MeV$^{-3}$]")
    ax[0].set_title(r"SDPF-MU, 200 levels per $j^{\pi}$, $1 \hbar \omega$")
    ax[0].text(x=0, y=3e-8, s=r"$^{50}$V", fontsize=15)
    ax[0].set_ylim(top=9e-8)

    ax[1].step(bins_V51_M1, gsf_V51_M1, label=r"SM $M1$", color="red")
    ax[1].step(bins_V51_E1, gsf_V51_E1, label=r"SM $E1$", color="blue")
    ax[1].step(bins_V51_E1, (gsf_V51_E1 + gsf_V51_M1), label=r"SM $E1 + M1$", color="grey")
    ax[1].set_yscale("log")
    ax[1].set_ylabel(r"GSF [MeV$^{-3}$]")
    ax[1].set_xlabel(r"$E_{\gamma}$")
    ax[1].text(x=0, y=3e-8, s=r"$^{51}$V", fontsize=15)
    ax[1].set_ylim(top=9e-8)
    ax[1].set_ylim(bottom=ax[0].get_ylim()[0])
    # ax[0].set_ylim(top=ax[1].get_ylim()[1])

    fig.savefig("v50_v51_gsf_exp_vs_sdpf-mu_200_levels.png", dpi=300)
    plt.show()

def V50_V51_compare_experimental_and_gxpf1a_sdpfmu_M1():
    fig_0, ax_0 = plt.subplot_mosaic(
        [['upper left', 'upper right'], ['middle left', 'middle right'], ['lower left', 'lower right']],
        gridspec_kw = dict(height_ratios=[1, 0.5, 1]),
        figsize = (10, 10),
        constrained_layout = True,
        sharex = True
    )
    _, Ex, gsf_experimental, gsf_std = np.loadtxt("V51_gsf.txt", skiprows=1, unpack=True)
    ax_0["lower right"].errorbar(
        x = Ex[:-3],
        y = gsf_experimental[:-3],
        yerr = gsf_std[:-3],
        fmt = ".",
        capsize = 1,
        elinewidth = 0.5,
        label = "Exp.",
        color = "black"
    )
    ax_0["upper right"].errorbar(
        x = Ex[:-3],
        y = gsf_experimental[:-3],
        yerr = gsf_std[:-3],
        fmt = ".",
        capsize = 1,
        elinewidth = 0.5,
        label = "Exp.",
        color = "black"
    )
    ax_0["lower left"].errorbar(
        *np.loadtxt("../V50/V50_gsf.txt", skiprows=1, unpack=True)[1:],
        fmt = ".",
        capsize = 1,
        elinewidth = 0.5,
        label = "Exp.",
        color = "black"
    )
    ax_0["upper left"].errorbar(
        *np.loadtxt("../V50/V50_gsf.txt", skiprows=1, unpack=True)[1:],
        fmt = ".",
        capsize = 1,
        elinewidth = 0.5,
        label = "Exp.",
        color = "black"
    )

    V51_sdpfmu = ksutil.loadtxt(
        path = "sdpf-mu/200_levels/summary_V51_sdpf-mu_000.txt"
    )
    V51_gxpf1a = ksutil.loadtxt(
        path = "gxpf1a/400_levels/summary_V51_gxpf1a_000.txt",
    )
    V50_sdpfmu = ksutil.loadtxt(
        path = "../V50/sdpf-mu/200_levels/1hw/summary_V50_sdpf-mu_000.txt"
    )
    V50_gxpf1a = ksutil.loadtxt(
        path = "../V50/gxpf1a/200_levels/no_trunc/summary_V50_gxpf1a_000.txt",
    )
    bins_V51_M1_sdpfmu, gsf_V51_M1_sdpfmu = V51_sdpfmu.gsf(
        bin_width = BIN_WIDTH,
        Ex_min = EX_MIN,
        Ex_max = EX_MAX,
        multipole_type = "M1",
        plot = False
    )
    bins_V51_M1_gxpf1a, gsf_V51_M1_gxpf1a = V51_gxpf1a.gsf(
        bin_width = BIN_WIDTH,
        Ex_min = EX_MIN,
        Ex_max = EX_MAX,
        multipole_type = "M1",
        plot = False,
        include_n_levels = 200
    )
    bins_V51_E1_sdpfmu, gsf_V51_E1_sdpfmu = V51_sdpfmu.gsf(
        bin_width = BIN_WIDTH,
        Ex_min = EX_MIN,
        Ex_max = EX_MAX,
        multipole_type = "E1",
        plot = False
    )
    bins_V50_M1_sdpfmu, gsf_V50_M1_sdpfmu = V50_sdpfmu.gsf(
        bin_width = BIN_WIDTH,
        Ex_min = EX_MIN,
        Ex_max = EX_MAX,
        multipole_type = "M1",
        plot = False
    )
    bins_V50_M1_gxpf1a, gsf_V50_M1_gxpf1a = V50_gxpf1a.gsf(
        bin_width = BIN_WIDTH,
        Ex_min = EX_MIN,
        Ex_max = EX_MAX,
        multipole_type = "M1",
        plot = False,
        include_n_levels = 200
    )
    bins_V50_E1_sdpfmu, gsf_V50_E1_sdpfmu = V50_sdpfmu.gsf(
        bin_width = BIN_WIDTH,
        Ex_min = EX_MIN,
        Ex_max = EX_MAX,
        multipole_type = "E1",
        plot = False
    )
    gsf_V51_E1_sdpfmu[gsf_V51_E1_sdpfmu == 0] = np.nan
    gsf_V51_M1_gxpf1a[gsf_V51_M1_gxpf1a == 0] = np.nan
    gsf_V51_M1_sdpfmu[gsf_V51_M1_sdpfmu == 0] = np.nan
    gsf_V51_M1_diff = np.abs(gsf_V51_M1_sdpfmu - gsf_V51_M1_gxpf1a)/gsf_V51_M1_sdpfmu

    gsf_V50_E1_sdpfmu[gsf_V50_E1_sdpfmu == 0] = np.nan
    gsf_V50_M1_gxpf1a[gsf_V50_M1_gxpf1a == 0] = np.nan
    gsf_V50_M1_sdpfmu[gsf_V50_M1_sdpfmu == 0] = np.nan
    gsf_V50_M1_diff = np.abs(gsf_V50_M1_sdpfmu - gsf_V50_M1_gxpf1a)/gsf_V50_M1_sdpfmu
    
    ax_0["upper right"].set_title(r"$^{51}$V")
    ax_0["upper right"].step(bins_V51_M1_sdpfmu, gsf_V51_M1_sdpfmu, label=r"SDPF-MU $M1$", color="red")
    ax_0["upper right"].step(bins_V51_M1_gxpf1a, gsf_V51_M1_gxpf1a, label=r"GXPF1A $M1$", color="maroon")
    ax_0["upper right"].set_yscale("log")
    ax_0["upper right"].set_yticklabels([])
    ax_0["upper right"].set_ylim(ax_0["lower right"].get_ylim())
    ax_0["upper right"].set_ylim(top=3.2e-8)
    # ax_0["upper right"].set_title(r"$^{51}$V")

    ax_0["upper left"].set_title(r"$^{50}$V")
    ax_0["upper left"].step(bins_V50_M1_sdpfmu, gsf_V50_M1_sdpfmu, label=r"SDPF-MU $M1$", color="red")
    ax_0["upper left"].step(bins_V50_M1_gxpf1a, gsf_V50_M1_gxpf1a, label=r"GXPF1A $M1$", color="maroon")
    ax_0["upper left"].legend(loc="lower left")
    ax_0["upper left"].set_ylabel(r"GSF [MeV$^{-3}$]")
    ax_0["upper left"].set_yscale("log")
    ax_0["upper left"].set_ylim(ax_0["lower right"].get_ylim())
    ax_0["upper left"].set_ylim(top=3.2e-8)
    # ax_0["upper left"].set_title(r"$^{50}$V")
    
    ax_0["middle right"].step(bins_V51_M1_sdpfmu, gsf_V51_M1_diff, label=r"Rel. difference", color="firebrick")
    ax_0["middle right"].set_yticklabels([])
    ax_0["middle right"].set_yscale("log")
    ax_0["middle right"].set_yticklabels([])
    ax_0["middle right"].set_ylim(bottom=1e-4)
    
    ax_0["middle left"].step(bins_V50_M1_sdpfmu, gsf_V50_M1_diff, label=r"Rel. difference", color="firebrick")
    ax_0["middle left"].set_ylabel(r"$\frac{ |\mathrm{GSF}_{\mathrm{SDPFMU}} - \mathrm{GSF}_{\mathrm{GXPF1A}}  | }{ \mathrm{GSF}_{\mathrm{SDPFMU}} }$")
    ax_0["middle left"].set_yscale("log")
    ax_0["middle left"].legend(loc="lower left")
    ax_0["middle left"].set_ylim(ax_0["middle right"].get_ylim())

    ax_0["lower left"].step(bins_V50_M1_sdpfmu, gsf_V50_M1_sdpfmu, label=r"SDPF-MU $M1$", color="red")
    ax_0["lower left"].step(bins_V50_E1_sdpfmu, gsf_V50_E1_sdpfmu, label=r"SDPF-MU $E1$", color="blue")
    ax_0["lower left"].step(bins_V50_E1_sdpfmu, (gsf_V50_E1_sdpfmu + gsf_V50_M1_sdpfmu), label=r"SDPF-MU $E1 + M1$", color="grey")
    ax_0["lower left"].legend(loc="lower right")
    ax_0["lower left"].set_yscale("log")
    ax_0["lower left"].set_ylabel(r"GSF [MeV$^{-3}$]")
    ax_0["lower left"].set_ylim(top=9e-8)
    ax_0["lower left"].set_xlabel(r"E$_{\gamma}$ [MeV]")

    ax_0["lower right"].step(bins_V51_M1_sdpfmu, gsf_V51_M1_sdpfmu, label=r"SDPF-MU $M1$", color="red")
    ax_0["lower right"].step(bins_V51_E1_sdpfmu, gsf_V51_E1_sdpfmu, label=r"SDPF-MU $E1$", color="blue")
    ax_0["lower right"].step(bins_V51_E1_sdpfmu, (gsf_V51_E1_sdpfmu + gsf_V51_M1_sdpfmu), label=r"SDPF-MU $E1 + M1$", color="grey")
    ax_0["lower right"].set_yscale("log")
    ax_0["lower right"].set_yticklabels([])
    ax_0["lower right"].set_ylim(top=9e-8)
    ax_0["lower right"].set_ylim(bottom=ax_0["lower left"].get_ylim()[0])
    ax_0["lower right"].set_xlabel(r"E$_{\gamma}$ [MeV]")

    fig_0.savefig("v50_v51_gsf_exp_vs_sdpf-mu_vs_gxpf1a_200_levels_E1_M1.png", dpi=300)
    plt.show()

def compare_experimental_and_gxpf1a_sdpfmu_M1():
    fig, ax = plt.subplot_mosaic(
        [['upper'], ['lower']],
        gridspec_kw = dict(height_ratios=[1, 0.5]),
        figsize = (6.4, 7),
        constrained_layout = True,
        sharex = True
    )
    N, Ex, gsf_experimental, gsf_std = np.loadtxt("V51_gsf.txt", skiprows=1, unpack=True)
    ax["upper"].errorbar(Ex, gsf_experimental, yerr=gsf_std, fmt=".", capsize=1, elinewidth=0.5, label="Exp.", color="black")

    res_sdpfmu = ksutil.loadtxt(
        path = "sdpf-mu/200_levels/summary_V51_sdpf-mu_000.txt"
    )
    res_gxpf1a = ksutil.loadtxt(
        path = "gxpf1a/400_levels/summary_V51_gxpf1a_000.txt",
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
        plot = False,
        include_n_levels = 200
    )
    gsf_M1_diff = np.abs(gsf_M1_sdpfmu - gsf_M1_gxpf1a)/gsf_M1_sdpfmu
    
    ax["upper"].step(bins_M1_sdpfmu, gsf_M1_sdpfmu, label=r"SDPF-MU", color="red")
    ax["upper"].step(bins_M1_gxpf1a, gsf_M1_gxpf1a, label=r"GXPF1A", color="maroon")#, linestyle="dashed")
    ax["upper"].set_yscale("log")
    ax["upper"].set_ylabel(r"GSF [MeV$^{-3}$]")
    ax["upper"].set_title(r"$^{51}$V, 200 levels per $j^{\pi}$, $M1$")
    ax["upper"].legend()
    
    ax["lower"].set_yscale("log")
    ax["lower"].set_ylim((1e-4, 1e1))
    ax["lower"].set_xlabel(r"E$_{\gamma}$ [MeV]")
    ax["lower"].set_ylabel(r"$\frac{ |\mathrm{GSF}_{\mathrm{SDPFMU}} - \mathrm{GSF}_{\mathrm{GXPF1A}}  | }{ \mathrm{GSF}_{\mathrm{SDPFMU}} }$")
    ax["lower"].step(bins_M1_sdpfmu, gsf_M1_diff, label=r"Rel. difference", color="firebrick")
    ax["lower"].legend()

    fig.savefig("v51_gsf_exp_vs_sdpf-mu_vs_gxpf1a_200_levels.png", dpi=300)
    plt.show()

def compare_experimental_and_sdpfmu():
    fig, ax = plt.subplots()
    experimental_filename = "V51_gsf.txt"
    N, Ex, gsf_experimental, gsf_std = np.loadtxt(experimental_filename, skiprows=1, unpack=True)
    ax.errorbar(Ex, gsf_experimental, yerr=gsf_std, fmt=".", capsize=1, elinewidth=0.5, label="Exp.", color="black")
    
    res_sdpfmu = ksutil.loadtxt(
        path = "sdpf-mu/200_levels/summary_V51_sdpf-mu_000.txt"
    )
    bins_M1_sdpfmu, gsf_M1_sdpfmu = res_sdpfmu.gsf(
        bin_width = BIN_WIDTH,
        Ex_min = EX_MIN,
        Ex_max = EX_MAX,
        multipole_type = "M1",
        plot = False
    )
    bins_E1_sdpfmu, gsf_E1_sdpfmu = res_sdpfmu.gsf(
        bin_width = BIN_WIDTH,
        Ex_min = EX_MIN,
        Ex_max = EX_MAX,
        multipole_type = "E1",
        plot = False
    )
    ax.step(bins_M1_sdpfmu, (gsf_M1_sdpfmu + gsf_E1_sdpfmu), label=r"SM $E1 + M1$", color="grey")
    ax.step(bins_M1_sdpfmu, gsf_M1_sdpfmu, label=r"SM $M1$", color="red")
    ax.step(bins_E1_sdpfmu, gsf_E1_sdpfmu, label=r"SM $E1$", color="blue")

    ax.set_yscale("log")
    ax.set_xlabel(r"E$_{\gamma}$ [MeV]")
    # ax.set_ylabel(r"GSF [MeV$^{-3}$]")
    ax.set_ylabel(r"$f(E_{\gamma})$ [MeV$^{-3}$]")
    # ax.set_title(r"$^{51}$V, sdpf-mu, 200 levels per $j^{\pi}$, $1 \hbar \omega$")
    ax.legend()
    fig.savefig("v51_gsf_kshell_vs_experimental_sdpf-mu_200_levels.png", dpi=300)
    plt.show()

def compare_varying_number_of_levels_per_j():
    n_levels = [60, 100, 200]
    colors_E1 = ["cyan", "indigo", "blue"]
    colors_M1 = ["orangered", "maroon", "red"]
    colors_both = ["silver", "black", "grey"]
    fig_0, ax_0 = plt.subplots()
    fig_1, ax_1 = plt.subplots()
    
    res = ksutil.loadtxt(
        path = "sdpf-mu/200_levels/summary_V51_sdpf-mu_000.txt",
    )

    for i in range(len(n_levels)):
        bins_gsf_E1, gsf_E1 = res.gsf(
            bin_width = BIN_WIDTH,
            Ex_min = EX_MIN,
            Ex_max = EX_MAX,
            multipole_type = "E1",
            include_n_levels = n_levels[i],
            plot = False
        )
        bins_gsf_M1, gsf_M1 = res.gsf(
            bin_width = BIN_WIDTH,
            Ex_min = EX_MIN,
            Ex_max = EX_MAX,
            multipole_type = "M1",
            include_n_levels = n_levels[i],
            plot = False
        )
        # ax_0.step(bins_gsf_E1, gsf_E1, label=f"{n_levels[i]} levels per " + r"$j^{\pi}$", color=colors_E1[i])
        # ax_0.step(bins_gsf_M1, gsf_M1, label=f"{n_levels[i]} levels per " + r"$j^{\pi}$", color=colors_M1[i])
        ax_0.step(bins_gsf_M1, (gsf_M1 + gsf_E1), label=f"{n_levels[i]} levels per " + r"$j^{\pi}$", color=colors_both[i])

        bins_nld, nld = res.nld(
            bin_width = BIN_WIDTH,
            include_n_levels = n_levels[i],
            plot = False
        )

        ax_1.step(bins_nld, nld, label=f"{n_levels[i]} levels per " + r"$j^{\pi}$", color=colors_E1[i])
    
    ax_0.set_yscale('log')
    ax_0.set_xlabel(r"$E_{\gamma}$ [MeV]")
    ax_0.set_ylabel(r"GSF [MeV$^{-3}$]")
    ax_0.set_title(r"$^{51}$V, sdpf-mu, 1$\hbar \omega$, $E1 + M1$")
    ax_0.legend()
    fig_0.savefig("V51_gsf_sdpf-mu_var_n_levels_E1.png", dpi=300)

    ax_1.set_xlabel(r"$E$ [MeV]")
    ax_1.set_ylabel(r"NLD [MeV$^{-1}$]")
    ax_1.set_title(r"$^{51}$V, sdpf-mu, 1$\hbar \omega$")
    ax_1.legend()
    fig_1.savefig("V51_nld_sdpf-mu_var_n_levels.png", dpi=300)
    plt.show()

if __name__ == "__main__":
    compare_experimental_and_sdpfmu()
    compare_experimental_and_gxpf1a_sdpfmu_M1()
    compare_varying_number_of_levels_per_j()
    V50_V51_compare_experimental_and_gxpf1a_sdpfmu_M1()
    V50_V51_compare_experimental_and_sdpfmu()
    pass