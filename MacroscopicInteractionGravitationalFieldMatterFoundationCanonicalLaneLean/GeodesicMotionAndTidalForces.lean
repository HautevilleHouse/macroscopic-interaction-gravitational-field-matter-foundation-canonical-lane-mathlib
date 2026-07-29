import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MacroscopicInteractionGravitationalFieldMatterFoundationCanonicalLaneLean.SpacetimeMetricField

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterFoundationCanonicalLaneLean

structure GeodesicMotionPackage (L : LorentzianManifoldPackage) where
  geodesicEquation : Prop
  affineParameter : Type u
  timelikeGeodesics : Prop
  nullGeodesics : Prop
  geodesicEquationTerm : geodesicEquation
  timelikeGeodesicsTerm : timelikeGeodesics
  nullGeodesicsTerm : nullGeodesics

structure TidalTensorPackage (L : LorentzianManifoldPackage) where
  riemannTensor : Type u
  jacobiEquation : Prop
  tidalDeformation : Prop
  riemannTensorTerm : riemannTensor
  jacobiEquationTerm : jacobiEquation
  tidalDeformationTerm : tidalDeformation

structure GeodesicTidalEvidence {L : LorentzianManifoldPackage} (G : GeodesicMotionPackage L) (T : TidalTensorPackage L) where
  geodesicEquationClosed : G.geodesicEquation
  jacobiEquationClosed : T.jacobiEquation

def GeodesicMotionClosed {L : LorentzianManifoldPackage} (G : GeodesicMotionPackage L) : Prop :=
  G.geodesicEquation ∧ G.timelikeGeodesics ∧ G.nullGeodesics

def TidalTensorClosed {L : LorentzianManifoldPackage} (T : TidalTensorPackage L) : Prop :=
  T.riemannTensor ≠ ∅ ∧ T.jacobiEquation ∧ T.tidalDeformation

theorem geodesic_motion_closed_from_evidence {L : LorentzianManifoldPackage} (G : GeodesicMotionPackage L) (E : GeodesicMotionPackage L) : GeodesicMotionClosed G := by
  exact And.intro G.geodesicEquationTerm (And.intro G.timelikeGeodesicsTerm G.nullGeodesicsTerm)

theorem tidal_tensor_closed_from_evidence {L : LorentzianManifoldPackage} (T : TidalTensorPackage L) (E : TidalTensorPackage L) : TidalTensorClosed T := by
  exact And.intro T.riemannTensorTerm (And.intro T.jacobiEquationTerm T.tidalDeformationTerm)

end MacroscopicInteractionGravitationalFieldMatterFoundationCanonicalLaneLean
end HautevilleHouse
