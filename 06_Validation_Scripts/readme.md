# Validation Scripts
## The Mathematical Engine

**Focus:** Reproducible Code, Geometric Verification, and Numerical Checks.
**Tools:** Python 3 (Standard Model) and SageMath (Toric Geometry).
**Status:** **Green** (All scripts pass current theoretical constraints).

---

## 1. Overview

A theoretical framework is only as good as its ability to generate specific, testable numbers. This directory contains the source code used to derive the "Golden Numbers" of the Computational Cosmos framework.

We do not ask you to trust our text files. We ask you to **run the code**.

---

## 2. File Guide

### [`verify_theory.py`](./verify_theory.py)
**The Physics Calculator.**
* **Language:** Python 3 (Requires `numpy`).
* **Input:** The topological invariants of the Schoen Manifold ($D=6$, $h_{tot}=6$, $\kappa_{ijk}=(9,3,3)$).
* **Output:**
    * Fine Structure Constant ($1/\alpha \approx 137$)
    * Lepton Mass Ratio ($207$)
    * Cosmological Energy Budget ($12:5:1$)
    * SUSY Breaking Scale ($280$ TeV)
* **Goal:** To verify that the Standard Model parameters appear naturally from integer geometric inputs.

### [`verify_schoen_geometry.sage`](./verify_schoen_geometry.sage)
**The Geometric Proof.**
* **Language:** SageMath.
* **Input:** The intersection polynomial of the fiber product $dP_9 \times_{P^1} dP_9$.
* **Output:** The eigenvalues of the scalar potential Hessian.
* **Key Verification:**
    1.  **Hubble Tension:** It confirms the moduli space is **Anisotropic** (Stiffness ratio $\approx 0.5$), providing the mechanism for $w_{DM} \approx -0.14$.
    2.  **Alpha-Omega Check:** It **falsifies** the speculative hypothesis that $\alpha_{GUT} \equiv \Omega_k$, proving the theory is rigorous enough to rule out incorrect guesses.

### [`validation_log.txt`](./validation_log.txt)
**The Receipt.**
* A timestamped log of a successful run of the verification suite.
* Contains the exact numerical outputs for reference.


### (./validation_log.txt](https://github.com/tsochefkarma-ux/TCC-SHT/tree/main/06_Validation_Scripts/sagescripts)
**The Sage Code For Verification.**
* A compliation of a bunch of SageMath code I used for verification on Ubuntu.
* Contains how we found A and test WP, Eigenvalues, etc etc.


---

## 3. How to Run the Validations

### Prerequisites
* **Python 3** with NumPy: `pip install numpy`
* **SageMath:** [Installation Guide](https://doc.sagemath.org/html/en/installation/index.html) (or run in a CoCalc notebook).

### Step 1: Verify the Constants (Python)
This checks the Particle Physics and Cosmology numbers.
```bash
python3 verify_theory.py
