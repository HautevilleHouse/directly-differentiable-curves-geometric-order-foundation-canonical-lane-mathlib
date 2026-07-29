import canonicalLaneMathlib.AdmissibleClass
import DirectlyDifferentiableCurvesGeometricOrderFoundationCanonicalLaneLean.DirectlyDifferentiableCurve

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderFoundationCanonicalLaneLean

structure CurvatureInvariantPackage (M : Type u) [TopologicalSpace M] [ChartedSpace ℝ M] where
  curve : DirectlyDifferentiableCurve M
  curvature : ℝ → ℝ
  invariantCondition : Prop

structure CurvatureInvariantEvidence {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M]
    (C : CurvatureInvariantPackage M) where
  invariantConditionClosed : C.invariantCondition

def CurvatureInvariantClosed {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M]
    (C : CurvatureInvariantPackage M) : Prop :=
  C.invariantCondition

theorem curvature_invariant_closed_from_evidence
    {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M]
    (C : CurvatureInvariantPackage M) (E : CurvatureInvariantEvidence C) :
    CurvatureInvariantClosed C := by
  exact E.invariantConditionClosed

end DirectlyDifferentiableCurvesGeometricOrderFoundationCanonicalLaneLean
end HautevilleHouse