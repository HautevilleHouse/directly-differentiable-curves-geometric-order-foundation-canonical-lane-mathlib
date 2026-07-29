import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderFoundationCanonicalLaneLean

structure HolonomyPackage where
  curve : Type u
  connection : Type v
  parallelTransport : curve → connection → connection
  holonomyGroup : Type w
  holonomyInvariant : Prop
  holonomyGroupClosed : holonomyInvariant

structure HolonomyEvidence (H : HolonomyPackage) where
  holonomyGroupClosed : H.holonomyInvariant

def HolonomyClosed (H : HolonomyPackage) : Prop :=
  H.holonomyInvariant

theorem holonomy_closed_from_evidence (H : HolonomyPackage)
    (E : HolonomyEvidence H) : HolonomyClosed H :=
  E.holonomyGroupClosed

end DirectlyDifferentiableCurvesGeometricOrderFoundationCanonicalLaneLean
end HautevilleHouse