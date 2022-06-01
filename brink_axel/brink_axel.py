import sys
import numpy as np
import matplotlib.pyplot as plt
import kshell_utilities as ksutil
ksutil.latex_plot()
ksutil.flags["debug"] = True
# ksutil.flags["parallel"] = False

BIN_WIDTH = 0.2
EX_MIN = 5  # MeV.
EX_MAX = 9.699    # S(n) MeV.

def brink_axel_pi():
    fig_0, ax_0 = plt.subplots()
    parities = ["-", "+"]

    for parity in parities:
        bins, gsf_M1 = res.gsf(
            bin_width = BIN_WIDTH,
            Ex_min = EX_MIN,
            Ex_max = EX_MAX,
            multipole_type = "M1",
            filter_parities = parity,
            plot = False,
        )

        bins, gsf_E1 = res.gsf(
            bin_width = BIN_WIDTH,
            Ex_min = EX_MIN,
            Ex_max = EX_MAX,
            multipole_type = "E1",
            filter_parities = parity,
            plot = False,
        )

        gsf = gsf_E1 + gsf_M1
        ax_0.plot(bins[0:50], gsf[0:50], label=f"{parity}")

    # ax_0.plot([0], [0], color="black", alpha=0.2, label=r"Single $J$")  # Dummy for legend.
    # ax_0.yaxis.set_label_coords(-0.1, 0.5)
    ax_0.set_yscale('log')
    ax_0.set_xlabel(r"E$_{\gamma}$ [MeV]")
    ax_0.set_ylabel(r"GSF [MeV$^{-3}$]")
    ax_0.set_title(r"$^{44}$Sc, sdpf-sdg, 200 levels per $J^{\pi}$, $3 \hbar \omega$")
    ax_0.legend()
    fig_0.savefig("Sc44_gsf_brink_axel_pi.png", dpi=300)
    plt.show()

def brink_axel_E():
    fig_0, ax_0 = plt.subplots()
    N = 10
    E_range = np.linspace(EX_MIN, EX_MAX, N)
    print(f"Bin width: {E_range[1] - E_range[0]}")

    for i in range(N-1):
        bins, gsf_M1 = res.gsf(
            bin_width = BIN_WIDTH,
            Ex_min = E_range[i],
            Ex_max = E_range[i + 1],
            multipole_type = "M1",
            plot = False,
        )

        bins, gsf_E1 = res.gsf(
            bin_width = BIN_WIDTH,
            Ex_min = E_range[i],
            Ex_max = E_range[i + 1],
            multipole_type = "E1",
            plot = False,
        )

        gsf = gsf_E1 + gsf_M1
        ax_0.plot(bins[0:50], gsf[0:50], label=f"[{E_range[i]:.1f}, {E_range[i+1]:.1f}]")

    # ax_0.plot([0], [0], color="black", alpha=0.2, label=r"Single $J$")  # Dummy for legend.
    # ax_0.yaxis.set_label_coords(-0.1, 0.5)
    ax_0.set_yscale('log')
    ax_0.set_xlabel(r"E$_{\gamma}$ [MeV]")
    ax_0.set_ylabel(r"GSF [MeV$^{-3}$]")
    ax_0.set_title(r"$^{44}$Sc, sdpf-sdg, 200 states per $J^{\pi}$, $3 \hbar \omega$")
    ax_0.legend()
    fig_0.savefig("Sc44_gsf_brink_axel_E.png", dpi=300)
    plt.show()

def brink_axel_j():
    res = ksutil.loadtxt(
        path = "../Sc44/sdpf-sdg/200_states/3hw/summary_Sc44_GCLSTsdpfsdgix5pn_000.txt",
        load_and_save_to_file = True,
    )[0]
    fig_0, ax_0 = plt.subplots()
    # fig_1, ax_1 = plt.subplots()
    # fig_2, ax_2 = plt.subplots()
    fig_3, ax_3 = plt.subplots()
    fig_4, ax_4 = plt.subplots()
    fig_5, ax_5 = plt.subplots()
    j_list = [0, 1, 2, 3, 4, 5, 6, 7, 8]

    bins_M1_all_j, gsf_M1_all_j, pt_counter_M1_all_j = res.gsf(
        bin_width = BIN_WIDTH,
        Ex_min = EX_MIN,
        Ex_max = EX_MAX,
        multipole_type = "M1",
        porter_thomas = True,
        plot = False,
    )

    bins_E1_all_j, gsf_E1_all_j, pt_counter_E1_all_j = res.gsf(
        bin_width = BIN_WIDTH,
        Ex_min = EX_MIN,
        Ex_max = EX_MAX,
        multipole_type = "E1",
        porter_thomas = True,
        plot = False,
    )

    gsf_all_j = gsf_E1_all_j + gsf_M1_all_j
    ax_0.plot(bins_M1_all_j[0:50], gsf_all_j[0:50], color="black", label=r"All $J$")
    # ax_0.plot(bins[0:50], pt_counter_all[0:50], color="maroon", label=r"PT")
    # ax_1.plot(bins[0:50], gsf_all[0:50], label=r"All $J$")
    # ax_2.step(bins[0:50], gsf_all[0:50], label=r"All $J$")

    for j in j_list:
        bins_M1_one_j, gsf_M1_one_j, pt_counter_M1_one_j = res.gsf(
            bin_width = BIN_WIDTH,
            Ex_min = EX_MIN,
            Ex_max = EX_MAX,
            multipole_type = "M1",
            partial_or_total = "partial",
            filter_spins = [j],
            porter_thomas = True,
            plot = False,
        )

        bins_E1_one_j, gsf_E1_one_j, pt_counter_E1_one_j = res.gsf(
            bin_width = BIN_WIDTH,
            Ex_min = EX_MIN,
            Ex_max = EX_MAX,
            multipole_type = "E1",
            partial_or_total = "partial",
            filter_spins = [j],
            porter_thomas = True,
            plot = False,
        )

        gsf_one_j = gsf_E1_one_j + gsf_M1_one_j
        pt_counter_all_one_j = pt_counter_E1_one_j + pt_counter_M1_one_j
        # print(f"{pt_counter_all_one_j =}")
        ax_5.plot(bins_M1_one_j, pt_counter_all_one_j, label=f"$J = {j}$")
        pt_counter_all_one_j = np.sqrt(2/pt_counter_all_one_j)
        # print(f"{pt_counter_all_one_j =}")
        # sys.exit()
        ax_4.plot(bins_M1_one_j[0:50], pt_counter_all_one_j, label=f"J: {j}")
        ax_0.plot(bins_M1_one_j[0:50], gsf_one_j[0:50], color="black", alpha=0.2)
        # ax_1.plot(bins[0:50], gsf[0:50], label=r"$J=$" + f"{j}")
        # ax_2.step(bins[0:50], gsf[0:50], label=r"$J=$" + f"{j}")

        mean_error = np.mean(np.abs(gsf_all_j - gsf_one_j)/gsf_all_j)
        mean_pt = np.mean(pt_counter_all_one_j[~np.isinf(pt_counter_all_one_j)])

        width = 0.2
        ax_3.bar(j - width/2, mean_error, color="black", width=width)
        ax_3.bar(j + width/2, mean_pt, color="grey", width=width)

    ax_0.plot([0], [0], color="black", alpha=0.2, label=r"Single $J$")  # Dummy for legend.
    ax_0.yaxis.set_label_coords(-0.1, 0.5)
    ax_0.set_yscale('log')
    ax_0.set_xlabel(r"E$_{\gamma}$ [MeV]")
    ax_0.set_ylabel(r"GSF [MeV$^{-3}$]")
    ax_0.set_title(r"$^{44}$Sc, sdpf-sdg, 200 levels per $J^{\pi}$, $3 \hbar \omega$")
    ax_0.legend()
    fig_0.savefig("Sc44_gsf_brink_axel_j_style0.png", dpi=300)

    # ax_1.set_yscale('log')
    # ax_1.set_xlabel(r"E$_{\gamma}$ [MeV]")
    # ax_1.set_ylabel(r"GSF [MeV$^{-3}$]")
    # ax_1.set_title(r"$^{44}$Sc, sdpf-sdg, 200 levels per $J^{\pi}$, $3 \hbar \omega$")
    # ax_1.legend()
    # fig_1.savefig("Sc44_gsf_brink_axel_j_style1.png", dpi=300)

    # ax_2.set_yscale('log')
    # ax_2.set_xlabel(r"E$_{\gamma}$ [MeV]")
    # ax_2.set_ylabel(r"GSF [MeV$^{-3}$]")
    # ax_2.set_title(r"$^{44}$Sc, sdpf-sdg, 200 levels per $J^{\pi}$, $3 \hbar \omega$")
    # ax_2.legend()
    # fig_2.savefig("Sc44_gsf_brink_axel_j_style2.png", dpi=300)

    ax_3.plot([0], [0], color="black", label=r"Max deviation")  # Dummy for legend.
    ax_3.plot([0], [0], color="grey", label=r"Mean deviation")  # Dummy for legend.
    # ax_3.plot([0], [0], color="blue", label=r"Max PT")  # Dummy for legend.
    # ax_3.plot([0], [0], color="red", label=r"Mean PT")  # Dummy for legend.
    ax_3.set_yscale('log')
    ax_3.set_xlabel(r"$J$")
    # ax_3.set_ylabel(r"$\frac{\mathrm{Deviation} \; \mathrm{from} \; \mathrm{total}}{\mathrm{Total}}$")
    ax_3.set_ylabel(r"$\frac{|\mathrm{GSF} - \mathrm{GSF}_{\mathrm{single}}|}{\mathrm{GSF}}$")
    ax_3.set_title(r"$^{44}$Sc, sdpf-sdg, 200 levels per $J^{\pi}$, $3 \hbar \omega$")
    ax_3.set_xticks(j_list)
    ax_3.legend()
    fig_3.savefig("Sc44_gsf_brink_axel_j_bar.png", dpi=300)

    ax_4.set_xlabel(r"$E_{\gamma}$ [MeV]")
    ax_4.set_ylabel(r"$\sqrt{2/N_{\gamma}}$")
    ax_4.legend()

    ax_5.set_xlabel(r"$E_{\gamma}$ [MeV]")
    ax_5.set_ylabel(r"n_transitions")
    ax_5.legend()
    
    plt.show()

def porter_thomas():
    """
    [2*spin_initial, parity_initial, idx_initial, Ex_initial,
    2*spin_final, parity_final, idx_final, Ex_final, E_gamma,
    B(.., i->f), B(.., f<-i)]
    """
    res = ksutil.loadtxt(
        path = "../Sc44/sdpf-sdg/200_states/3hw/summary_Sc44_GCLSTsdpfsdgix5pn_000.txt",
        # path = "../V50/sdpf-mu/200_states/summary_V50_sdpf-mu_000.txt",
        # path = "../Zn64/sdpf-sdg/200_states/1hw_1416/summary_Zn64_gs8_000.txt",
        # path = "../Ni60/Ni60_jun45-20180316/summary_Ni60_jun45.txt",
        # path = "../V50/gxpf1a/200_states_modified/summary_V50_gxpf1a.txt",
        load_and_save_to_file = True,
        # old_or_new = "old"
    )[0]
    res.porter_thomas_plot(
        Ei_range_min = EX_MIN,
        Ei_range_max = EX_MAX,
        Ei_values = np.linspace(EX_MIN, EX_MAX, 3),
        Ei_bin_width = 0.2,
        BXL_bin_width = 0.1,
        multipole_type = "M1",
    )
    # from scipy.stats import chi2
    # from scipy.special import gamma
    # lolfunc = lambda x, dof: 1/gamma(dof/2)*(dof/2*x)**(dof/2 - 1)*np.exp(-dof*x/2)
    # scope = np.linspace(0 , 8, 1000)
    # for dof in [1, 2, 4, 16, 100]:
    #     plt.plot(scope, chi2(dof).pdf(scope), label=f"{dof=}")
    #     # plt.plot(scope, lolfunc(scope, dof), label=f"{dof=}")

    # plt.ylim((0, 0.5))
    # plt.legend()
    # plt.show()


if __name__ == "__main__":
    # brink_axel_pi()
    # brink_axel_E()
    brink_axel_j()
    # porter_thomas()

    # from scipy.stats import chi2
    # x = np.linspace(0, 10, 1000)
    # plt.plot(x, np.sqrt(2/x), label="sqrt(2/x)")
    # plt.plot(x, chi2(1).pdf(x), label="chi2(1)")
    # plt.legend()
    # plt.show()
    pass