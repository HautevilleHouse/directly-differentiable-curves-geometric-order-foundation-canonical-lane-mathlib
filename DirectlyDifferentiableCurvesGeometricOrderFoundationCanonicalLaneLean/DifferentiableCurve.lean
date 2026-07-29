import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderFoundationCanonicalLaneLean

structure DifferentiableCurve struct
  space : CurveSpace
  parameterSpace : Type u
  parameterTopology : TopologicalSpace parameterSpace
  mapping : parameterSpace → space.underlyingSet
  differentiable : Prop
  immersion : Prop

structure DifferentiableCurveEvidence (γ : DifferentiableCurve) where
  differentiableClosed : γ.differentiable
  immersionClosed : γ.immersion

def DifferentiableCurveClosed (γ : DifferentiableCurve) : Prop :=
  γ.differentiable ∧ γ.immersion

theorem differentiable_curve_closed_from_evidence (γ : DifferentiableCurve)
    (E : DifferentiableCurveEvidence γ) : DifferentiableCurveClosed γ := by
  exact And.intro E.differentiableClosed E.immersionClosed

end DirectlyDifferentiableCurvesGeometricOrderFoundationCanonicalLaneLean
end HautevilleHouse
