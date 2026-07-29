import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesTheoremCanonicalLaneLean

structure DirichletCharacterPackage where
  modulus : ℕ
  character : ℤ → ℂ
  orthogonalityRelation : Prop
  functionalEquation : Prop

structure DirichletCharacterEvidence (D : DirichletCharacterPackage) where
  orthogonalityRelationClosed : D.orthogonalityRelation
  functionalEquationClosed : D.functionalEquation

def DirichletCharacterClosed (D : DirichletCharacterPackage) : Prop :=
  D.orthogonalityRelation ∧ D.functionalEquation

theorem dirichlet_character_closed_from_evidence
    (D : DirichletCharacterPackage) (E : DirichletCharacterEvidence D) :
    DirichletCharacterClosed D := by
  exact And.intro E.orthogonalityRelationClosed E.functionalEquationClosed

end DistributionIntegersSpecialResidueClassesTheoremCanonicalLaneLean
end HautevilleHouse