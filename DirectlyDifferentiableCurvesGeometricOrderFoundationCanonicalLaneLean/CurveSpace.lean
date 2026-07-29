import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderFoundationCanonicalLaneLean

structure CurveSpace where
  underlyingSet : Type u
  topology : TopologicalSpace underlyingSet
  smoothStructure : Prop
  dimensionOne : Prop

structure CurveSpaceEvidence (M : CurveSpace) where
  smoothStructureClosed : M.smoothStructure
  dimensionOneClosed : M.dimensionOne

def CurveSpaceClosed (M : CurveSpace) : Prop :=
  M.smoothStructure ∧ M.dimensionOne

theorem curve_space_closed_from_evidence (M : CurveSpace)
    (E : CurveSpaceEvidence M) : CurveSpaceClosed M := by
  exact And.intro E.smoothStructureClosed E.dimensionOneClosed

end DirectlyDifferentiableCurvesGeometricOrderFoundationCanonicalLaneLean
end HautevilleHouse
