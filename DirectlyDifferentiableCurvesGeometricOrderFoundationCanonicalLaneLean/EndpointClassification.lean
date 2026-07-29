import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderFoundationCanonicalLaneLean

structure EndpointClassificationPackage struct
  curveSpace : CurveSpace
  geometricOrder : GeometricOrder
  distinguishedCurves : Set (DifferentiableCurve)
  endpointProperty : Prop
  uniqueness : Prop

structure EndpointClassificationEvidence (E : EndpointClassificationPackage) where
  endpointPropertyClosed : E.endpointProperty
  uniquenessClosed : E.uniqueness

def EndpointClassificationClosed (E : EndpointClassificationPackage) : Prop :=
  E.endpointProperty ∧ E.uniqueness

theorem endpoint_classification_closed_from_evidence (E : EndpointClassificationPackage)
    (Ev : EndpointClassificationEvidence E) : EndpointClassificationClosed E := by
  exact And.intro Ev.endpointPropertyClosed Ev.uniquenessClosed

end DirectlyDifferentiableCurvesGeometricOrderFoundationCanonicalLaneLean
end HautevilleHouse
