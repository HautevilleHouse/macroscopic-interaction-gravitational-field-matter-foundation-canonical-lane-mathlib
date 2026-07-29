import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterFoundationCanonicalLaneLean

structure MatterEnergyMomentumPackage where
  stressEnergyTensor : Type u
  energyConditions : Prop
  dominantEnergyCondition : Prop
  strongEnergyCondition : Prop
  weakEnergyCondition : Prop

struct MatterEnergyMomentumEvidence (M : MatterEnergyMomentumPackage) where
  energyConditionsClosed : M.energyConditions
  dominantEnergyConditionClosed : M.dominantEnergyCondition
  strongEnergyConditionClosed : M.strongEnergyCondition
  weakEnergyConditionClosed : M.weakEnergyCondition

def MatterEnergyMomentumClosed (M : MatterEnergyMomentumPackage) : Prop :=
  M.energyConditions ∧ M.dominantEnergyCondition ∧ M.strongEnergyCondition ∧ M.weakEnergyCondition

theorem matter_energy_momentum_closed_from_evidence (M : MatterEnergyMomentumPackage)
    (Ev : MatterEnergyMomentumEvidence M) : MatterEnergyMomentumClosed M :=
  And.intro Ev.energyConditionsClosed
    (And.intro Ev.dominantEnergyConditionClosed
      (And.intro Ev.strongEnergyConditionClosed Ev.weakEnergyConditionClosed))

end MacroscopicInteractionGravitationalFieldMatterFoundationCanonicalLaneLean
end HautevilleHouse