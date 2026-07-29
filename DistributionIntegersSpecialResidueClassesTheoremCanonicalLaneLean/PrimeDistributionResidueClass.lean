import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesTheoremCanonicalLaneLean

structure PrimeResidueClassStructure where
  modulus : ℕ
  residue : ℕ
  residueCoprime : residue.Coprime modulus
  infinitePrimesInClass : Prop
  dirichletLFunction : Type u
  zeroFreeRegion : Prop
  analyticContinuation : Prop
  nonvanishingAtOne : Prop
  infinitePrimesInClassTerm : infinitePrimesInClass
  zeroFreeRegionTerm : zeroFreeRegion
  analyticContinuationTerm : analyticContinuation
  nonvanishingAtOneTerm : nonvanishingAtOne

structure PrimeResidueClassEvidence (P : PrimeResidueClassStructure) where
  infinitePrimesInClassClosed : P.infinitePrimesInClass
  zeroFreeRegionClosed : P.zeroFreeRegion
  analyticContinuationClosed : P.analyticContinuation
  nonvanishingAtOneClosed : P.nonvanishingAtOne

def PrimeResidueClassClosed (P : PrimeResidueClassStructure) : Prop :=
  P.infinitePrimesInClass ∧ P.zeroFreeRegion ∧ P.analyticContinuation ∧ P.nonvanishingAtOne

theorem prime_residue_class_closed_from_evidence (P : PrimeResidueClassStructure) (E : PrimeResidueClassEvidence P) :
    PrimeResidueClassClosed P := by
  exact And.intro E.infinitePrimesInClassClosed (And.intro E.zeroFreeRegionClosed (And.intro E.analyticContinuationClosed E.nonvanishingAtOneClosed))

end DistributionIntegersSpecialResidueClassesTheoremCanonicalLaneLean
end HautevilleHouse