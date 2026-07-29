import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MacroscopicInteractionGravitationalFieldMatterFoundationCanonicalLaneLean.SpacetimeMetricField

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterFoundationCanonicalLaneLean

structure EinsteinFieldEquationsPackage (L : LorentzianManifoldPackage) where
  stressEnergyTensor : Type u
  cosmologicalConstant : Prop
  einsteinTensor : Type v
  fieldEquationsHeld : Prop
  stressEnergyTensorDefined : Prop
  cosmologicalConstantTerm : cosmologicalConstant
  fieldEquationsHeldTerm : fieldEquationsHeld

structure EinsteinFieldEquationsEvidence {L : LorentzianManifoldPackage} (E : EinsteinFieldEquationsPackage L) where
  fieldEquationsHeldClosed : E.fieldEquationsHeld

def EinsteinFieldEquationsClosed {L : LorentzianManifoldPackage} (E : EinsteinFieldEquationsPackage L) : Prop :=
  E.fieldEquationsHeld ∧ E.cosmologicalConstant ∧ E.stressEnergyTensorDefined

theorem einstein_field_equations_closed_from_evidence {L : LorentzianManifoldPackage} (E : EinsteinFieldEquationsPackage L) (Ev : EinsteinFieldEquationsEvidence E) :
    EinsteinFieldEquationsClosed E := by
  exact And.intro Ev.fieldEquationsHeldClosed (And.intro E.cosmologicalConstantTerm E.stressEnergyTensorDefined)

end MacroscopicInteractionGravitationalFieldMatterFoundationCanonicalLaneLean
end HautevilleHouse
