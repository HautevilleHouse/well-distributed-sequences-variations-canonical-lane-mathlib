import canonicalLaneMathlib.AdmissibleClass

/-!
# Equidistribution Analysis Package for Well Distributed Sequences
-/

namespace HautevilleHouse
namespace WellDistributedSequencesVariations

structure EquidistributionPackage (α : Type u) where
  sequence : ℕ → α
  targetSpace : Type v
  targetTopology : TopologicalSpace targetSpace
  targetGroup : AddGroup targetSpace
  equidistributionModSubgroup : Prop
  equidistributionCondition : Prop
  errorTerm : ℕ → ℝ
  discrepancyRate : ℕ → ℝ
  equidistributionConditionClosed : equidistributionCondition

data EquidistributionType : Type u :=
  | ModOne
  | ModFiniteSubgroup
  | WeightedMean

def EquidistributionClosed (α : Type u) (E : EquidistributionPackage α) : Prop :=
  E.equidistributionCondition

theorem equidistribution_closed (α : Type u) (E : EquidistributionPackage α) :
    EquidistributionClosed α E := by
  exact E.equidistributionConditionClosed

end WellDistributedSequencesVariations
end HautevilleHouse