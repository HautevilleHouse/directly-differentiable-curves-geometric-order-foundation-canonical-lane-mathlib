import DirectlyDifferentiableCurvesGeometricOrderFoundation.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderFoundation

open HautevilleHouse.CanonicalLaneMathlibCore

structure CurveSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CurveAdmittedObject where
  space : CurveSpace
  differentiableCurve : Prop
  curvatureBounded : Prop
  orderInvariant : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

structure CurveEndgameState where
  object : CurveAdmittedObject

def CurvatureOrderClosed (O : CurveAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end DirectlyDifferentiableCurvesGeometricOrderFoundation
end HautevilleHouse