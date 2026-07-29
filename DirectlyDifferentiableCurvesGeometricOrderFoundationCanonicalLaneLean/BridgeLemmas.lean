import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AdmittedObjectWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DirectlyDifferentiableCurvesGeometricOrderFoundationCanonicalLaneLean
end HautevilleHouse
