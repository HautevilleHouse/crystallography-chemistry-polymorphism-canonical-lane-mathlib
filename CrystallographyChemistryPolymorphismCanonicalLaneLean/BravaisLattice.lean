import canonicalLaneMathlib.AdmissibleClass
import CrystallographyChemistryPolymorphismCanonicalLaneLean.SpaceGroupClassification

namespace HautevilleHouse
namespace CrystallographyChemistryPolymorphismCanonicalLaneLean

structure BravaisLatticePackage where
  latticeType : String
  centering : String
  unitCellParams : List Float
  primitiveCellVolume : Float

structure BravaisLatticeEvidence (B : BravaisLatticePackage) where
  reducedCellForm : B.primitiveCellVolume > 0
  centeringConsistent : Prop

def BravaisLatticeClosed (B : BravaisLatticePackage) : Prop :=
  B.primitiveCellVolume > 0 ∧ True

theorem bravais_lattice_closed_from_evidence (B : BravaisLatticePackage) (E : BravaisLatticeEvidence B) : BravaisLatticeClosed B :=
  And.intro E.reducedCellForm trivial

end CrystallographyChemistryPolymorphismCanonicalLaneLean
end HautevilleHouse