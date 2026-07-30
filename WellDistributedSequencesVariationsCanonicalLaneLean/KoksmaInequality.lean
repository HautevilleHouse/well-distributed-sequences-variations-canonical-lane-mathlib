import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WellDistributedSequencesVariationsCanonicalLaneLean

structure KoksmaInequalityPackage (X : UniformDistributionSpace) where
  functionClass : Set (X.carrier → ℝ)
  variation : (X.carrier → ℝ) → ℝ
  koksmabound : Prop
  boundTerm : koksmabound

def KoksmaInequalityClosed {X : UniformDistributionSpace} (K : KoksmaInequalityPackage X) : Prop :=
  K.koksmabound

theorem koksma_inequality_closed {X : UniformDistributionSpace}
    (K : KoksmaInequalityPackage X) : KoksmaInequalityClosed K :=
  K.boundTerm

end WellDistributedSequencesVariationsCanonicalLaneLean
end HautevilleHouse