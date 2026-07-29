import canonicalLaneMathlib.AdmissibleClass
import MacroscopicInteractionGravitationalFieldMatterFoundationCanonicalLaneLean.MacroscopicInteractionGravitationalFieldMatterFoundation

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterFoundationCanonicalLaneLean

structure LagrangianGravityCoupling (F : MacroscopicInteractionGravitationalFieldMatterFoundation) where
  lagrangianDensity : Type u
  couplingFunction : Type v
  fieldMatterInteraction : Prop
  eulerLagrangeDerivation : Prop
  fieldMatterInteractionTerm : fieldMatterInteraction
  eulerLagrangeDerivationTerm : eulerLagrangeDerivation

structure LagrangianGravityCouplingEvidence {F : MacroscopicInteractionGravitationalFieldMatterFoundation}
    (L : LagrangianGravityCoupling F) where
  fieldMatterInteractionClosed : L.fieldMatterInteraction
  eulerLagrangeDerivationClosed : L.eulerLagrangeDerivation

def LagrangianGravityCouplingClosed {F : MacroscopicInteractionGravitationalFieldMatterFoundation}
    (L : LagrangianGravityCoupling F) : Prop :=
  L.fieldMatterInteraction ∧ L.eulerLagrangeDerivation

theorem lagrangian_gravity_coupling_closed_from_evidence
    {F : MacroscopicInteractionGravitationalFieldMatterFoundation}
    (L : LagrangianGravityCoupling F) (E : LagrangianGravityCouplingEvidence L) :
    LagrangianGravityCouplingClosed L := by
  exact And.intro E.fieldMatterInteractionClosed E.eulerLagrangeDerivationClosed

end MacroscopicInteractionGravitationalFieldMatterFoundationCanonicalLaneLean
end HautevilleHouse