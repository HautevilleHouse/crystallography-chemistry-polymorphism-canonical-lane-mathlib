import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryPolymorphismCanonicalLaneLean

structure Quasicrystal where
  composition : String
  symmetry : String
  diffractionPatternType : String
  approximantPhase : String

structure QuasicrystalEvidence where
  compositionClosed : Prop
  symmetryClosed : Prop
  diffractionPatternTypeClosed : Prop
  approximantPhaseClosed : Prop

def QuasicrystalClosure (Q : Quasicrystal) : Prop :=
  Q.composition = "Al-Mn" ∧ Q.symmetry = "icosahedral" ∧
  Q.diffractionPatternType = "noncrystallographic" ∧ Q.approximantPhase = "cubic"

theorem quasicrystal_closed_from_evidence (Q : Quasicrystal) (E : QuasicrystalEvidence) : QuasicrystalClosure Q := by
  exact And.intro E.compositionClosed (And.intro E.symmetryClosed (And.intro E.diffractionPatternTypeClosed E.approximantPhaseClosed))

end CrystallographyChemistryPolymorphismCanonicalLaneLean
end HautevilleHouse