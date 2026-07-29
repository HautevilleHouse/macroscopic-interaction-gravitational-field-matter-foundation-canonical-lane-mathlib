import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterFoundationCanonicalLaneLean

structure GravitationalInteractionPackage where
  spacetimeManifold : Type u
  metricTensor : Type v
  stressEnergyTensor : Type w
  matterFields : Type x
  einsteinFieldEquation : Prop
  conservationLaw : Prop
  causalStructure : Prop

structure GravitationalInteractionEvidence (G : GravitationalInteractionPackage) where
  einsteinFieldEquationClosed : G.einsteinFieldEquation
  conservationLawClosed : G.conservationLaw
  causalStructureClosed : G.causalStructure

def GravitationalInteractionClosed (G : GravitationalInteractionPackage) : Prop :=
  G.einsteinFieldEquation ∧ G.conservationLaw ∧ G.causalStructure

theorem gravitational_interaction_closed_from_evidence
    (G : GravitationalInteractionPackage) (E : GravitationalInteractionEvidence G) :
    GravitationalInteractionClosed G := by
  exact And.intro E.einsteinFieldEquationClosed
    (And.intro E.conservationLawClosed E.causalStructureClosed)

end MacroscopicInteractionGravitationalFieldMatterFoundationCanonicalLaneLean
end HautevilleHouse