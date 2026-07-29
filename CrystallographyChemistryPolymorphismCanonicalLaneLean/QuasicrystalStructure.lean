import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryPolymorphismCanonicalLaneLean

structure QuasicrystalPackage where
  chemicalComposition : String
  pointGroup : String
  diffractionPattern : List (Float × Float)
  aperiodicOrder : Prop

structure QuasicrystalEvidence (Q : QuasicrystalPackage) where
  nonCrystallographicSymmetry : Q.aperiodicOrder
  indexingScheme : List (Int × Int × Int × Int) 

def QuasicrystalClosed (Q : QuasicrystalPackage) : Prop :=
  Q.aperiodicOrder

theorem quasicrystal_closed_from_evidence (Q : QuasicrystalPackage) (E : QuasicrystalEvidence Q) : QuasicrystalClosed Q :=
  E.nonCrystallographicSymmetry

end CrystallographyChemistryPolymorphismCanonicalLaneLean
end HautevilleHouse