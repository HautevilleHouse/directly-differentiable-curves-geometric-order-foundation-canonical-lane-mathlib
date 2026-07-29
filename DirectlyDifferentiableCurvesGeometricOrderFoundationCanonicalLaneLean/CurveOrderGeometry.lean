import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderFoundation

structure DirectlyDifferentiableCurve (M : Type u) [TopologicalSpace M] [ChartedSpace ℝ M] where
  domain : Set ℝ
  map : ℝ → M
  differentiableOnDomain : DifferentiableOn ℝ map domain

def curveOrder (c1 c2 : DirectlyDifferentiableCurve M) : Prop :=
  ∀ t ∈ c1.domain ∩ c2.domain, c1.map t = c2.map t

structure CurvatureInvariant (M : Type u) [TopologicalSpace M] [SmoothManifoldWithCorners ℝ M] where
  curve : DirectlyDifferentiableCurve M
  curvature : ℝ
  invariantUnderReparametrization : Prop

structure HolonomyLoop (M : Type u) [TopologicalSpace M] [SmoothManifoldWithCorners ℝ M] (x : M) where
  loop : DirectlyDifferentiableCurve M
  startPoint : loop.map 0 = x
  endPoint : loop.map 1 = x
  parallelTransportComposition : Prop

end DirectlyDifferentiableCurvesGeometricOrderFoundation
end HautevilleHouse