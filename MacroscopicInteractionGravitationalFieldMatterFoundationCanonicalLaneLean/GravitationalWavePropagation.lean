import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MacroscopicInteractionGravitationalFieldMatterFoundationCanonicalLaneLean.EinsteinFieldEquations

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterFoundationCanonicalLaneLean

structure GravitationalWavePackage {L : LorentzianManifoldPackage} (E : EinsteinFieldEquationsPackage L) where
  waveEquation : Prop
  polarizationTensors : Type u
  propagationSpeed : Prop
  energyFlux : Prop
  waveEquationTerm : waveEquation
  propagationSpeedTerm : propagationSpeed
  energyFluxTerm : energyFlux

structure GravitationalWaveEvidence {L : LorentzianManifoldPackage} {E : EinsteinFieldEquationsPackage L} (W : GravitationalWavePackage E) where
  waveEquationClosed : W.waveEquation
  propagationSpeedClosed : W.propagationSpeed
  energyFluxClosed : W.energyFlux

def GravitationalWaveClosed {L : LorentzianManifoldPackage} {E : EinsteinFieldEquationsPackage L} (W : GravitationalWavePackage E) : Prop :=
  W.waveEquation ∧ W.propagationSpeed ∧ W.energyFlux

theorem gravitational_wave_closed_from_evidence {L : LorentzianManifoldPackage} {E : EinsteinFieldEquationsPackage L} (W : GravitationalWavePackage E) (Ev : GravitationalWaveEvidence W) :
    GravitationalWaveClosed W := by
  exact And.intro Ev.waveEquationClosed (And.intro Ev.propagationSpeedClosed Ev.energyFluxClosed)

end MacroscopicInteractionGravitationalFieldMatterFoundationCanonicalLaneLean
end HautevilleHouse
