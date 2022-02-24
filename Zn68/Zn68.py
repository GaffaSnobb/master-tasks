import kshell_utilities as ksutil
import constants as c
import matplotlib.pyplot as plt
import numpy as np
from scipy.interpolate import interp1d
ksutil.debug_mode(True)

def Zn68_gsf():
    fig, ax = plt.subplots()
    # ax.errorbar(
    #     *np.loadtxt("experimental_data/CT2006_Zn68_gsf.txt", skiprows=1, unpack=True),
    #     fmt = ".",
    #     capsize = 1,
    #     elinewidth = 0.5,
    #     label = "CT2006 frida export",
    #     # color = "black"
    # )
    ax.errorbar(
        *np.loadtxt("experimental_data/CT2006/Zn68_CT2006_gsf.txt", skiprows=1, unpack=True),
        fmt = ".",
        capsize = 1,
        elinewidth = 0.5,
        label = "CT2006",
        # color = "green"
    )
    # ax.errorbar(
    #     *np.loadtxt("experimental_data/CT2009/Zn68_CT2009_gsf.txt", skiprows=1, unpack=True),
    #     fmt = ".",
    #     capsize = 1,
    #     elinewidth = 0.5,
    #     label = "CT2009",
    #     # color = "green"
    # )
    # ax.errorbar(
    #     *np.loadtxt("experimental_data/alex/Zn68_alex_gsf.txt", skiprows=1, unpack=True),
    #     fmt = ".",
    #     capsize = 1,
    #     elinewidth = 0.5,
    #     label = "alex",
    #     # color = "green"
    # )
    # ax.errorbar(
    #     *np.loadtxt("experimental_data/FG2006/Zn68_FG2006_gsf.txt", skiprows=1, unpack=True),
    #     fmt = ".",
    #     capsize = 1,
    #     elinewidth = 0.5,
    #     label = "FG2006",
    #     # color = "green"
    # )
    E1_fit_E, E1_fit_gsf = np.loadtxt("experimental_data/E1_gsf_68Zn_middle.txt", skiprows=2, unpack=True)
    M1_fit_E, M1_fit_gsf = np.loadtxt("experimental_data/M1_gsf_68Zn_middle.txt", skiprows=2, unpack=True)
    fac = 1/(3*c.pi**2*c.hbar_ev**2*c.c**2)
    fac *= 1e6**2   # Convert eV**-2 to MeV**-2.
    fac *= 1e-28    # Convert from m to b.
    fac *= 1e-3     # Convert from b to mb.
    M1_fit_gsf *= fac
    E1_fit_gsf *= fac
    E1_fit_gsf_interpolated = interp1d(E1_fit_E, E1_fit_gsf, kind='cubic')
    # ax.plot(E1_fit_E, E1_fit_gsf, label="E1 (Frida)")
    # ax.plot(M1_fit_E, M1_fit_gsf, label="fit M1")
    # ax.plot(M1_fit_E, M1_fit_gsf + E1_fit_gsf, label="fit M1+E1")
    # ax.grid()

    bin_width = 0.2
    Ex_min = 5.4
    Ex_max = 10.1981 # S(n)
    
    res = ksutil.loadtxt(
        path = "jun45/600_states/summary_Zn68_jun45_000.txt",
        load_and_save_to_file = True
    )[0]

    # bins, gsf_E1 = res.gsf(
    #     bin_width = bin_width,
    #     Ex_min = Ex_min,
    #     Ex_max = Ex_max,
    #     multipole_type = "E1",
    #     plot = False
    # )
    bins, gsf_M1 = res.gsf(
        bin_width = bin_width, 
        Ex_min = Ex_min,
        Ex_max = Ex_max,
        multipole_type = "M1",
        plot = False
    )
    # gsf = gsf_E1 + gsf_M1
    # ax.plot(bins[0:50], gsf[0:50], label="jun45 E1+M1 600 states")
    ax.plot(bins[1:50], gsf_M1[1:50] + E1_fit_gsf_interpolated(bins[1:50]), label="M1 (jun45) + E1 (Frida)")
    ax.plot(bins[1:50], gsf_M1[1:50], label="jun45 M1 600 states")
    ax.plot(bins[1:50], E1_fit_gsf_interpolated(bins[1:50]), label="E1 (Frida)")
    # ax.plot(bins[0:50], gsf_E1[0:50], label="jun45 E1 600 states")

    # ax.set_ylim([2.0610052684616102e-09, 1.6590428320549444e-08])
    ax.set_ylim([2e-10, 2e-7])
    ax.set_xlim([0, 12])
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