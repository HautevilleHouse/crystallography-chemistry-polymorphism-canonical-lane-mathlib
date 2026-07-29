import canonicalLaneMathlib.AdmissibleClass
import CrystallographyChemistryPolymorphismCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryPolymorphismCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end CrystallographyChemistryPolymorphismCanonicalLaneLean
end HautevilleHouse