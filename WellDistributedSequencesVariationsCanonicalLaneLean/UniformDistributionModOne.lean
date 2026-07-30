import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WellDistributedSequencesVariationsCanonicalLaneLean

structure UniformDistributionModOnePackage where
  sequence : Type u
  realCoefficients : sequence → ℕ → ℝ
  fractionalParts : sequence → ℕ → ℝ
  uniformLimit : Prop
  weylCriterionSatisfied : Prop

def UniformDistributionModOneClosed (P : UniformDistributionModOnePackage) : Prop :=
  P.uniformLimit ∧ P.weylCriterionSatisfied

structure UniformDistributionModOneEvidence (P : UniformDistributionModOnePackage) where
  uniformLimitClosed : P.uniformLimit
  weylCriterionSatisfiedClosed : P.weylCriterionSatisfied

theorem uniform_distribution_mod_one_closed_from_evidence
    (P : UniformDistributionModOnePackage) (E : UniformDistributionModOneEvidence P) :
    UniformDistributionModOneClosed P := by
  exact And.intro E.uniformLimitClosed E.weylCriterionSatisfiedClosed

end WellDistributedSequencesVariationsCanonicalLaneLean
end HautevilleHouse
