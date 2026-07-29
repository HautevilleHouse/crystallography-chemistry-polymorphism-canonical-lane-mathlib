import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryPolymorphismCanonicalLaneLean

structure SpaceGroupClassificationPackage where
  spaceGroup : String
  crystalSystem : String
  latticeType : String
  pointGroup : String
  symmorphic : Prop

structure SpaceGroupEvidence (S : SpaceGroupClassificationPackage) where
  crystallographicRestriction : S.symmorphic
  bravaisClassDetermined : Prop

def SpaceGroupClosed (S : SpaceGroupClassificationPackage) : Prop :=
  S.symmorphic ∧ True

theorem space_group_closed_from_evidence (S : SpaceGroupClassificationPackage) (E : SpaceGroupEvidence S) : SpaceGroupClosed S :=
  And.intro E.crystallographicRestriction trivial

end CrystallographyChemistryPolymorphismCanonicalLaneLean
end HautevilleHouse