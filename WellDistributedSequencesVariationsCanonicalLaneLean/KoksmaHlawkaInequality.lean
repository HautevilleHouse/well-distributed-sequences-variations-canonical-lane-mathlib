import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WellDistributedSequencesVariationsCanonicalLaneLean

structure KoksmaHlawkaInequality (U : UniformDistributionSpace) where
  integrandClass : Set (U.underlyingSet → ℝ)
  boundedVariation : Prop
  integralErrorBound : Prop
  discrepancyFactor : Prop
  inequalityHolds : Prop
  inequalityHoldsTerm : inequalityHolds

def KoksmaHlawkaInequalityClosed {U : UniformDistributionSpace} (K : KoksmaHlawkaInequality U) : Prop :=
  K.inequalityHolds

end WellDistributedSequencesVariationsCanonicalLaneLean
end HautevilleHouse
