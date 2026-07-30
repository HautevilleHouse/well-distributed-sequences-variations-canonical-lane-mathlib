import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WellDistributedSequencesVariationsCanonicalLaneLean

structure EquidistributionPackage (X : UniformDistributionSpace) where
  sequence : ℕ → X.carrier
  equidistribution : Prop
  weylCriterion : Prop
  weylCriterionTerm : weylCriterion

def EquidistributionClosed {X : UniformDistributionSpace} (E : EquidistributionPackage X) : Prop :=
  E.equidistribution ∧ E.weylCriterion

theorem equidistribution_closed_from_weyl {X : UniformDistributionSpace}
    (E : EquidistributionPackage X) (h : E.weylCriterion) : EquidistributionClosed E :=
  And.intro E.equidistribution h

end WellDistributedSequencesVariationsCanonicalLaneLean
end HautevilleHouse