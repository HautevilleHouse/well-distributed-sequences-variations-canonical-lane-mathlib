import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WellDistributedSequencesVariationsCanonicalLaneLean

structure LowDiscrepancySequencesPackage where
  sequence : Type u
  dimension : ℕ
  pointsFinite : ℕ → Type v
  discrepancyFun : ℕ → ℝ
  discrepancyBound : ℝ → Prop
  sequenceIsLowDiscrepancy : Prop

def LowDiscrepancySequencesClosed (P : LowDiscrepancySequencesPackage) : Prop :=
  P.sequenceIsLowDiscrepancy

structure LowDiscrepancySequencesEvidence (P : LowDiscrepancySequencesPackage) where
  sequenceIsLowDiscrepancyClosed : P.sequenceIsLowDiscrepancy

theorem low_discrepancy_sequences_closed_from_evidence
    (P : LowDiscrepancySequencesPackage) (E : LowDiscrepancySequencesEvidence P) :
    LowDiscrepancySequencesClosed P := by
  exact E.sequenceIsLowDiscrepancyClosed

end WellDistributedSequencesVariationsCanonicalLaneLean
end HautevilleHouse
