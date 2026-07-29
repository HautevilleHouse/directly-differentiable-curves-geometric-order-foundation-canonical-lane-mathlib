import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderFoundationCanonicalLaneLean

structure CurvatureInvariantsPackage where
  curve : Type u
  curvatureFunction : curve → ℝ
  torsionFunction : curve → ℝ
  signedCurvature : Prop
  unsignedCurvature : Prop
  signedCurvatureClosed : signedCurvature
  unsignedCurvatureClosed : unsignedCurvature

structure CurvatureInvariantsEvidence (C : CurvatureInvariantsPackage) where
  signedCurvatureClosed : C.signedCurvature
  unsignedCurvatureClosed : C.unsignedCurvature

def CurvatureInvariantsClosed (C : CurvatureInvariantsPackage) : Prop :=
  C.signedCurvature ∧ C.unsignedCurvature

theorem curvature_invariants_closed_from_evidence (C : CurvatureInvariantsPackage)
    (E : CurvatureInvariantsEvidence C) : CurvatureInvariantsClosed C := by
  exact And.intro E.signedCurvatureClosed E.unsignedCurvatureClosed

end DirectlyDifferentiableCurvesGeometricOrderFoundationCanonicalLaneLean
end HautevilleHouse