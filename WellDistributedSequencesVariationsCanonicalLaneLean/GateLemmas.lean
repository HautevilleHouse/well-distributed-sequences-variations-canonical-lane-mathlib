import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WellDistributedSequencesVariations

def gateClosed (α : Type u) (A : AdmissibleClass α) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (α : Type u) (A : AdmissibleClass α) :
    gateClosed α A := by
  exact A.gateWitness

end WellDistributedSequencesVariations
end HautevilleHouse