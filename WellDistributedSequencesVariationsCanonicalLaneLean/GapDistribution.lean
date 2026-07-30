import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WellDistributedSequencesVariationsCanonicalLaneLean

structure GapDistributionPackage where
  sequence : Type u
  targetType : Type v
  gapSet : Set (Nat × Nat)
  distributionFunction : Nat → Nat → Prop
  limitDistribution : Prop

def GapDistributionClosed (P : GapDistributionPackage) : Prop :=
  P.limitDistribution

structure GapDistributionEvidence (P : GapDistributionPackage) where
  limitDistributionClosed : P.limitDistribution

theorem gap_distribution_closed_from_evidence
    (P : GapDistributionPackage) (E : GapDistributionEvidence P) :
    GapDistributionClosed P := by
  exact E.limitDistributionClosed

end WellDistributedSequencesVariationsCanonicalLaneLean
end HautevilleHouse
