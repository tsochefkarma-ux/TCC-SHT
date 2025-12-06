# Geometric Origin of the Quadratic Coefficients

**Status:** Speculative / Under Investigation  
**Date:** December 2025

---

## The Observation

A numerical constant A ≈ 0.27693 emerges when comparing the Keller-Lukic WP factor to the Sage implementation of the Schoen manifold's Weil-Petersson metric. This constant satisfies:

$$A^2 + 25A = 7$$

**Question:** Why 25 and 7? Are these arbitrary, or do they have geometric meaning?

---

## The Finding

The coefficients appear to derive from the topology of the Schoen manifold.

### The Formula

$$A^2 + (3h + \chi)A - \chi = 0$$

where:
- **h = 6** — total Hodge number (h¹¹ + h²¹ = 3 + 3)
- **χ = 7** — Euler characteristic of divisor D = D₁ − 2D₂ − 3D₃

This gives:
- Coefficient of A: 3(6) + 7 = **25** ✓
- Constant term: −7 → equation becomes A² + 25A = **7** ✓

---

## Verification

### The Divisor χ = 7

Using the Riemann-Roch formula for CY3:

$$\chi(D) = \frac{D^3}{6} + \frac{c_2 \cdot D}{12}$$

For D = D₁ − 2D₂ − 3D₃ with intersection data (κ₁₂₃ = 9, κ₂₂₃ = 3, κ₂₃₃ = 3) and c₂ = [24, 24, 0]:

| Quantity | Value |
|----------|-------|
| D³ | 54 |
| c₂ · D | −24 |
| χ(D) = 54/6 + (−24)/12 | **7** ✓ |

### The Factor of 3

The coefficient 3h appears rather than h. Possible origins:
- h¹¹ = h²¹ = 3 (self-mirror property)
- The ℤ₃ quotient structure
- κ₁₂₃ − κ₂₂₃ − κ₂₃₃ = 9 − 3 − 3 = 3

---

## Open Questions

1. **Why this divisor?** What makes D = D₁ − 2D₂ − 3D₃ geometrically special?

2. **Why factor 3?** Is 3h = 3(h¹¹ + h²¹) related to the self-mirror property or the ℤ₃ symmetry?

3. **Uniqueness:** Is this the only divisor with χ = 7, or part of a family?

4. **Connection to WP metric:** How does this divisor relate to the normalization comparison that produced A?

---

## Implications

If this identity is correct, then:

- **25 and 7 are not arbitrary** — they encode topology
- **A is determined by** Hodge numbers + divisor geometry
- **The quadratic structure** may reflect an underlying algebraic relation in period geometry

This would elevate the observation from "numerical coincidence" to "geometric theorem."

---

## Computational Verification

```python
import numpy as np

# Schoen manifold data
h = 6  # h^{1,1} + h^{2,1} = 3 + 3
chi = 7  # χ(D) for D = D_1 - 2D_2 - 3D_3

# Predicted coefficients
b = 3*h + chi  # = 25
c = chi        # = 7

# Solve A² + bA - c = 0
A = (-b + np.sqrt(b**2 + 4*c)) / 2
print(f"A = {A:.6f}")  # 0.276932

# Verify
print(f"A² + 25A - 7 = {A**2 + 25*A - 7:.10f}")  # ≈ 0
```

---

## Status

| Component | Verified | Understood |
|-----------|----------|------------|
| χ(D) = 7 | ✓ | Riemann-Roch |
| 3h + χ = 25 | ✓ | Numerically |
| Why factor 3 | — | Open |
| Why this D | — | Open |
| Connection to WP | — | Open |

---

## Next Steps

1. Investigate whether the divisor D has special geometric meaning (e.g., ample, nef, extremal)
2. Check if the factor 3 relates to ℤ₃ monodromy
3. Consult literature on distinguished divisors on Schoen manifold
4. Consider whether this could be formulated as a theorem

---

*This document records a speculative finding. Independent verification required.*
