import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WellDistributedSequencesVariationsCanonicalLaneLean

structure LowDiscrepancyPackage where
  sequence : ℕ → ℝ
  discrepancyBound : ℝ
  boundPositive : Prop
  oEstimate : Prop

structure LowDiscrepancyEvidence (L : LowDiscrepancyPackage) where
  boundPositiveClosed : L.boundPositive
  oEstimateClosed : L.oEstimate

def LowDiscrepancyClosed (L : LowDiscrepancyPackage) : Prop :=
  L.boundPositive ∧ L.oEstimate

theorem low_discrepancy_closed_from_evidence (L : LowDiscrepancyPackage)
    (Ev : LowDiscrepancyEvidence L) : LowDiscrepancyClosed L := by
  exact And.intro Ev.boundPositiveClosed Ev.oEstimateClosed

end WellDistributedSequencesVariationsCanonicalLaneLean
end HautevilleHouse