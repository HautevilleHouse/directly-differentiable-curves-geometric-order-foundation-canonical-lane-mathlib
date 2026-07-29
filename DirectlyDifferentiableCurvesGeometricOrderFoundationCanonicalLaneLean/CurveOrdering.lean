import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderFoundationCanonicalLaneLean

structure DifferentiableCurve where
  domain : ℝ
  range : ℝ → ℝ^n
  smoothnessClass : ℕ
  smoothnessCondition : Prop

structure GeometricOrder where
  curves : List DifferentiableCurve
  orderRelation : DifferentiableCurve → DifferentiableCurve → Prop
  transitivity : ∀ a b c, orderRelation a b → orderRelation b c → orderRelation a c
  antisymmetry : ∀ a b, orderRelation a b → orderRelation b a → a = b
  directDifferentiability : ∀ a b, DifferentiableCurve → DifferentiableCurve → Prop

end DirectlyDifferentiableCurvesGeometricOrderFoundationCanonicalLaneLean
end HautevilleHouse
