import canonicalLaneMathlib.AdmissibleClass

/-!
# Endpoint Classification Package
-/

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesTheoremCanonicalLaneLean

structure EndpointClassificationPackage where
  targetSet : Set ℕ
  specialResidueCondition : Prop
  distributionWidth : ℝ
  specialResidueConditionClosed : specialResidueCondition
  distributionWidthPositive : distributionWidth > 0

structure EndpointClassificationEvidence (E : EndpointClassificationPackage) where
  specialResidueConditionClosed : E.specialResidueCondition

def EndpointClassificationClosed (E : EndpointClassificationPackage) : Prop :=
  E.specialResidueCondition

theorem endpoint_classification_closed_from_evidence
    (E : EndpointClassificationPackage) (ev : EndpointClassificationEvidence E) :
    EndpointClassificationClosed E := by
  exact ev.specialResidueConditionClosed

theorem endpoint_classification_supplies_statement
    (E : EndpointClassificationPackage) : E.distributionWidth > 0 :=
  E.distributionWidthPositive

end DistributionIntegersSpecialResidueClassesTheoremCanonicalLaneLean
end HautevilleHouse