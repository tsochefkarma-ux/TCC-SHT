# Standard Model Derivations
## From Geometric Topology to Particle Physics

**Focus:** Mass Ratios, Gauge Couplings, and Flavor Structure.
**Input Geometry:** Schoen Manifold ($Z_3 \times Z_3$ quotient).
**Free Parameters:** Zero.

---

## 1. Overview

This directory contains the rigorous derivations of the Standard Model's parameters. In standard physics, these numbers (like the Fine Structure Constant or the Muon mass) are experimental inputs measured in a lab. In the **Computational Cosmos** framework, they are geometric outputs derived from the topology of the compact dimensions ($K_6$).

We demonstrate that the "random" constants of nature are actually integer counts of topological features (Flux, Cycles, and Roots).

---

## 2. Summary of Derived Constants

The following values are derived in the files within this directory:

| Quantity | Symbol | Formula (Geometric Origin) | Derived Value | Observed | Error |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **GUT Coupling** | $\alpha_{GUT}$ | $1/N$ (Flux Count) | **0.04** | 0.04 | Exact |
| **Fine Structure** | $1/\alpha$ | $6N - 13$ (Vacuum Deficit) | **137** | 137.036 | < 0.1% |
| **Lepton Ratio** | $m_\mu/m_e$ | $(D_{bos} \times D_{fer}) - 1$ | **207** | 206.77 | 0.1% |
| **Weak Angle** | $\sin^2\theta_W$ | Elliptic Modulus Ratio | **0.231** | 0.231 | Exact |
| **Generations** | $N_g$ | $|\chi|/2$ (Bundle Topology) | **3** | 3 | Exact |

---

## 3. File Guide


### [`01_Gauge_Couplings.md`](./01_Gauge_Couplings.md)
**The Strength.**
* Derives the Unified Gauge Coupling ($\alpha_{GUT} = 0.04$) from the number of active flux channels ($N=25$).
* Derives the Fine Structure Constant ($1/\alpha \approx 137$) by accounting for the vacuum energy deficit ($D_{crit}/2 = 13$) in the bulk volume.

### [`02_Lepton_Masses.md`](./02_Lepton_Masses.md)
**The Electron and Muon.**
* Identifies the famous "207" mass ratio as the dimension of the **Heterotic Product Space**.
* The Muon couples to the full vacuum bulk ($26 \times 8 - 1 = 207$ degrees of freedom), while the Electron is the ground state (1).

### [`03_Quark_Flavor_Structure.md`](./03_Quark_Flavor_Structure.md)
**The CKM Matrix & Hierarchies.**
* Explains the quark mass hierarchy (Top $\gg$ Charm $\gg$ Up) using **Discrete $Z_3$ Symmetries**.
* The fermions are located at fixed points in the orbifold; their mass scales are determined by their $Z_3$ charges ($q=0, 1, 2$), which forbid certain couplings and enforce suppression factors ($\lambda^2, \lambda^4$).

### [`04_Neutrino_Sector.md`](./04_Neutrino_Sector.md)
**The Ghost Particles.**
* Predicts the **Normal Hierarchy** ($m_1 < m_2 \ll m_3$).
* Derives the absolute mass scale from the See-Saw mechanism on the Schoen geometry.
* Predicts the neutrino mass ratio $m_2/m_3 \approx 0.175$.

### [`05_Origin_of_the_Forces.md`](./05_Origin_of_the_Forces.md)
**The Architecture.**
* Explains *why* the forces are $SU(3) \times SU(2) \times U(1)$.
* **Strong Force ($SU(3)$):** Arises from the 3 Kähler Moduli locked by $Z_3$ symmetry ($T_1=T_2=T_3$).
* **Weak Force ($SU(2)$):** Arises from the $Z_2$ involution of the Elliptic Fiber.
* **Proton Decay:** Predicts the Gauge Mode ($p \to e^+ \pi^0$) dominates because SUSY scalars are heavy (280 TeV).

---

## 4. The Mechanism: How Geometry Creates Mass

The central insight of these derivations is **Intersection Theory**.
* In String Theory, particles are strings vibrating at intersection points of internal cycles.
* The "Interaction Strength" (Yukawa coupling) is determined by the overlap of the wavefunctions at these intersections.
* On the Schoen Manifold, the **Intersection Tensor** ($\kappa_{ijk}$) dictates these overlaps exactly.
    * $\kappa_{123} = 9$ (High overlap $\to$ Top Quark)
    * $\kappa_{223} = 3$ (Medium overlap $\to$ Charm Quark)
    * Zeros in the tensor (70% sparse) create **Texture Zeros** in the mass matrices, preventing mixing and creating stability.

We are not fitting parameters to data. We are calculating the intersection area of 6D cycles and finding that they match the masses of elementary particles.
