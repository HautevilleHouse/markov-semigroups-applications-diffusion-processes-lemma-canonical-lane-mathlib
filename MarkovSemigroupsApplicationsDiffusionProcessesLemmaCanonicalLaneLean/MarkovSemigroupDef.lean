import MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean

structure MarkovSemigroup (X : Type) [TopologicalSpace X] where
  semigroup : ℝ≥0 → (X → X)
  identityAtZero : semigroup 0 = id
  semigroupProperty : ∀ t s, semigroup (t + s) = semigroup t ∘ semigroup s
  continuity : ∀ t, Continuous (semigroup t)
  strongContinuity : ∀ f : C(X, ℝ), Continuous (λ t => semigroup t (f ·))

def MarkovSemigroupClosed (M : MarkovSemigroup X) : Prop :=
  M.identityAtZero ∧ M.semigroupProperty ∧ M.continuity ∧ M.strongContinuity

theorem markov_semigroup_closed_iff (M : MarkovSemigroup X) : MarkovSemigroupClosed M := by
  exact And.intro M.identityAtZero (And.intro M.semigroupProperty (And.intro M.continuity M.strongContinuity))

end MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean
end HautevilleHouse