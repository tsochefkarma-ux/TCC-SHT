# Cosmology and the Dark Sector
## From Planck-Scale Geometry to Cosmic Expansion

**Focus:** The Energy Budget, Dark Energy, Hubble Tension, and Cosmic History.
**Input Geometry:** Planck Floor ($l_P$) and Moduli Dimensions ($D=6$).
**Free Parameters:** Zero.

---

## 1. Overview

Standard Cosmology ($\Lambda$CDM) is a parameterized fit to data. It assumes Dark Energy and Dark Matter exist but does not explain *what* they are or *why* they have their specific abundances ($68\%$ and $27\%$).

In the **Computational Cosmos**, these components are geometric necessities.
* **Dark Energy** is the pressure of the compact dimensions against the Planck Floor.
* **Dark Matter** is the gravitational shadow of the geometry itself (Axions/Moduli).
* **The Energy Budget** is a direct count of the dimensions available to Strings vs. the Vacuum.

---

## 2. Summary of Derived Parameters

The following cosmological parameters are derived in the files within this directory:

| Quantity | Symbol | Formula (Geometric Origin) | Derived Value | Observed | Error |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **Dark Energy** | $\Omega_\Lambda$ | $4/6$ (Dimensional Exclusion) | **66.7%** | 68% | ~1.3% |
| **Dark Matter** | $\Omega_{DM}$ | $5/18$ (String Residue) | **27.8%** | 27% | ~0.8% |
| **Baryons** | $\Omega_b$ | $1/18$ (Zero Modes) | **5.6%** | 5% | ~0.6% |
| **Hubble Constant**| $H_0$ | Moduli Evolution ($w \approx -0.14$) | **71.1** | 70-73 | - |
| **Spectral Index** | $n_s$ | Fossil Seeding | **0.96** | 0.96 | - |

---

## 3. File Guide

### [`01_Energy_Budget.md`](./01_Energy_Budget.md)
**The 12:5:1 Ratio.**
* Derives the cosmic energy fractions from the dimensionality of Strings ($d=2$) vs. the Compact Space ($D=6$).
* **Key Insight:** Strings can only vibrate in 2 of the 6 dimensions. The remaining 4 dimensions are "invisible" to matter, manifesting as pure Vacuum Energy ($4/6 = 66.7\%$).

### [`02_Planck_Floor_Mechanism.md`](./02_Planck_Floor_Mechanism.md)
**What is Dark Energy?**
* Identifies Dark Energy as **Floor Pressure**.
* The extra dimensions ($K_6$) are compressed against the Planck Length ($l_P$). They cannot shrink further. This "frustration" generates a uniform negative pressure that accelerates expansion.
* Explains why the vacuum energy is small ($10^{-123}$) via the geometric projection factor $(l_P / L_{Hubble})^2$.

### [`03_Hubble_Tension_Resolution.md`](./03_Hubble_Tension_Resolution.md)
**Solving the $H_0$ Crisis.**
* Derives $H_0 \approx 71.1$ km/s/Mpc.
* Shows that the discrepancy between Early Universe ($67$) and Late Universe ($73$) measurements is not an error, but a physical signal.
* **Mechanism:** Dark Matter is not static ($w=0$). It is geometric ($w \approx -0.13$), meaning it dilutes slightly slower than standard matter, affecting the expansion rate over cosmic time.

### [`04_Cosmic_Stress_Test.md`](./04_Cosmic_Stress_Test.md)
**Inflation vs. Bounce.**
* Tests the framework against the Cosmic Microwave Background (CMB) data.
* Shows that a naive bounce fails ($n_s \approx 0.6$), but a **Cyclic Universe with Fossil Seeding** naturally reproduces the observed red tilt ($n_s \approx 0.96$) while suppressing gravitational waves ($r \approx 0$).

---

## 4. The Core Mechanism: Dimensional Exclusion

Why is the universe mostly Dark Energy?



Imagine a 2D sheet (a string worldsheet) trying to fill a 6D box.
1.  **Coupled Dimensions (2):** The sheet can bend and vibrate along its own directions. This energy corresponds to **Matter** (Particles).
2.  **Orthogonal Dimensions (4):** The sheet has zero thickness in the other 4 directions. It cannot "see" or "push" against them. To the string (and us), these dimensions look like empty space with a fixed energy cost. This corresponds to **Dark Energy**.

**Result:** The ratio of Dark Energy to Total Energy is simply the ratio of "Invisible Dimensions" to "Total Dimensions":
$$\Omega_\Lambda = \frac{D_{total} - d_{string}}{D_{total}} = \frac{6-2}{6} = \frac{2}{3}$$

The universe is $2/3$ Dark Energy because strings are $1/3$ the dimensionality of the vacuum.