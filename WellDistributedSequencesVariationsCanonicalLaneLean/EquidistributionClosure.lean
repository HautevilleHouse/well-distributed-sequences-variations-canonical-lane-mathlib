import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WellDistributedSequencesVariationsCanonicalLaneLean

structure EquidistributionClosurePackage where
  sequence : Type u
  targetSpace : Type v
  topologyTarget : TopologicalSpace targetSpace
  measureTarget : MeasureTheory.Measure targetSpace
  limitMeasure : MeasureTheory.Measure targetSpace
  equidistributionHolds : Prop

structure EquidistributionClosureEvidence (P : EquidistributionClosurePackage) where
  equidistributionHoldsClosed : P.equidistributionHolds

def EquidistributionClosureClosed (P : EquidistributionClosurePackage) : Prop :=
  P.equidistributionHolds

theorem equidistribution_closure_closed_from_evidence
    (P : EquidistributionClosurePackage) (E : EquidistributionClosureEvidence P) :
    EquidistributionClosureClosed P := by
  exact E.equidistributionHoldsClosed

end WellDistributedSequencesVariationsCanonicalLaneLean
end HautevilleHouse
