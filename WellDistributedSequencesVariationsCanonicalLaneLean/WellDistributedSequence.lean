import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WellDistributedSequencesVariationsCanonicalLaneLean

structure WellDistributedSequence (U : UniformDistributionSpace) where
  indexSet : ℕ → U.underlyingSet
  limitDistribution : U.sigmaAlgebra → ℝ
  equidistributionCondition : Prop
  limitExists : Prop
  limitExistsTerm : limitExists

def WellDistributedSequenceClosed {U : UniformDistributionSpace} (W : WellDistributedSequence U) : Prop :=
  W.equidistributionCondition ∧ W.limitExists

end WellDistributedSequencesVariationsCanonicalLaneLean
end HautevilleHouse
