import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderFoundationCanonicalLaneLean

structure CurveDifferentiabilityPackage where
  curve : Type u
  domain : Type v
  parameterization : curve → domain
  differentiable : Prop
  smooth : Prop
  regular : Prop
  differentiabilityClosed : differentiable
  smoothClosed : smooth
  regularClosed : regular

structure CurveDifferentiabilityEvidence (C : CurveDifferentiabilityPackage) where
  differentiableClosed : C.differentiable
  smoothClosed : C.smooth
  regularClosed : C.regular

def CurveDifferentiabilityClosed (C : CurveDifferentiabilityPackage) : Prop :=
  C.differentiable ∧ C.smooth ∧ C.regular

theorem curve_differentiability_closed_from_evidence (C : CurveDifferentiabilityPackage)
    (E : CurveDifferentiabilityEvidence C) : CurveDifferentiabilityClosed C := by
  exact And.intro E.differentiableClosed (And.intro E.smoothClosed E.regularClosed)

end DirectlyDifferentiableCurvesGeometricOrderFoundationCanonicalLaneLean
end HautevilleHouse