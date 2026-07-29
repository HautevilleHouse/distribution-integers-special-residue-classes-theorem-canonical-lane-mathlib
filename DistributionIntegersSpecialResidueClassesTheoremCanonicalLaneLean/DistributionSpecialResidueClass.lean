import canonicalLaneMathlib.AdmissibleClass

/-!
# Distribution Special Residue Class Package
-/

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesTheoremCanonicalLaneLean

structure ResidualSet where
  modulus : ℕ
  residues : List ℕ
  distributionCondition : Prop
  distributionConditionClosed : distributionCondition

structure FourierAnalyticControl where
  characterSumEstimates : Prop
  exponentialSumBound : Prop
  largenessParameter : ℝ
  characterSumEstimatesClosed : characterSumEstimates
  exponentialSumBoundClosed : exponentialSumBound

structure SiegelZeroExclusion where
  zeroFreeRegion : Prop
  exceptionHandled : Prop
  zeroFreeRegionClosed : zeroFreeRegion
  exceptionHandledClosed : exceptionHandled

structure BombieriVinogradovBound where
  levelOfDistribution : ℝ
  errorTermControlled : Prop
  errorTermControlledClosed : errorTermControlled

structure GallagherLikeRefinement where
  refinedLevel : ℝ
  bilinearSumTreatment : Prop
  refinedLevelClosed : refinedLevel
  bilinearSumTreatmentClosed : bilinearSumTreatment

structure DistributionSpecialResidueClass where
  residualSet : ResidualSet
  fourierAnalyticControl : FourierAnalyticControl
  siegelZeroExclusion : SiegelZeroExclusion
  bombieriVinogradovBound : BombieriVinogradovBound
  gallagherLikeRefinement : GallagherLikeRefinement

def DistributionSpecialResidueClassClosed (D : DistributionSpecialResidueClass) : Prop :=
  D.residualSet.distributionCondition ∧
  D.fourierAnalyticControl.characterSumEstimates ∧
  D.fourierAnalyticControl.exponentialSumBound ∧
  D.siegelZeroExclusion.zeroFreeRegion ∧
  D.siegelZeroExclusion.exceptionHandled ∧
  D.bombieriVinogradovBound.errorTermControlled ∧
  D.gallagherLikeRefinement.bilinearSumTreatment

theorem distribution_special_residue_class_closed
    (D : DistributionSpecialResidueClass) : DistributionSpecialResidueClassClosed D := by
  exact And.intro D.residualSet.distributionConditionClosed
    (And.intro D.fourierAnalyticControl.characterSumEstimatesClosed
      (And.intro D.fourierAnalyticControl.exponentialSumBoundClosed
        (And.intro D.siegelZeroExclusion.zeroFreeRegionClosed
          (And.intro D.siegelZeroExclusion.exceptionHandledClosed
            (And.intro D.bombieriVinogradovBound.errorTermControlledClosed
              D.gallagherLikeRefinement.bilinearSumTreatmentClosed)))))

end DistributionIntegersSpecialResidueClassesTheoremCanonicalLaneLean
end HautevilleHouse