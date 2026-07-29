import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesTheoremCanonicalLaneLean

structure DistributionEndpointPackage where
  targetSet : Set ℕ
  targetDensity : ℝ
  positiveDensity : ℕ → ℝ
  residueClassConstraint : ℕ → Prop
  densityApproximation : ℕ → ℝ
  positiveDensityClosed : positiveDensity = fun n => targetDensity
  residueClassConstraintTerm : ∀ n, residueClassConstraint n → n ∈ targetSet
  densityApproximationTerm : ∀ n, |densityApproximation n - targetDensity| ≤ 1/n

structure DistributionEndpointEvidence (D : DistributionEndpointPackage) where
  positiveDensityClosed : D.positiveDensity = fun n => D.targetDensity
  residueClassConstraintClosed : ∀ n, D.residueClassConstraint n → n ∈ D.targetSet
  densityApproximationClosed : ∀ n, |D.densityApproximation n - D.targetDensity| ≤ 1/n

def DistributionEndpointClosed (D : DistributionEndpointPackage) : Prop :=
  D.positiveDensity = fun n => D.targetDensity ∧
  (∀ n, D.residueClassConstraint n → n ∈ D.targetSet) ∧
  (∀ n, |D.densityApproximation n - D.targetDensity| ≤ 1/n)

theorem distribution_endpoint_closed_from_evidence (D : DistributionEndpointPackage) (E : DistributionEndpointEvidence D) :
    DistributionEndpointClosed D := by
  exact And.intro E.positiveDensityClosed (And.intro E.residueClassConstraintClosed E.densityApproximationClosed)

theorem distribution_endpoint_supplies_density_bound (D : DistributionEndpointPackage) :
    (D.positiveDensity 1) = D.targetDensity := by
  have h := D.positiveDensityClosed
  rw [h]
  rfl

end DistributionIntegersSpecialResidueClassesTheoremCanonicalLaneLean
end HautevilleHouse