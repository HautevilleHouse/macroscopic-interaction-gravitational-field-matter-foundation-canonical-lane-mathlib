import canonicalLaneMathlib.AdmissibleClass
import MacroscopicInteractionGravitationalFieldMatterFoundationCanonicalLaneLean.LagrangianGravityCoupling

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterFoundationCanonicalLaneLean

structure FieldEquationsPDE {F : MacroscopicInteractionGravitationalFieldMatterFoundation}
    (L : LagrangianGravityCoupling F) where
  stressEnergyTensor : Type u
  einsteinTensors : Type v
  fieldEquationForm : Prop
  matterResponseEquation : Prop
  boundaryConditions : Prop
  fieldEquationFormTerm : fieldEquationForm
  matterResponseEquationTerm : matterResponseEquation
  boundaryConditionsTerm : boundaryConditions

structure FieldEquationsPDEEvidence {F : MacroscopicInteractionGravitationalFieldMatterFoundation}
    {L : LagrangianGravityCoupling F} (P : FieldEquationsPDE L) where
  fieldEquationFormClosed : P.fieldEquationForm
  matterResponseEquationClosed : P.matterResponseEquation
  boundaryConditionsClosed : P.boundaryConditions

def FieldEquationsPDEClosed {F : MacroscopicInteractionGravitationalFieldMatterFoundation}
    {L : LagrangianGravityCoupling F} (P : FieldEquationsPDE L) : Prop :=
  P.fieldEquationForm ∧ P.matterResponseEquation ∧ P.boundaryConditions

theorem field_equations_pde_closed_from_evidence
    {F : MacroscopicInteractionGravitationalFieldMatterFoundation}
    {L : LagrangianGravityCoupling F} (P : FieldEquationsPDE L)
    (E : FieldEquationsPDEEvidence P) :
    FieldEquationsPDEClosed P := by
  exact And.intro E.fieldEquationFormClosed (And.intro E.matterResponseEquationClosed E.boundaryConditionsClosed)

end MacroscopicInteractionGravitationalFieldMatterFoundationCanonicalLaneLean
end HautevilleHouse