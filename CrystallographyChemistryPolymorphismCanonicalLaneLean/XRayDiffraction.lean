import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryPolymorphismCanonicalLaneLean

structure XRayDiffractionPackage where
  crystalSystem : String
  latticeSpacing : Float
  wavelength : Float
  braggAngle : Float
  millerIndices : (Int × Int × Int)

structure XRayDiffractionEvidence (D : XRayDiffractionPackage) where
  braggAngleFormula : D.latticeSpacing * Real.sin D.braggAngle = D.wavelength / (2 : Float) * Real.sin D.braggAngle
  structureFactorComputed : Prop

def XRayDiffractionClosed (D : XRayDiffractionPackage) : Prop :=
  D.latticeSpacing > 0 ∧ D.wavelength > 0

theorem xray_diffraction_closed_from_evidence (D : XRayDiffractionPackage) (E : XRayDiffractionEvidence D) : XRayDiffractionClosed D :=
  And.intro (by positivity) (by positivity)

end CrystallographyChemistryPolymorphismCanonicalLaneLean
end HautevilleHouse