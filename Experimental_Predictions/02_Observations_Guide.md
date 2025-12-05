# Observation Guide: How to Test the Computational Cosmos

**Date:** December 2025
**Target Audience:** Experimental Physicists & Astronomers
**Purpose:** Specific search parameters for verifying the Schoen-Heterotic Framework.

---

## 1. The Dark Matter Radio (Axion Search)

**The Signal:**
Dark Matter consists of a coherent field of Universal Axions oscillating at a specific frequency determined by the geometry.

* **Target Frequency:** $\nu \approx \mathbf{24 \text{ kHz}}$ (VLF Radio Band).
* **Wavelength:** $\lambda \approx 12.5 \text{ km}$.
* **Bandwidth:** Extremely narrow line ($Q \sim 10^6$) due to cold dark matter velocity dispersion ($\Delta \nu / \nu \sim 10^{-6}$).
* **Signal Type:** A persistent, monochromatic "hum." It behaves like a classical radio station transmitting strictly at 24 kHz.

**Recommended Instruments:**
* **Do NOT use:** Cavity haloscopes like ADMX (optimized for GHz). They are blind to this signal.
* **DO use:** Lumped-element LC circuits or superconducting sensors.
    * **DM Radio (Dark Matter Radio):** Specifically designed for kHz-MHz.
    * **ABRACADABRA:** Toroidal geometry optimized for low-mass axions.
    * **CASPEr:** NMR-based detection (if coupling involves nuclear spins).

**Scan Strategy:**
Focus integration time on the **10 kHz – 100 kHz** window. A confirmed spike at 24 kHz ($\pm$ theoretical uncertainty) is the smoking gun.

---

## 2. The Neutrino Sector (Oscillation & Mass)

**The Signal:**
The neutrino mass matrix is structured by the geometric eigenvalues of the Schoen manifold.

* **Hierarchy:** **Normal Ordering** ($m_1 < m_2 \ll m_3$). An Inverted Hierarchy falsifies the theory.
* **CP Phase:** $\delta_{CP} \approx \mathbf{270^\circ}$ ($-\pi/2$). Look for maximal difference between neutrino and antineutrino oscillation rates.
* **Mass Ratio:** $\Delta m^2_{sol} / \Delta m^2_{atm} \approx 0.03$. (Geometric prediction $m_2/m_3 \approx 0.175$).

**Recommended Instruments:**
* **DUNE (Deep Underground Neutrino Experiment):** Will definitively measure the hierarchy and CP phase.
* **Hyper-Kamiokande:** Will measure the CP phase with high precision.
* **Project 8 / KATRIN:** Direct mass measurement. We predict $m_\beta < 0.1$ eV (near the floor).

---

## 3. Proton Decay (The Stability Test)

**The Signal:**
The proton is unstable, but the decay is mediated by Gauge Bosons (Dimension 6 operators), not Supersymmetric Scalars (Dimension 5).

* **Dominant Mode:** $\mathbf{p \to e^+ \pi^0}$ (The "Gauge" signature).
* **Suppressed Mode:** $p \to K^+ \bar{\nu}$ (The "SUSY" signature).
* **Lifetime:** $\tau_p > 10^{35}$ years.

**Search Strategy:**
If **Hyper-Kamiokande** sees $p \to K^+ \bar{\nu}$, our "Split Moduli" ($K=5$) stabilization mechanism is wrong. We explicitly predict the dominance of the positron channel due to the 55 TeV scalar mass suppression.

---

## 4. Cosmology (The Horizon Scan)

**The Signal:**
The universe is expanding according to the mechanics of Moduli Evolution and a Planck Floor Bounce.

* **Hubble Constant:** Expect $H_0 \approx \mathbf{71.1 \text{ km/s/Mpc}}$.
    * **Test:** Calibrate the Tip of the Red Giant Branch (TRGB) and Cepheids (JWST) against the expansion history (Euclid).
* **Primordial B-Modes:** Expect **Null Result** ($r \approx 0$).
    * **Test:** **LiteBIRD** or **CMB-S4**. Any detection of $r > 0.01$ (Inflationary Gravitational Waves) falsifies the Bounce.
* **Dark Energy EOS:** Expect $w \approx \mathbf{-1.05}$.
    * **Test:** **Euclid** and **Nancy Grace Roman**. Look for a slight phantom equation of state, indicating geometric floor pressure rather than a vacuum constant.

---

## 5. The Collider Frontier (LHC & Future)

**The Signal:**
Supersymmetry exists but is "Split." Scalars are heavy; Fermions are light.

* **Do NOT look for:** Squarks or Sleptons below 5 TeV. You will not find them.
* **DO look for:** **Gluinos** (the superpartner of the gluon) in the **2 TeV** range.
* **Signature:** Long-lived particles or displaced vertices are possible if the gluino decay is suppressed.
* **Higgs Precision:** The Higgs mass ($125$ GeV) is precise. Any deviation implies the 55 TeV stop mass calculation needs refinement.

---

## Summary of Targets

| Experiment | Target Observable | Prediction |
| :--- | :--- | :--- |
| **DM Radio** | Axion Frequency | **24 kHz** |
| **DUNE** | Neutrino Hierarchy | **Normal** |
| **Hyper-K** | Proton Decay Mode | **$p \to e^+ \pi^0$** |
| **LiteBIRD** | Tensor Ratio ($r$) | **$\approx 0$** |
| **Euclid** | Dark Energy EOS ($w$) | **-1.05** |
| **HL-LHC** | Gluino Mass | **~2 TeV** |

**Note to Experimentalists:**
This theory has **zero free parameters**. We cannot "tune" the Axion mass or the Neutrino hierarchy to fit your data. If you find something else, the theory is dead.
