import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WellDistributedSequencesVariationsCanonicalLaneLean

structure KroneckerPackage (A : AdmissibleClass) where
  irrationalStep : Prop
  torusWinding : Prop
  equidistributionOnTorus : Prop

structure KroneckerEvidence (A : AdmissibleClass) (K : KroneckerPackage A) where
  irrationalStepClosed : K.irrationalStep
  torusWindingClosed : K.torusWinding
  equidistributionOnTorusClosed : K.equidistributionOnTorus

def KroneckerClosed (A : AdmissibleClass) (K : KroneckerPackage A) : Prop :=
  K.irrationalStep ∧ K.torusWinding ∧ K.equidistributionOnTorus

theorem kronecker_closed_from_evidence (A : AdmissibleClass) (K : KroneckerPackage A) (Ev : KroneckerEvidence A K) :
    KroneckerClosed A K := by
  exact And.intro Ev.irrationalStepClosed (And.intro Ev.torusWindingClosed Ev.equidistributionOnTorusClosed)

end WellDistributedSequencesVariationsCanonicalLaneLean
end HautevilleHouse