import canonicalLaneMathlib.AdmissibleClass

/-!
# Uniform Distribution Package for Well Distributed Sequences
-/

namespace HautevilleHouse
namespace WellDistributedSequencesVariations

structure UniformDistributionPackage (α : Type u) where
  sequence : ℕ → α
  targetSpace : Type v
  targetTopology : TopologicalSpace targetSpace
  probabilityMeasure : targetSpace → ℝ
  empiricalMeasure : ℕ → ℕ → (α → ℝ) → ℝ
  uniformDistributionCondition : Prop
  discrepancySequence : ℕ → ℝ
  discrepancyBound : ℝ → ℝ
  uniformDistributionConditionClosed : uniformDistributionCondition

def UniformDistributionClosed (α : Type u) (U : UniformDistributionPackage α) : Prop :=
  U.uniformDistributionCondition

theorem uniform_distribution_closed (α : Type u) (U : UniformDistributionPackage α) :
    UniformDistributionClosed α U := by
  exact U.uniformDistributionConditionClosed

end WellDistributedSequencesVariations
end HautevilleHouse