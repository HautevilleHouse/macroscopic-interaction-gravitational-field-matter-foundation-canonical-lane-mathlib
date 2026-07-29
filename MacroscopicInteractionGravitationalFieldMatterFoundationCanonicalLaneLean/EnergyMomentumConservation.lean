import canonicalLaneMathlib.AdmissibleClass
import MacroscopicInteractionGravitationalFieldMatterFoundationCanonicalLaneLean.FieldEquationsPDE

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterFoundationCanonicalLaneLean

structure EnergyMomentumConservation {F : MacroscopicInteractionGravitationalFieldMatterFoundation}
    {L : LagrangianGravityCoupling F} {P : FieldEquationsPDE L} where
  covariantConservation : Prop
  matterEnergyMomentumTrace : Prop
  gravitationalFieldSelfCoupling : Prop
  conservationInCoordinateSystem : Prop
  covariantConservationTerm : covariantConservation
  matterEnergyMomentumTraceTerm : matterEnergyMomentumTrace
  gravitationalFieldSelfCouplingTerm : gravitationalFieldSelfCoupling
  conservationInCoordinateSystemTerm : conservationInCoordinateSystem

structure EnergyMomentumConservationEvidence {F : MacroscopicInteractionGravitationalFieldMatterFoundation}
    {L : LagrangianGravityCoupling F} {P : FieldEquationsPDE L}
    (E : EnergyMomentumConservation P) where
  covariantConservationClosed : E.covariantConservation
  matterEnergyMomentumTraceClosed : E.matterEnergyMomentumTrace
  gravitationalFieldSelfCouplingClosed : E.gravitationalFieldSelfCoupling
  conservationInCoordinateSystemClosed : E.conservationInCoordinateSystem

def EnergyMomentumConservationClosed {F : MacroscopicInteractionGravitationalFieldMatterFoundation}
    {L : LagrangianGravityCoupling F} {P : FieldEquationsPDE L}
    (E : EnergyMomentumConservation P) : Prop :=
  E.covariantConservation ∧ E.matterEnergyMomentumTrace ∧
  E.gravitationalFieldSelfCoupling ∧ E.conservationInCoordinateSystem

theorem energy_momentum_conservation_closed_from_evidence
    {F : MacroscopicInteractionGravitationalFieldMatterFoundation}
    {L : LagrangianGravityCoupling F} {P : FieldEquationsPDE L}
    (E : EnergyMomentumConservation P) (Ev : EnergyMomentumConservationEvidence E) :
    EnergyMomentumConservationClosed E := by
  exact And.intro Ev.covariantConservationClosed
    (And.intro Ev.matterEnergyMomentumTraceClosed
      (And.intro Ev.gravitationalFieldSelfCouplingClosed Ev.conservationInCoordinateSystemClosed))

end MacroscopicInteractionGravitationalFieldMatterFoundationCanonicalLaneLean
end HautevilleHouse