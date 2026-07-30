import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WellDistributedSequencesVariationsCanonicalLaneLean

structure DiscrepancyMeasure (U : UniformDistributionSpace) where
  finiteSamples : ℕ → Finset U.underlyingSet
  maximalDeviation : ℝ
  starDiscrepancy : ℝ
  L2Discrepancy : ℝ
  starBound : Prop
  starBoundTerm : starBound

def DiscrepancyMeasureClosed {U : UniformDistributionSpace} (D : DiscrepancyMeasure U) : Prop :=
  D.starBound

end WellDistributedSequencesVariationsCanonicalLaneLean
end HautevilleHouse
