import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderFoundationCanonicalLaneLean

structure GeometricOrderPackage where
  curve : Type u
  orderRelation : curve → curve → Prop
  orderReflexive : Prop
  orderTransitive : Prop
  orderAntisymmetric : Prop
  orderCompatibleWithDifferentiability : Prop
  orderReflexiveClosed : orderReflexive
  orderTransitiveClosed : orderTransitive
  orderAntisymmetricClosed : orderAntisymmetric
  orderCompatibleClosed : orderCompatibleWithDifferentiability

structure GeometricOrderEvidence (G : GeometricOrderPackage) where
  orderReflexiveClosed : G.orderReflexive
  orderTransitiveClosed : G.orderTransitive
  orderAntisymmetricClosed : G.orderAntisymmetric
  orderCompatibleClosed : G.orderCompatibleWithDifferentiability

def GeometricOrderClosed (G : GeometricOrderPackage) : Prop :=
  G.orderReflexive ∧ G.orderTransitive ∧ G.orderAntisymmetric ∧ G.orderCompatibleWithDifferentiability

theorem geometric_order_closed_from_evidence (G : GeometricOrderPackage)
    (E : GeometricOrderEvidence G) : GeometricOrderClosed G := by
  exact And.intro E.orderReflexiveClosed
    (And.intro E.orderTransitiveClosed
      (And.intro E.orderAntisymmetricClosed E.orderCompatibleClosed))

end DirectlyDifferentiableCurvesGeometricOrderFoundationCanonicalLaneLean
end HautevilleHouse