import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterFoundationCanonicalLaneLean

structure GeodesicMotionPackage where
  geodesicEquation : Prop
  timelikeGeodesics : Prop
  nullGeodesics : Prop
  causalStructure : Prop

structure GeodesicMotionEvidence (G : GeodesicMotionPackage) where
  geodesicEquationClosed : G.geodesicEquation
  timelikeGeodesicsClosed : G.timelikeGeodesics
  nullGeodesicsClosed : G.nullGeodesics
  causalStructureClosed : G.causalStructure

def GeodesicMotionClosed (G : GeodesicMotionPackage) : Prop :=
  G.geodesicEquation ∧ G.timelikeGeodesics ∧ G.nullGeodesics ∧ G.causalStructure

theorem geodesic_motion_closed_from_evidence (G : GeodesicMotionPackage)
    (Ev : GeodesicMotionEvidence G) : GeodesicMotionClosed G :=
  And.intro Ev.geodesicEquationClosed
    (And.intro Ev.timelikeGeodesicsClosed
      (And.intro Ev.nullGeodesicsClosed Ev.causalStructureClosed))

end MacroscopicInteractionGravitationalFieldMatterFoundationCanonicalLaneLean
end HautevilleHouse