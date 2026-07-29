import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterFoundation

structure GravitationalFieldAdmittedObject where
  carrier : Type
  topology : TopologicalSpace carrier
  metric : carrier → carrier → ℝ
  metricPositiveDefinite : ∀ x y, metric x y ≥ 0 ∧ (metric x y = 0 ↔ x = y)
  metricSymmetric : ∀ x y, metric x y = metric y x
  metricTriangle : ∀ x y z, metric x z ≤ metric x y + metric y z
  gravitationalLaw : carrier → carrier → ℝ
  matterDistribution : carrier → ℝ
  compatibility : ∀ x y, gravitationalLaw x y = matterDistribution x * matterDistribution y / (metric x y)^2
  conclusion : compatibility

def GravitationalFieldWitnessClosed (O : GravitationalFieldAdmittedObject) : Prop :=
  O.compatibility

end MacroscopicInteractionGravitationalFieldMatterFoundation
end HautevilleHouse