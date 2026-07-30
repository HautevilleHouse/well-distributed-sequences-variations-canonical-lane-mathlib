import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WellDistributedSequencesVariationsCanonicalLaneLean.DiscrepancyMeasure

namespace HautevilleHouse
namespace WellDistributedSequencesVariationsCanonicalLaneLean

structure LowDiscrepancySequence (U : UniformDistributionSpace) where
  sequence : ℕ → U.underlyingSet
  discrepancy : DiscrepancyMeasure U
  asymptoticBound : Prop
  optimalRate : Prop
  asymptoticBoundTerm : asymptoticBound

def LowDiscrepancySequenceClosed {U : UniformDistributionSpace} (L : LowDiscrepancySequence U) : Prop :=
  L.asymptoticBound

end WellDistributedSequencesVariationsCanonicalLaneLean
end HautevilleHouse
