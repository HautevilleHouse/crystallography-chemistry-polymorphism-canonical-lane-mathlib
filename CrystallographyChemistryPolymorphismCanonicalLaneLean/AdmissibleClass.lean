import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryPolymorphismCanonicalLaneLean

structure CrystallographyAdmittedObject where
  crystalSystem : String
  latticeType : String
  spaceGroup : String
  lattConstrainSatisfied : Prop
  conclusions : lattConstrainSatisfied

structure AdmissibleClass where
  object : CrystallographyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CrystallographyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def CrystallographyWitnessClosed (O : CrystallographyAdmittedObject) : Prop :=
  O.lattConstrainSatisfied

end CrystallographyChemistryPolymorphismCanonicalLaneLean
end HautevilleHouse