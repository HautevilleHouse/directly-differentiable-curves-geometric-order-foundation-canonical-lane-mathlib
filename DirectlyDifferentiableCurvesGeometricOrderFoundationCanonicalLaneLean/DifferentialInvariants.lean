import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderFoundationCanonicalLaneLean

structure CurvatureInvariant where
  curve : DifferentiableCurve
  curvature : ℝ → ℝ
  signedCurvature : ℝ → ℝ
  torsion : ℝ → ℝ

structure ConnectionTheory where
  connectionForm : DifferentiableCurve → (ℝ → Matrix ℝ)
  parallelTransport : DifferentiableCurve → ℝ → ℝ → Matrix ℝ
  holonomyGroup : DifferentiableCurve → Type

structure IndexTheorem where
  curve : DifferentiableCurve
  index : ℤ
  topologicalInvariant : ℤ

structure HolonomyResult where
  curve : DifferentiableCurve
  holonomyGroup : Type
  holonomyRepresentation : HolonomyGroup → Matrix ℝ

end DirectlyDifferentiableCurvesGeometricOrderFoundationCanonicalLaneLean
end HautevilleHouse
