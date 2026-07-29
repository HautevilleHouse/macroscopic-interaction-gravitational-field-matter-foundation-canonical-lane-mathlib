import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterFoundation

structure AdmissibleClass where
  object : GravitationalFieldAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GravitationalFieldWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MacroscopicInteractionGravitationalFieldMatterFoundation
end HautevilleHouse