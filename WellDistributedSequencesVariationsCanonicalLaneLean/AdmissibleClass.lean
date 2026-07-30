import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WellDistributedSequencesVariations

structure WellDistributedSequenceObject (α : Type u) where
  sequence : ℕ → α
  targetType : Type v
  targetTopology : TopologicalSpace targetType
  measureSpace : MeasureSpace targetType
  sequenceMeasureConvergence : Prop
  equidistributionCondition : Prop
  discrepancyBound : ℝ
  rateOfConvergence : ℕ → ℝ
  optimalityClaim : Prop

def TargetMeasure (α : Type u) [h : MeasureSpace α] : Measure α := h.volume

def discrepancy (α : Type u) [MeasureSpace α] [MetricSpace α] (seq : ℕ → α) (N : ℕ) : ℝ :=
  sorry

structure AdmissibleClass (α : Type u) where
  object : WellDistributedSequenceObject α
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end WellDistributedSequencesVariations
end HautevilleHouse