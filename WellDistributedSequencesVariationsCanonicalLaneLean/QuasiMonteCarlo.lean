import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WellDistributedSequencesVariationsCanonicalLaneLean.LowDiscrepancySequence

namespace HautevilleHouse
namespace WellDistributedSequencesVariationsCanonicalLaneLean

structure QuasiMonteCarlo (U : UniformDistributionSpace) where
  integrand : U.underlyingSet → ℝ
  approximation : ℝ
  errorBound : ℝ
  convergenceRate : Prop
  errorBoundTerm : errorBound

def QuasiMonteCarloClosed {U : UniformDistributionSpace} (Q : QuasiMonteCarlo U) : Prop :=
  Q.errorBound ∧ Q.convergenceRate

end WellDistributedSequencesVariationsCanonicalLaneLean
end HautevilleHouse
