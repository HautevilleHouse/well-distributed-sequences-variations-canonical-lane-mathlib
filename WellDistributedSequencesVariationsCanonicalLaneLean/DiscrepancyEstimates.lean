import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WellDistributedSequencesVariationsCanonicalLaneLean

structure DiscrepancyPackage (X : UniformDistributionSpace) where
  sequence : ℕ → X.carrier
  starDiscrepancy : ℕ → ℝ
  l2Discrepancy : ℕ → ℝ
  starDiscrepancyBound : Prop
  l2DiscrepancyBound : Prop
  starDiscrepancyBoundTerm : starDiscrepancyBound
  l2DiscrepancyBoundTerm : l2DiscrepancyBound

def DiscrepancyClosed {X : UniformDistributionSpace} (D : DiscrepancyPackage X) : Prop :=
  D.starDiscrepancyBound ∧ D.l2DiscrepancyBound

theorem discrepancy_closed_from_bounds {X : UniformDistributionSpace}
    (D : DiscrepancyPackage X) : DiscrepancyClosed D :=
  And.intro D.starDiscrepancyBoundTerm D.l2DiscrepancyBoundTerm

end WellDistributedSequencesVariationsCanonicalLaneLean
end HautevilleHouse