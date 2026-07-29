import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesTheoremCanonicalLaneLean

structure DistributionIntegersTheoremPackage (R : ResidueClassPackage) where
  densityPositive : Prop
  infiniteMembers : Prop
  arithmeticProgressionsCovered : Prop

structure DistributionIntegersTheoremEvidence {R : ResidueClassPackage} (D : DistributionIntegersTheoremPackage R) where
  densityPositiveClosed : D.densityPositive
  infiniteMembersClosed : D.infiniteMembers
  arithmeticProgressionsCoveredClosed : D.arithmeticProgressionsCovered

def DistributionIntegersTheoremClosed {R : ResidueClassPackage} (D : DistributionIntegersTheoremPackage R) : Prop :=
  D.densityPositive ∧ D.infiniteMembers ∧ D.arithmeticProgressionsCovered

theorem distribution_integers_theorem_closed_from_evidence
    {R : ResidueClassPackage} (D : DistributionIntegersTheoremPackage R) (E : DistributionIntegersTheoremEvidence D) :
    DistributionIntegersTheoremClosed D := by
  exact And.intro E.densityPositiveClosed (And.intro E.infiniteMembersClosed E.arithmeticProgressionsCoveredClosed)

end DistributionIntegersSpecialResidueClassesTheoremCanonicalLaneLean
end HautevilleHouse
