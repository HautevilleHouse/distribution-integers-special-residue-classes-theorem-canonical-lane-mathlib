import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesTheoremCanonicalLaneLean

structure ResidueClassSet where
  modulus : ℕ
  residues : List ℕ
  completeSystem : Prop

structure DistributionIntegersObject where
  residueClassSet : ResidueClassSet
  specialDistribution : Prop
  distributionClosed : specialDistribution

end DistributionIntegersSpecialResidueClassesTheoremCanonicalLaneLean
end HautevilleHouse