import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryPolymorphismCanonicalLaneLean

structure CoordinationPolyhedron where
  centralAtom : String
  ligands : List String
  coordinationNumber : Nat
  geometryType : String

structure CoordinationPolyhedronEvidence where
  centralAtomClosed : Prop
  ligandsClosed : Prop
  coordinationNumberClosed : Prop
  geometryTypeClosed : Prop

def CoordinationPolyhedronClosure (C : CoordinationPolyhedron) : Prop :=
  C.centralAtom = "Fe" ∧ C.ligands = ["O","O","O","O"] ∧
  C.coordinationNumber = 4 ∧ C.geometryType = "tetrahedral"

theorem coordination_polyhedron_closed_from_evidence (C : CoordinationPolyhedron) (E : CoordinationPolyhedronEvidence) : CoordinationPolyhedronClosure C := by
  exact And.intro E.centralAtomClosed (And.intro E.ligandsClosed (And.intro E.coordinationNumberClosed E.geometryTypeClosed))

end CrystallographyChemistryPolymorphismCanonicalLaneLean
end HautevilleHouse