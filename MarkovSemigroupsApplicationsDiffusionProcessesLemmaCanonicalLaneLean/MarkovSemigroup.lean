import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean

structure MarkovSemigroup (X : Type u) where
  stateSpace : X → Prop
  operator : (X → ℝ) → (X → ℝ)
  positivity : ∀ f, (∀ x, 0 ≤ f x) → (∀ x, 0 ≤ operator f x)
  contractivity : ∀ f, sup (|operator f|) ≤ sup (|f|)
  semigroupProperty : ∀ (t s : ℕ), operator^[t+s] = operator^[t] ∘ operator^[s]

structure MarkovSemigroupEvidence (M : MarkovSemigroup) where
  positivityClosed : M.positivity
  contractivityClosed : M.contractivity
  semigroupPropertyClosed : M.semigroupProperty

def MarkovSemigroupClosed (M : MarkovSemigroup) : Prop :=
  M.positivity ∧ M.contractivity ∧ M.semigroupProperty

theorem markov_semigroup_closed_from_evidence (M : MarkovSemigroup) (E : MarkovSemigroupEvidence M) : MarkovSemigroupClosed M := by
  exact And.intro E.positivityClosed (And.intro E.contractivityClosed E.semigroupPropertyClosed)

end MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean
end HautevilleHouse
