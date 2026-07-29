import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryPolymorphismCanonicalLaneLean

structure PolymorphismPhase where
  polymorphName : String
  crystalSystemName : String
  stabilityRange : String
  transformationCondition : String

type_enriched PolymorphismPhaseEvidence where
  polymorphNameClosed : Prop
  crystalSystemNameClosed : Prop
  stabilityRangeClosed : Prop
  transformationConditionClosed : Prop

def PolymorphismPhaseClosure (P : PolymorphismPhase) : Prop :=
  P.polymorphName = "α-Quartz" ∧ P.crystalSystemName = "Trigonal" ∧
  P.stabilityRange = "< 573 °C" ∧ P.transformationCondition = "displacive"

theorem polymorphism_phase_closed_from_evidence (P : PolymorphismPhase) (E : PolymorphismPhaseEvidence) : PolymorphismPhaseClosure P := by
  exact And.intro E.polymorphNameClosed (And.intro E.crystalSystemNameClosed (And.intro E.stabilityRangeClosed E.transformationConditionClosed))

end CrystallographyChemistryPolymorphismCanonicalLaneLean
end HautevilleHouse