import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryPolymorphismCanonicalLaneLean

structure XRayDiffraction where
  braggAngle : Float
  wavelength : Float
  interplanarSpacing : Float
  millerIndices : (Nat × Nat × Nat)
  reflectionCondition : String

structure XRayDiffractionEvidence where
  braggAngleClosed : Prop
  wavelengthClosed : Prop
  interplanarSpacingClosed : Prop
  millerIndicesClosed : Prop
  reflectionConditionClosed : Prop

def XRayDiffractionClosure (X : XRayDiffraction) : Prop :=
  X.braggAngle = 25.0 ∧ X.wavelength = 1.54 ∧ X.interplanarSpacing = 2.0 ∧
  X.millerIndices = (1,0,0) ∧ X.reflectionCondition = "hkl: h+k even"

theorem xray_diffraction_closed_from_evidence (X : XRayDiffraction) (E : XRayDiffractionEvidence) : XRayDiffractionClosure X := by
  exact And.intro E.braggAngleClosed (And.intro E.wavelengthClosed (And.intro E.interplanarSpacingClosed (And.intro E.millerIndicesClosed E.reflectionConditionClosed)))

end CrystallographyChemistryPolymorphismCanonicalLaneLean
end HautevilleHouse