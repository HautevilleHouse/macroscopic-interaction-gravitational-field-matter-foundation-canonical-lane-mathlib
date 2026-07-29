import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterFoundationCanonicalLaneLean

structure InitialValuePackage where
  cauchyData : Prop
  constraintEquations : Prop
  wellPosedness : Prop
  globalExistence : Prop

structure InitialValueEvidence (I : InitialValuePackage) where
  cauchyDataClosed : I.cauchyData
  constraintEquationsClosed : I.constraintEquations
  wellPosednessClosed : I.wellPosedness
  globalExistenceClosed : I.globalExistence

def InitialValueClosed (I : InitialValuePackage) : Prop :=
  I.cauchyData ∧ I.constraintEquations ∧ I.wellPosedness ∧ I.globalExistence

theorem initial_value_closed_from_evidence (I : InitialValuePackage)
    (Ev : InitialValueEvidence I) : InitialValueClosed I :=
  And.intro Ev.cauchyDataClosed
    (And.intro Ev.constraintEquationsClosed
      (And.intro Ev.wellPosednessClosed Ev.globalExistenceClosed))

end MacroscopicInteractionGravitationalFieldMatterFoundationCanonicalLaneLean
end HautevilleHouse