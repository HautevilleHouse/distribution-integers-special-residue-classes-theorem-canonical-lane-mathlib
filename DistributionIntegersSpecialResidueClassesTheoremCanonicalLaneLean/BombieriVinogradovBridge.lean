import DistributionIntegersSpecialResidueClassesTheoremCanonicalLaneLean.SpecialResidueClassesPackage

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesTheoremCanonicalLaneLean

structure BombieriVinogradovPackage where
  residueClassSet : ResidueClassSet
  levelOfDistribution : ℝ
  apErrorBound : Prop
  apErrorBoundTerm : apErrorBound

structure BombieriVinogradovEvidence (B : BombieriVinogradovPackage) where
  levelValid : B.levelOfDistribution > 0 ∧ B.levelOfDistribution ≤ 1
  apErrorBoundClosed : B.apErrorBound

def BombieriVinogradovClosed (B : BombieriVinogradovPackage) : Prop :=
  (B.levelOfDistribution > 0 ∧ B.levelOfDistribution ≤ 1) ∧ B.apErrorBound

theorem bombieri_vinogradov_closed_from_evidence
    (B : BombieriVinogradovPackage) (E : BombieriVinogradovEvidence B) :
    BombieriVinogradovClosed B := by
  exact And.intro E.levelValid E.apErrorBoundClosed

end DistributionIntegersSpecialResidueClassesTheoremCanonicalLaneLean
end HautevilleHouse