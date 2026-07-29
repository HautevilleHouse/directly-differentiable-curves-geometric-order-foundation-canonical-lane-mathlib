import canonicalLaneMathlib.AdmissibleClass
import DirectlyDifferentiableCurvesGeometricOrderFoundationCanonicalLaneLean.ConnectionTheory

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderFoundationCanonicalLaneLean

structure HolonomyPackage (M : Type u) [TopologicalSpace M] [ChartedSpace ℝ M] where
  connection : ConnectionTheoryPackage M
  holonomyGroup : Type v
  restrictedHolonomy : Prop

structure HolonomyEvidence {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M]
    (H : HolonomyPackage M) where
  restrictedHolonomyClosed : H.restrictedHolonomy

def HolonomyClosed {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M]
    (H : HolonomyPackage M) : Prop :=
  H.restrictedHolonomy

theorem holonomy_closed_from_evidence
    {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M]
    (H : HolonomyPackage M) (E : HolonomyEvidence H) :
    HolonomyClosed H := by
  exact E.restrictedHolonomyClosed

end DirectlyDifferentiableCurvesGeometricOrderFoundationCanonicalLaneLean
end HautevilleHouse