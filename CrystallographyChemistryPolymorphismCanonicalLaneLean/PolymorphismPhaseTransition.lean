import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryPolymorphismCanonicalLaneLean

structure PolymorphismPackage where
  crystalSystemA : String
  crystalSystemB : String
  transitionTemperature : Float
  pressure : Float
  reversible : Prop

structure PolymorphismEvidence (P : PolymorphismPackage) where
  transitionThermodynamic : (P.transitionTemperature > 0) ∧ (P.pressure ≥ 0)
  connectivityEstablished : P.reversible ∨ ¬ P.reversible

def PolymorphismClosed (P : PolymorphismPackage) : Prop :=
  P.transitionTemperature > 0 ∧ P.pressure ≥ 0

theorem polymorphism_closed_from_evidence (P : PolymorphismPackage) (E : PolymorphismEvidence P) : PolymorphismClosed P :=
  E.transitionThermodynamic

end CrystallographyChemistryPolymorphismCanonicalLaneLean
end HautevilleHouse