import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WellDistributedSequencesVariationsCanonicalLaneLean

structure GoodLatticePointsPackage (X : UniformDistributionSpace) where
  lattice : Set X.carrier
  goodLattice : Prop
  errorTerm : ℝ
  errorTermBound : Prop
  errorTermBoundTerm : errorTermBound

def GoodLatticePointsClosed {X : UniformDistributionSpace} (G : GoodLatticePointsPackage X) : Prop :=
  G.goodLattice ∧ G.errorTermBound

theorem good_lattice_points_closed_from_error {X : UniformDistributionSpace}
    (G : GoodLatticePointsPackage X) (h : G.goodLattice) : GoodLatticePointsClosed G :=
  And.intro h G.errorTermBoundTerm

end WellDistributedSequencesVariationsCanonicalLaneLean
end HautevilleHouse