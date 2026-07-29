import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryPolymorphismCanonicalLaneLean

structure CrystalSystem where
  crystalFamily : String
  latticeCentering : String
  pointGroup : String
  bravaisLatticeType : String
  spaceGroupNumber : Nat

structure CrystalSystemEvidence where
  crystalFamilyClosed : Prop
  latticeCenteringClosed : Prop
  pointGroupClosed : Prop
  bravaisLatticeTypeClosed : Prop
  spaceGroupNumberClosed : Prop

def CrystalSystemClosure (C : CrystalSystem) : Prop :=
  C.crystalFamily = "cubic" ∧ C.latticeCentering = "primitive" ∧ C.pointGroup = "m-3m" ∧
  C.bravaisLatticeType = "cubicP" ∧ C.spaceGroupNumber = 221

theorem crystal_system_closed_from_evidence (C : CrystalSystem) (E : CrystalSystemEvidence) : CrystalSystemClosure C := by
  exact And.intro E.crystalFamilyClosed (And.intro E.latticeCenteringClosed (And.intro E.pointGroupClosed (And.intro E.bravaisLatticeTypeClosed E.spaceGroupNumberClosed)))

end CrystallographyChemistryPolymorphismCanonicalLaneLean
end HautevilleHouse