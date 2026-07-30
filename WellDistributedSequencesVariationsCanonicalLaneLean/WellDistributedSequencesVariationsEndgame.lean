import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WellDistributedSequencesVariationsCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.WellDistributedSequencesVariationsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace WellDistributedSequencesVariationsCanonicalLaneLean

def ConstrainedWellDistributedSequencesVariationsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_wellDistributedSequencesVariations_endgame (A : AdmissibleClass) :
    ConstrainedWellDistributedSequencesVariationsClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end WellDistributedSequencesVariationsCanonicalLaneLean
end HautevilleHouse
