import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WellDistributedSequencesVariationsCanonicalLaneLean

structure EquidistributionPackage where
  sequence : ℕ → ℝ
  uniformDistribution : Prop
  discrepancyZero : Prop
  weylCriterionSatisfied : Prop

structure EquidistributionEvidence (E : EquidistributionPackage) where
  uniformDistributionClosed : E.uniformDistribution
  discrepancyZeroClosed : E.discrepancyZero
  weylCriterionSatisfiedClosed : E.weylCriterionSatisfied

def EquidistributionClosed (E : EquidistributionPackage) : Prop :=
  E.uniformDistribution ∧ E.discrepancyZero ∧ E.weylCriterionSatisfied

theorem equidistribution_closed_from_evidence (E : EquidistributionPackage)
    (Ev : EquidistributionEvidence E) : EquidistributionClosed E := by
  exact And.intro Ev.uniformDistributionClosed
    (And.intro Ev.discrepancyZeroClosed Ev.weylCriterionSatisfiedClosed)

end WellDistributedSequencesVariationsCanonicalLaneLean
end HautevilleHouse