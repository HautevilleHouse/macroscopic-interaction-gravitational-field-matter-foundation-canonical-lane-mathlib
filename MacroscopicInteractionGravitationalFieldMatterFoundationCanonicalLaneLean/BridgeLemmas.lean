import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterFoundation

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GravitationalFieldWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MacroscopicInteractionGravitationalFieldMatterFoundation
end HautevilleHouse