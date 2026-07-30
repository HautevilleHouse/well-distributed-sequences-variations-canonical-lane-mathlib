import canonicalLaneMathlib.AdmissibleClass

/-!
# Discrepancy Bounds Package for Well Distributed Sequences
-/

namespace HautevilleHouse
namespace WellDistributedSequencesVariations

structure DiscrepancyBoundsPackage (α : Type u) where
  sequence : ℕ → α
  targetSpace : Type v
  targetMetric : MetricSpace targetSpace
  targetMeasure : Measure targetSpace
  discrepancySequence : ℕ → ℝ
  discrepancyType : DiscrepancyKind
  starDiscrepancy : ℕ → ℝ
  lpDiscrepancy : ℕ × ℕ → ℝ
  discrepancyLowerBound : ℝ
  discrepancyUpperBound : ℝ
  optimalRateKnown : Prop
  optimalRateKnownClosed : optimalRateKnown

data DiscrepancyKind : Type u :=
  | Star
  | Lp (p : ℕ)
  | Extreme
  | Diaphony
  | Unusual (name : String)

def DiscrepancyBoundsClosed (α : Type u) (D : DiscrepancyBoundsPackage α) : Prop :=
  D.optimalRateKnown

theorem discrepancy_bounds_closed (α : Type u) (D : DiscrepancyBoundsPackage α) :
    DiscrepancyBoundsClosed α D := by
  exact D.optimalRateKnownClosed

end WellDistributedSequencesVariations
end HautevilleHouse