import MacroscopicInteractionGravitationalFieldMatterFoundationCanonicalLaneLean.MacroscopicInteractionObjects

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MacroscopicWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.bridgeConclusion

end HautevilleHouse
end MacroscopicInteractionGravitationalFieldMatterFoundationCanonicalLaneLean