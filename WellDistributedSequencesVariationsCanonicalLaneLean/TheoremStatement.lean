import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WellDistributedSequencesVariationsCanonicalLaneLean

structure WellDistributedAdmittedObject where
  space : Type u
  topology : TopologicalSpace space
  sequence : ℕ → space
  wellDistributed : Prop
  conclusion : wellDistributed

def WellDistributedWitnessClosed (O : WellDistributedAdmittedObject) : Prop :=
  O.wellDistributed

end WellDistributedSequencesVariationsCanonicalLaneLean
end HautevilleHouse