import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirectlyDifferentiableCurvesGeometricOrderFoundation.BridgeLemmas
import HautevilleHouse.DirectlyDifferentiableCurvesGeometricOrderFoundation.GateLemmas

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderFoundation

def ConstrainedCurveOrderClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_curve_order_endgame (A : AdmissibleClass) : ConstrainedCurveOrderClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DirectlyDifferentiableCurvesGeometricOrderFoundation
end HautevilleHouse