import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean

structure TransitionSemigroupPackage where
  stateSpace : Type u
  topology : TopologicalSpace stateSpace
  generator : Type v
  semigroup : Type w
  fellerProperty : Prop
  conservativeProperty : Prop
  generatorCore : Prop

structure TransitionSemigroupEvidence (T : TransitionSemigroupPackage) where
  fellerPropertyClosed : T.fellerProperty
  conservativePropertyClosed : T.conservativeProperty
  generatorCoreClosed : T.generatorCore

def TransitionSemigroupClosed (T : TransitionSemigroupPackage) : Prop :=
  T.fellerProperty ∧ T.conservativeProperty ∧ T.generatorCore

theorem transition_semigroup_closed_from_evidence (T : TransitionSemigroupPackage)
    (E : TransitionSemigroupEvidence T) : TransitionSemigroupClosed T := by
  exact And.intro E.fellerPropertyClosed (And.intro E.conservativePropertyClosed E.generatorCoreClosed)

end MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean
end HautevilleHouse
