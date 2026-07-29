import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesTheoremCanonicalLaneLean

structure ResidueClassPackage where
  modulus : ℕ
  residues : List ℕ
  coveringProperty : Prop
  disjointness : Prop
  completeness : Prop

structure ResidueClassEvidence (R : ResidueClassPackage) where
  coveringPropertyClosed : R.coveringProperty
  disjointnessClosed : R.disjointness
  completenessClosed : R.completeness

def ResidueClassClosed (R : ResidueClassPackage) : Prop :=
  R.coveringProperty ∧ R.disjointness ∧ R.completeness

theorem residue_class_closed_from_evidence (R : ResidueClassPackage) (E : ResidueClassEvidence R) :
    ResidueClassClosed R := by
  exact And.intro E.coveringPropertyClosed (And.intro E.disjointnessClosed E.completenessClosed)

end DistributionIntegersSpecialResidueClassesTheoremCanonicalLaneLean
end HautevilleHouse
