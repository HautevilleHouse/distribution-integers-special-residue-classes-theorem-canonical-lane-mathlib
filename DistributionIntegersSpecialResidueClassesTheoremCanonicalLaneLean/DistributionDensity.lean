import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesTheoremCanonicalLaneLean

structure DistributionDensity where
  targetProportion : ℝ
  lowerBound : ℝ
  upperBound : ℝ
  densityBoundsClosed : lowerBound ≤ targetProportion ∧ targetProportion ≤ upperBound

def DistributionDensityClosed (D : DistributionDensity) : Prop :=
  D.lowerBound ≤ D.targetProportion ∧ D.targetProportion ≤ D.upperBound

theorem distribution_density_closed_from_evidence (D : DistributionDensity) : DistributionDensityClosed D :=
  D.densityBoundsClosed

end DistributionIntegersSpecialResidueClassesTheoremCanonicalLaneLean
end HautevilleHouse
