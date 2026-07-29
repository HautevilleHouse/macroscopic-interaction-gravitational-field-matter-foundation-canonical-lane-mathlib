import MacroscopicInteractionGravitationalFieldMatterFoundationCanonicalLaneLean.FieldMatterCoupling

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterFoundationCanonicalLaneLean

structure SpacetimeDynamicsPackage {G : GravitationalFieldStructure}
    (F : FieldMatterCouplingPackage G) where
  evolutionEquations : Prop
  globalHyperbolicity : Prop
  cauchyProblemWellposed : Prop
  singularityFormation : Prop

structure SpacetimeDynamicsEvidence {G : GravitationalFieldStructure}
    {F : FieldMatterCouplingPackage G} (D : SpacetimeDynamicsPackage F) where
  evolutionEquationsClosed : D.evolutionEquations
  globalHyperbolicityClosed : D.globalHyperbolicity
  cauchyProblemWellposedClosed : D.cauchyProblemWellposed
  singularityFormationClosed : D.singularityFormation

def SpacetimeDynamicsClosed {G : GravitationalFieldStructure}
    {F : FieldMatterCouplingPackage G} (D : SpacetimeDynamicsPackage F) : Prop :=
  D.evolutionEquations ∧ D.globalHyperbolicity ∧ D.cauchyProblemWellposed ∧ D.singularityFormation

theorem spacetime_dynamics_closed_from_evidence
    {G : GravitationalFieldStructure} {F : FieldMatterCouplingPackage G}
    (D : SpacetimeDynamicsPackage F) (E : SpacetimeDynamicsEvidence D) :
    SpacetimeDynamicsClosed D := by
  exact And.intro E.evolutionEquationsClosed
    (And.intro E.globalHyperbolicityClosed
      (And.intro E.cauchyProblemWellposedClosed E.singularityFormationClosed))

end HautevilleHouse
end MacroscopicInteractionGravitationalFieldMatterFoundationCanonicalLaneLean