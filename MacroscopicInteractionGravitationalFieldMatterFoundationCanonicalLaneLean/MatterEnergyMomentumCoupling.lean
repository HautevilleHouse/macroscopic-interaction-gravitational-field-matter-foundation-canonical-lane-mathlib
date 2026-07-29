import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterFoundationCanonicalLaneLean

structure MatterEnergyMomentumPackage where
  energyMomentumTensor : Type u
  divergenceFree : Prop
  dominantEnergyCondition : Prop
  weakEnergyCondition : Prop
  strongEnergyCondition : Prop

structure MatterEnergyMomentumEvidence (M : MatterEnergyMomentumPackage) where
  divergenceFreeClosed : M.divergenceFree
  dominantEnergyConditionClosed : M.dominantEnergyCondition
  weakEnergyConditionClosed : M.weakEnergyCondition
  strongEnergyConditionClosed : M.strongEnergyCondition

def MatterEnergyMomentumClosed (M : MatterEnergyMomentumPackage) : Prop :=
  M.divergenceFree ∧ M.dominantEnergyCondition ∧
  M.weakEnergyCondition ∧ M.strongEnergyCondition

theorem matter_energy_momentum_closed_from_evidence
    (M : MatterEnergyMomentumPackage) (E : MatterEnergyMomentumEvidence M) :
    MatterEnergyMomentumClosed M := by
  exact And.intro E.divergenceFreeClosed
    (And.intro E.dominantEnergyConditionClosed
      (And.intro E.weakEnergyConditionClosed E.strongEnergyConditionClosed))

end MacroscopicInteractionGravitationalFieldMatterFoundationCanonicalLaneLean
end HautevilleHouse