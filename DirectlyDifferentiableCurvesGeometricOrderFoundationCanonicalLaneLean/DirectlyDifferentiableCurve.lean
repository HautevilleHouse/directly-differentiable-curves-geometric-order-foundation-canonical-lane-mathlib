import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderFoundationCanonicalLaneLean

structure DirectlyDifferentiableCurve (M : Type u) [TopologicalSpace M] [ChartedSpace ℝ M] where
  domain : Set ℝ
  curve : ℝ → M
  differentiable : Prop
  derivativeContinuous : Prop

def CurveDirectlyDifferentiableClosed (γ : DirectlyDifferentiableCurve M) : Prop :=
  γ.differentiable ∧ γ.derivativeContinuous

end DirectlyDifferentiableCurvesGeometricOrderFoundationCanonicalLaneLean
end HautevilleHouse