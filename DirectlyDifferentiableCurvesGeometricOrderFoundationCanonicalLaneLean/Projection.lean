import DirectlyDifferentiableCurvesGeometricOrderFoundation.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderFoundation

open HautevilleHouse.CanonicalLaneMathlibCore

def curveProjection : Projection CurveEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem curve_projection_idempotent (x : CurveEndgameState) :
    curveProjection.toFun (curveProjection.toFun x) = curveProjection.toFun x := by
  exact curveProjection.idempotent x

end DirectlyDifferentiableCurvesGeometricOrderFoundation
end HautevilleHouse