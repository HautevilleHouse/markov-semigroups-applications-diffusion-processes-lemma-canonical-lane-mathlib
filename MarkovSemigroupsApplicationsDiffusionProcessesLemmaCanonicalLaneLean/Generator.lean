import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean

structure Generator (X : Type u) where
  domain : (X → ℝ) → Prop
  linearOperator : (X → ℝ) → (X → ℝ)
  closedGraph : Prop
  dissipativity : Prop
  rangeCondition : Prop
  coreExistence : Prop

structure GeneratorEvidence (L : Generator) where
  closedGraphClosed : L.closedGraph
  dissipativityClosed : L.dissipativity
  rangeConditionClosed : L.rangeCondition
  coreExistenceClosed : L.coreExistence

def GeneratorClosed (L : Generator) : Prop :=
  L.closedGraph ∧ L.dissipativity ∧ L.rangeCondition ∧ L.coreExistence

theorem generator_closed_from_evidence (L : Generator) (E : GeneratorEvidence L) : GeneratorClosed L := by
  exact And.intro E.closedGraphClosed (And.intro E.dissipativityClosed (And.intro E.rangeConditionClosed E.coreExistenceClosed))

end MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean
end HautevilleHouse
