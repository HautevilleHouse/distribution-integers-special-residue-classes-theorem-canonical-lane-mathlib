import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesTheoremCanonicalLaneLean

structure SpecialResidueClassesPackage {R : ResidueClassPackage} (D : DistributionIntegersTheoremPackage R) where
  specialModulus : ℕ
  exceptionalResidue : ℕ
  uniformityCondition : Prop
  exceptionalDistribution : Prop

structure SpecialResidueClassesEvidence {R : ResidueClassPackage} {D : DistributionIntegersTheoremPackage R} (S : SpecialResidueClassesPackage D) where
  uniformityConditionClosed : S.uniformityCondition
  exceptionalDistributionClosed : S.exceptionalDistribution

def SpecialResidueClassesClosed {R : ResidueClassPackage} {D : DistributionIntegersTheoremPackage R} (S : SpecialResidueClassesPackage D) : Prop :=
  S.uniformityCondition ∧ S.exceptionalDistribution

theorem special_residue_classes_closed_from_evidence
    {R : ResidueClassPackage} {D : DistributionIntegersTheoremPackage R}
    (S : SpecialResidueClassesPackage D) (E : SpecialResidueClassesEvidence S) :
    SpecialResidueClassesClosed S := by
  exact And.intro E.uniformityConditionClosed E.exceptionalDistributionClosed

end DistributionIntegersSpecialResidueClassesTheoremCanonicalLaneLean
end HautevilleHouse
