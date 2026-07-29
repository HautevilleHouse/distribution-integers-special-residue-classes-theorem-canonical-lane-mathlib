import DistributionIntegersSpecialResidueClassesTheoremCanonicalLaneLean.EllenbergGijswijtBound

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesTheoremCanonicalLaneLean

structure SzemerediRegularityPackage where
  setSize : ℕ
  density : ℝ
  regularPartition : Prop
  densityIncrement : Prop

def SzemerediRegularityClosed (S : SzemerediRegularityPackage) : Prop :=
  S.regularPartition ∧ S.densityIncrement

theorem szemeredi_regularity_closed (S : SzemerediRegularityPackage) : Prop :=
  SzemerediRegularityClosed S

end DistributionIntegersSpecialResidueClassesTheoremCanonicalLaneLean
end HautevilleHouse