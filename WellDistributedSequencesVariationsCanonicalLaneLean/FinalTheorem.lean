import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WellDistributedSequencesVariations

def ConstrainedSequencesClosure (α : Type u) (A : AdmissibleClass α) : Prop :=
  bridgeClosed α A ∧ gateClosed α A

theorem constrained_sequences_endgame (α : Type u) (A : AdmissibleClass α) :
    ConstrainedSequencesClosure α A := by
  exact And.intro (bridge_from_admissible_class α A) (gate_from_admissible_class α A)

end WellDistributedSequencesVariations
end HautevilleHouse