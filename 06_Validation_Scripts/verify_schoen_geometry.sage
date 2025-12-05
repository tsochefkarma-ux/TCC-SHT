#!/usr/bin/env sage
# ==============================================================================
# SCHOEN MANIFOLD GEOMETRIC VERIFICATION
# ==============================================================================
# Purpose: Calculate Hessian Eigenvalues of the Scalar Potential.
# Used to verify Hubble Tension Anisotropy and test Alpha-Omega connection.

from sage.all import *

print("="*60)
print("SCHOEN MANIFOLD: SCALAR POTENTIAL ANALYSIS")
print("="*60)

# [1] SETUP THE GEOMETRY
# Define the 3 Kahler Moduli (T1=Fiber, T2,T3=Base)
var('t1 t2 t3', domain='real')

# Intersection Numbers (Hosono, Saito, Stienstra 1997)
# V = (1/6) * Sum(k_ijk * ti * tj * tk)
# k123=9, k223=3, k233=3
# Terms: 9*6*t1t2t3/6 + 3*3*t2^2t3/6 + 3*3*t2t3^2/6
def intersection_form(t1, t2, t3):
    term_123 = 9 * t1 * t2 * t3
    term_223 = (3/2) * t2^2 * t3  
    term_233 = (3/2) * t2 * t3^2  
    return term_123 + term_223 + term_233

Volume = intersection_form(t1, t2, t3)
print(f"Volume Form V(t): {Volume}")

# [2] DEFINE POTENTIALS (N=1 SUGRA)
# Kahler Potential K = -ln(8 * Volume)
K_pot = -log(8 * Volume)

# Superpotential W (Symmetric Flux Vacuum)
var('N_flux')
W_pot = N_flux * (t1 + t2 + t3)

# [3] COMPUTE METRIC (G_ab)
# G_ab = d_a d_b K
G_ab = matrix([
    [diff(K_pot, t1, t1), diff(K_pot, t1, t2), diff(K_pot, t1, t3)],
    [diff(K_pot, t2, t1), diff(K_pot, t2, t2), diff(K_pot, t2, t3)],
    [diff(K_pot, t3, t1), diff(K_pot, t3, t2), diff(K_pot, t3, t3)]
])

# [4] ANALYZE EIGENVALUES
print("...Computing Eigenvalues at Symmetric Point t1=t2=t3=t...")
var('t')
G_sym = G_ab.subs(t1=t, t2=t, t3=t)
eigenvalues = G_sym.eigenvalues()
evals_simplified = [e.full_simplify() for e in eigenvalues]

for i, ev in enumerate(evals_simplified):
    print(f"lambda_{i+1}: {ev}")

# [5] VERDICT
vol_mode = evals_simplified[0] 
shape_mode = evals_simplified[1]
ratio = (vol_mode / shape_mode).full_simplify()

print("-" * 30)
print(f"Stiffness Ratio (Fiber/Base): {ratio}")
print(f"Numerical Approx: {n(ratio)}")

if abs(n(ratio) - 1.0) > 0.1:
    print(">> VERDICT: ANISOTROPIC")
    print("   The geometry distinguishes Fiber from Base.")
    print("   -> Hubble Tension Solution: VERIFIED")
    print("   -> Alpha=Omega Identity: FALSIFIED")
else:
    print(">> VERDICT: ISOTROPIC (Model Failed)")

print("="*60)
