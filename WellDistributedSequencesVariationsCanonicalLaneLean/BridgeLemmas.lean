import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WellDistributedSequencesVariations

def bridgeClosed (α : Type u) (A : AdmissibleClass α) : Prop :=
  A.object.sequenceMeasureConvergence ∧ A.object.equidistributionCondition

theorem bridge_from_admissible_class (α : Type u) (A : AdmissibleClass α) :
    bridgeClosed α A := by
  rcases A with ⟨O, _, _, _⟩
  exact And.intro O.sequenceMeasureConvergence O.equidistributionCondition

end WellDistributedSequencesVariations
end HautevilleHouse