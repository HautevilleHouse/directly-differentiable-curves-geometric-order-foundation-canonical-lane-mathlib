import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderFoundationCanonicalLaneLean

structure IndexTheoremPackage where
  curve : Type u
  index : ℤ
  indexComputed : Prop
  indexIndependentOfParameterization : Prop
  indexComputedClosed : indexComputed
  indexIndependentClosed : indexIndependentOfParameterization

structure IndexTheoremEvidence (I : IndexTheoremPackage) where
  indexComputedClosed : I.indexComputed
  indexIndependentClosed : I.indexIndependentOfParameterization

def IndexTheoremClosed (I : IndexTheoremPackage) : Prop :=
  I.indexComputed ∧ I.indexIndependentOfParameterization

theorem index_theorem_closed_from_evidence (I : IndexTheoremPackage)
    (E : IndexTheoremEvidence I) : IndexTheoremClosed I := by
  exact And.intro E.indexComputedClosed E.indexIndependentClosed

end DirectlyDifferentiableCurvesGeometricOrderFoundationCanonicalLaneLean
end HautevilleHouse