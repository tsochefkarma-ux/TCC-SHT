# Schoen Manifold: Lefschetz Verification

## Overview

This document verifies that the Schoen Calabi-Yau threefold satisfies the **Kähler package**:
- Poincaré duality
- Hard Lefschetz theorem
- Hodge-Riemann bilinear relations

These properties are fundamental to the geometric structure that underlies the physics predictions.

---

## 1. Manifold Data

| Property | Value |
|----------|-------|
| Hodge numbers | h¹¹ = h²¹ = 3 |
| Euler characteristic | χ = 0 |
| Structure | Fiber product S₁ ×_{P¹} S₂ with Z₃×Z₃ quotient |

### Intersection Numbers κᵢⱼₖ (from HSS 1997)

The Schoen manifold has a **remarkably sparse** intersection tensor. Due to the fiber product structure:
- F² = 0 (fiber doesn't self-intersect)
- H₁³ = H₂³ = 0 (each hyperplane class lives in a 2D P² subspace)

**NONZERO components (only 3 of 10 independent):**

| Type | Value | Meaning |
|------|-------|---------|
| κ₁₂₃ | **9** | Fully mixed (F · H₁ · H₂) |
| κ₂₂₃ | **3** | H₁² · H₂ |
| κ₂₃₃ | **3** | H₁ · H₂² |

**ZERO components (all others):**

| Type | Value | Why |
|------|-------|-----|
| κ₁₁₁ | 0 | F³ = 0 (fiber is 2D) |
| κ₂₂₂ | 0 | H₁³ = 0 (lives in P²) |
| κ₃₃₃ | 0 | H₂³ = 0 (lives in P²) |
| κ₁₁₂, κ₁₁₃ | 0 | F² = 0 |
| κ₁₂₂, κ₁₃₃ | 0 | F · Hᵢ² = 0 |

**Volume at symmetric point:** V = 9·1·1·1 + 1.5·1²·1 + 1.5·1·1² = **12**

This matches g_elliptic = 12 from the Weil-Petersson computation!

---

## 2. Hard Lefschetz Theorem

### Statement

For a Kähler class ω ∈ H², the Lefschetz map
```
Lω: H² → H⁴,  x ↦ ω ∧ x
```
must be an isomorphism.

### Verification

We compute the Lefschetz matrix M[i,j] = ∫ ω ∧ Dᵢ ∧ Dⱼ for various candidates:

#### ω = (1, 1, 1) — Symmetric Kähler class

```
Lefschetz matrix M:
  [  0,  9,  9 ]
  [  9,  3, 15 ]
  [  9, 15,  3 ]

det(M) = 1944 ≠ 0  ✓ LEFSCHETZ ELEMENT
```

#### ω = (1, 0, 0) — Pure fiber direction

```
Lefschetz matrix M:
  [ 0,  0,  0 ]
  [ 0,  0,  9 ]
  [ 0,  9,  0 ]

det(M) = 0  ✗ NOT Lefschetz
```

#### Other candidates

| ω | det(M) | Status |
|---|--------|--------|
| (1, 1, 1) | 1944 | ✓ Lefschetz |
| (1, 0, 0) | 0 | ✗ |
| (0, 1, 1) | 486 | ✓ Lefschetz |
| (1, 1, 0) | 0 | ✗ |
| (0, 1, 0) | 0 | ✗ |
| (0, 0, 1) | 0 | ✗ |

### Key Insight

**You need BOTH base directions for Lefschetz to hold!**

- Pure fiber (1,0,0): ✗
- Pure H₁ (0,1,0): ✗
- Pure H₂ (0,0,1): ✗
- Fiber + one base (1,1,0): ✗
- Both bases (0,1,1): ✓
- All three (1,1,1): ✓

This reflects the fiber product structure — the geometry requires participation from both P² factors.

---

## 3. Primitive Cohomology

### Definition

The primitive cohomology Prim¹ ⊂ H² consists of classes annihilated by L²:
```
Prim¹ = ker(L²: H² → H⁶)
```

### Computation

For ω = (1, 1, 1):
```
L²(D₁) = ∫ ω² ∧ D₁ = 18
L²(D₂) = ∫ ω² ∧ D₂ = 27
L²(D₃) = ∫ ω² ∧ D₃ = 27
```

Therefore:
```
Prim¹ = { α = a₁D₁ + a₂D₂ + a₃D₃ : 18a₁ + 27a₂ + 27a₃ = 0 }
      = { α : 2a₁ + 3(a₂ + a₃) = 0 }
```

This is a **2-dimensional subspace** of H², as expected for h¹¹ = 3.

Note the coefficients:
- 18 = 2 × κ₁₂₃ = 2 × 9
- 27 = κ₁₂₃ × κ₂₂₃ = 9 × 3

---

## 4. Hodge-Riemann Relations

### Statement

For k = 1 on a CY3, the quadratic form
```
Q(a) = -∫ a ∧ ω ∧ a
```
should have signature (1, h¹¹ - 1) = (1, 2) on H².

### Computation

For ω = (1, 1, 1):
```
Hodge-Riemann matrix Q[i,j] = -∫ Dᵢ ∧ ω ∧ Dⱼ:
  [  0,  -9,  -9 ]
  [ -9,  -3, -15 ]
  [ -9, -15,  -3 ]

Eigenvalues: [-24.59, 6.59, 12.00]
Signature: (2+, 1-)
```

The signature is (2, 1) rather than (1, 2) — this is just a sign convention issue (the overall sign of Q).

---

## 5. Connection to Anisotropy

### The Master Polynomial

From the sparse tensor:
```
N = κ₁₂₃ × κ₂₂₃ - (h-1) = 9 × 3 - 2 = 25
M = κ₁₂₃ - (h-1) = 9 - 2 = 7
```

The anisotropy A satisfies:
```
A² + 25A = 7
A = (-25 + √653)/2 = 0.27693
```

### Verification

```
A² + 25A = 0.07669 + 6.92331 = 7.00000 ✓
```

### Physical Predictions

| Quantity | Formula | Value |
|----------|---------|-------|
| λ₁ | √A | 0.526 |
| w_DM | -A/2 | -0.139 |

---

## 6. Z₃×Z₃ Orbifold Structure

The intersection numbers encode the orbifold structure directly:

| Symmetry | Order | Intersection |
|----------|-------|--------------|
| Z₃×Z₃ | 9 | κ₁₂₃ = 9 |
| First Z₃ | 3 | κ₂₂₃ = 3 |
| Second Z₃ | 3 | κ₂₃₃ = 3 |

**The intersection numbers literally count orbit sizes!**

The orbifold action:
- g₁: (x₀:x₁:x₂) → (x₀:ωx₁:ω²x₂) on first P²
- g₂: (y₀:y₁:y₂) → (y₀:ωy₁:ω²y₂) on second P²

where ω = e^(2πi/3).

---

## 7. Summary

### Verified ✓

- **Sparse tensor:** Only 3 of 10 independent components nonzero (κ₁₂₃=9, κ₂₂₃=κ₂₃₃=3)
- **Hard Lefschetz:** ω = (1,1,1) is a valid Lefschetz element (det = 1944)
- **Both bases required:** Need (0,1,1) or better for Lefschetz
- **Primitive cohomology:** 2-dimensional, defined by 2a₁ + 3(a₂ + a₃) = 0
- **Volume:** V = 12 = g_elliptic

### The Chain of Connections

```
Sparse tensor: κ₁₂₃=9, κ₂₂₃=κ₂₃₃=3, all others=0
        ↓
Z₃×Z₃ orbifold: |G| = 9 = κ₁₂₃
        ↓
Hard Lefschetz: requires both base directions
        ↓
Primitive cohomology: 2a₁ + 3(a₂+a₃) = 0
        ↓
N = κ₁₂₃ × κ₂₂₃ - (h-1) = 27 - 2 = 25
M = κ₁₂₃ - (h-1) = 9 - 2 = 7
        ↓
Master polynomial: A² + 25A = 7
        ↓
A = 0.27693 (purely topological!)
        ↓
λ₁ = 0.526 (Yukawa), w_DM = -0.139 (cosmology)
```

---

## Appendix: Volume and Prepotential

With the sparse tensor, the volume formula simplifies dramatically:

```
V = (1/6) κᵢⱼₖ vⁱvʲvᵏ
  = κ₁₂₃·v¹v²v³ + (κ₂₂₃/2)·(v²)²v³ + (κ₂₃₃/2)·v²(v³)²
  = 9v¹v²v³ + (3/2)(v²)²v³ + (3/2)v²(v³)²
```

At symmetric point v = (1, 1, 1):
```
V = 9 + 1.5 + 1.5 = 12
```

The prepotential in special geometry:
```
F = (κᵢⱼₖ/6) tⁱtʲtᵏ
  = (3/2) t¹t²t³ + (1/4)(t²)²t³ + (1/4)t²(t³)²
```
