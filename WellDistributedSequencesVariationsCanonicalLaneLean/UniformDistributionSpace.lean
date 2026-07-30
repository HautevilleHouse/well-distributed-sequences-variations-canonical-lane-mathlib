import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WellDistributedSequencesVariationsCanonicalLaneLean

structure UniformDistributionSpace where
  underlyingSet : Type u
  sigmaAlgebra : Set (Set underlyingSet)
  measure : sigmaAlgebra → ℝ≥0∞
  probabilityMeasure : Prop
  measureSpace : MeasureSpace underlyingSet
  probabilityMeasureTerm : probabilityMeasure

def UniformDistributionSpaceClosed (U : UniformDistributionSpace) : Prop :=
  U.probabilityMeasure

end WellDistributedSequencesVariationsCanonicalLaneLean
end HautevilleHouse
