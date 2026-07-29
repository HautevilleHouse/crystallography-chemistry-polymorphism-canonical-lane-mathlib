import CanonicalCrystallography.Basic

namespace HautevilleHouse
namespace CrystallographyChemistryPolymorphismCanonicalLaneLean

structure CrystallographySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CrystallographyAdmittedObject where
  space : CrystallographySpace
  isCrystal : Prop
  hasBravaisLattice : Prop
  hasSpaceGroup : Prop
  model : Type
  modelTopology : TopologicalSpace model
  isomorphicToModel : Prop
  conclusion : isomorphicToModel

def CrystallographyWitnessClosed (O : CrystallographyAdmittedObject) : Prop :=
  O.isomorphicToModel

end CrystallographyChemistryPolymorphismCanonicalLaneLean
end HautevilleHouse