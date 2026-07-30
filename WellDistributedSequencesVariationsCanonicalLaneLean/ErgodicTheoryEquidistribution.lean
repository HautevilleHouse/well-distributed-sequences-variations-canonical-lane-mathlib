import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WellDistributedSequencesVariationsCanonicalLaneLean

structure ErgodicTheoryEquidistributionPackage where
  system : Type u
  transformation : system → system
  invariantMeasure : MeasureTheory.Measure system
  genericPoint : system
  orbitEquidistributed : Prop
  ergodicTheoremApplied : Prop

def ErgodicTheoryEquidistributionClosed (P : ErgodicTheoryEquidistributionPackage) : Prop :=
  P.orbitEquidistributed ∧ P.ergodicTheoremApplied

structure ErgodicTheoryEquidistributionEvidence (P : ErgodicTheoryEquidistributionPackage) where
  orbitEquidistributedClosed : P.orbitEquidistributed
  ergodicTheoremAppliedClosed : P.ergodicTheoremApplied

theorem ergodic_theory_equidistribution_closed_from_evidence
    (P : ErgodicTheoryEquidistributionPackage) (E : ErgodicTheoryEquidistributionEvidence P) :
    ErgodicTheoryEquidistributionClosed P := by
  exact And.intro E.orbitEquidistributedClosed E.ergodicTheoremAppliedClosed

end WellDistributedSequencesVariationsCanonicalLaneLean
end HautevilleHouse
