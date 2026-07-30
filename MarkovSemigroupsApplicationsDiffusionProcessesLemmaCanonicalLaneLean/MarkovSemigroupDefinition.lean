import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean

structure MarkovSemigroupPackage where
  stateSpace : Type u
  transitionKernel : stateSpace → Set (stateSpace → ℝ) → stateSpace → ℝ
  semigroupProperty : Prop
  positivity : Prop
  contractivity : Prop
  strongContinuity : Prop

structure MarkovSemigroupEvidence (M : MarkovSemigroupPackage) where
  semigroupPropertyClosed : M.semigroupProperty
  positivityClosed : M.positivity
  contractivityClosed : M.contractivity
  strongContinuityClosed : M.strongContinuity

def MarkovSemigroupClosed (M : MarkovSemigroupPackage) : Prop :=
  M.semigroupProperty ∧ M.positivity ∧ M.contractivity ∧ M.strongContinuity

theorem markov_semigroup_closed_from_evidence (M : MarkovSemigroupPackage) (E : MarkovSemigroupEvidence M) : MarkovSemigroupClosed M := by
  exact And.intro E.semigroupPropertyClosed (And.intro E.positivityClosed (And.intro E.contractivityClosed E.strongContinuityClosed))

end MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean
end HautevilleHouse