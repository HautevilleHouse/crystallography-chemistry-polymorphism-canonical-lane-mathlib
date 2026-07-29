import canonicalLaneMathlib.AdmissibleClass
import CrystallographyChemistryPolymorphismCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryPolymorphismCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CrystallographyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusions

end CrystallographyChemistryPolymorphismCanonicalLaneLean
end HautevilleHouse