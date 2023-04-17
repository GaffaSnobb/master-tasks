import kshell_utilities as ksutil
import matplotlib.pyplot as plt
import numpy as np
ksutil.latex_plot()
ksutil.flags["debug"] = True

BIN_WIDTH = 0.2
EX_MIN = 5
EX_MAX = 11.8619 # S(n)

def primary_matrix():
    Zn64 = ksutil.loadtxt(path="sdpf-sdg/200_levels/1hw_1416/")
    Ex_range, Eg_range, B_matrix = Zn64.primary_matrix(
        Ex_min = 0,
        Ex_max = EX_MAX,
        multipole_type = "M1",
        plot = False,
    )
    fig, ax = plt.subplots()
    im = ax.pcolormesh(Ex_range, Eg_range, B_matrix, cmap="jet", norm="log")#, vmin=3e-4, vmax=2e-1)
    ax.set_title(r"$\langle B(M1) \rangle$")
    ax.set_xlabel(r"$E_{\gamma}$ [MeV]")
    ax.set_ylabel(r"$E_{x}$ [MeV]")
    fig.colorbar(im)
    fig.savefig(fname="Zn64_primary_matrix_M1.png", dpi=300)
    plt.show()

    Ex_range, Eg_range, B_matrix = Zn64.primary_matrix(
        Ex_min = 0,
        Ex_max = EX_MAX,
        multipole_type = "E1",
        plot = False,
    )
    fig, ax = plt.subplots()
    im = ax.pcolormesh(Ex_range, Eg_range, B_matrix, cmap="jet", norm="log")#, vmin=3e-4, vmax=2e-1)
    ax.set_title(r"$\langle B(E1) \rangle$")
    ax.set_xlabel(r"$E_{\gamma}$ [MeV]")
    ax.set_ylabel(r"$E_{x}$ [MeV]")
    fig.colorbar(im)
    fig.savefig(fname="Zn64_primary_matrix_E1.png", dpi=300)
    plt.show()

    Ex_range, Eg_range, B_matrix = Zn64.primary_matrix(
        Ex_min = 0,
        Ex_max = EX_MAX,
        multipole_type = ["M1", "E1"],
        plot = False,
    )
    fig, ax = plt.subplots()
    im = ax.pcolormesh(Ex_range, Eg_range, B_matrix, cmap="jet", norm="log")#, vmin=3e-4, vmax=2e-1)
    ax.set_title(r"$\langle B(E1, M1) \rangle$")
    ax.set_xlabel(r"$E_{\gamma}$ [MeV]")
    ax.set_ylabel(r"$E_{x}$ [MeV]")
    fig.colorbar(im)
    fig.savefig(fname="Zn64_primary_matrix_E1_M1.png", dpi=300)
    plt.show()

def main():
    Zn64 = ksutil.loadtxt(path="sdpf-sdg/200_levels/1hw_1416/")

    fig, ax = plt.subplots()
    bins, gsf_E1 = Zn64.gsf(
        bin_width = BIN_WIDTH,
        Ex_min = EX_MIN,
        Ex_max = EX_MAX,
        multipole_type = "E1",
        plot = False
    )
    bins_M1, gsf_M1 = Zn64.gsf(
        bin_width = BIN_WIDTH,
        Ex_min = EX_MIN,
        Ex_max = EX_MAX,
        multipole_type = "M1",
        plot = False
    )
    ax.step(bins[:-10], (gsf_M1 + gsf_E1)[:-10], label=r"SM $E1 + M1$", color="grey")
    ax.step(bins[:-10], gsf_M1[:-10], label=r"SM $M1$", color="red")
    ax.step(bins[:-10], gsf_E1[:-10], label=r"SM $E1$", color="blue")

    ax.yaxis.set_label_coords(-0.1, 0.5)
    ax.set_yscale('log')
    ax.set_xlabel(r"E$_{\gamma}$ [MeV]")
    ax.set_ylabel(r"GSF [MeV$^{-3}$]")
    ax.set_title(r"$^{64}$Zn")
    ax.legend()
    fig.savefig("Zn64_gsf_200_levels_1hw.png", dpi=300)
    plt.show()
    
    Zn64.nld()

    Zn64.angular_momentum_distribution_plot(
        bin_width = 0.6,
        E_min = EX_MIN,
        E_max = EX_MAX,
        filter_parity = None,
        set_title = True
    )
    Zn64.porter_thomas_j_plot(
        Ex_min = EX_MIN,
        Ex_max = EX_MAX,
        j_lists = [[0, 1, 2], [3, 4, 5], [6, 7, 8]],
        # j_lists = [0, 1, 2, 3, 4, 5, 6, 7, 8],
        BXL_bin_width = 0.1,
        multipole_type = ["E1", "M1"],
        # multipole_type = ["E1"],
        set_title = True
    )
    Zn64.porter_thomas_Ei_plot(
        Ei_range_min = EX_MIN,
        Ei_range_max = EX_MAX,
        Ei_values = np.linspace(EX_MIN, EX_MAX, 3),
        Ei_bin_width = 0.2,
        BXL_bin_width = 0.1,
        multipole_type = "E1",
        set_title = False
    )

if __name__ == "__main__":
    primary_matrix()
    main()