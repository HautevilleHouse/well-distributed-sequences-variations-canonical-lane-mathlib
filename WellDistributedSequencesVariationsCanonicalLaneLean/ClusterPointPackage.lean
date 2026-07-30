import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WellDistributedSequencesVariationsCanonicalLaneLean

structure ClusterPointPackage (A : AdmissibleClass) where
  limitPointExistence : Prop
  clusterSetClosed : Prop
  accumulationCondition : Prop

structure ClusterPointEvidence (A : AdmissibleClass) (C : ClusterPointPackage A) where
  limitPointExistenceClosed : C.limitPointExistence
  clusterSetClosedClosed : C.clusterSetClosed
  accumulationConditionClosed : C.accumulationCondition

def ClusterPointClosed (A : AdmissibleClass) (C : ClusterPointPackage A) : Prop :=
  C.limitPointExistence ∧ C.clusterSetClosed ∧ C.accumulationCondition

theorem cluster_point_closed_from_evidence (A : AdmissibleClass) (C : ClusterPointPackage A) (Ev : ClusterPointEvidence A C) :
    ClusterPointClosed A C := by
  exact And.intro Ev.limitPointExistenceClosed (And.intro Ev.clusterSetClosedClosed Ev.accumulationConditionClosed)

end WellDistributedSequencesVariationsCanonicalLaneLean
end HautevilleHouse