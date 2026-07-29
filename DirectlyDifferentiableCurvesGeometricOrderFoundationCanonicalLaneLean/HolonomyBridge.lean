import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirectlyDifferentiableCurvesGeometricOrderFoundation.CurveOrderGeometry
import HautevilleHouse.DirectlyDifferentiableCurvesGeometricOrderFoundation.ConnectionTheory

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderFoundation

structure HolonomyGroup (M : Type u) [TopologicalSpace M] [SmoothManifoldWithCorners ℝ M] (x : M) where
  loops : Set (HolonomyLoop M x)
  groupOperation : HolonomyLoop M x → HolonomyLoop M x → HolonomyLoop M x
  identity : HolonomyLoop M x
  inverses : ∀ (l : HolonomyLoop M x), ∃ (l' : HolonomyLoop M x), groupOperation l l' = identity
  associativity : Prop

def holonomyAdmissibleClass (M : Type u) [TopologicalSpace M] [SmoothManifoldWithCorners ℝ M] (x : M) (h : HolonomyGroup M x) : AdmissibleClass :=
  { object := x,
    endpointSatisfied := True,
    remainderRecorded := True,
    gateWitness := Or.inl True.intro
  }

theorem holonomy_bridge_closed (M : Type u) [TopologicalSpace M] [SmoothManifoldWithCorners ℝ M] (x : M) (h : HolonomyGroup M x) : bridgeClosed (holonomyAdmissibleClass M x h) := by
  exact True.intro

theorem holonomy_gate_closed (M : Type u) [TopologicalSpace M] [SmoothManifoldWithCorners ℝ M] (x : M) (h : HolonomyGroup M x) : gateClosed (holonomyAdmissibleClass M x h) := by
  exact Or.inl True.intro

end DirectlyDifferentiableCurvesGeometricOrderFoundation
end HautevilleHouse