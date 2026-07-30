import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WellDistributedSequencesVariationsCanonicalLaneLean

structure VanDerCorputPackage where
  sequence : ℕ → ℝ
  exponentialSums : (ℕ → ℂ) → ℂ → Prop
  differenceEstimates : Prop
  mainTerm : Prop

structure VanDerCorputEvidence (V : VanDerCorputPackage) where
  differenceEstimatesClosed : V.differenceEstimates
  mainTermClosed : V.mainTerm

def VanDerCorputClosed (V : VanDerCorputPackage) : Prop :=
  V.differenceEstimates ∧ V.mainTerm

theorem van_der_corput_closed_from_evidence (V : VanDerCorputPackage)
    (Ev : VanDerCorputEvidence V) : VanDerCorputClosed V := by
  exact And.intro Ev.differenceEstimatesClosed Ev.mainTermClosed

end WellDistributedSequencesVariationsCanonicalLaneLean
end HautevilleHouse