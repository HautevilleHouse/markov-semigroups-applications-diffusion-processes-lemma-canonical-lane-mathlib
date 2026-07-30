import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean

structure MarkovTransitionKernelPackage where
  stateSpace : Type u
  topology : TopologicalSpace stateSpace
  generator : Type v
  kernelFunction : stateSpace → Set (stateSpace → ℝ)
  fellerProperty : Prop
  conservativeProperty : Prop

structure MarkovTransitionKernelEvidence (K : MarkovTransitionKernelPackage) where
  fellerPropertyClosed : K.fellerProperty
  conservativePropertyClosed : K.conservativeProperty

def MarkovTransitionKernelClosed (K : MarkovTransitionKernelPackage) : Prop :=
  K.fellerProperty ∧ K.conservativeProperty

theorem markov_transition_kernel_closed_from_evidence
    (K : MarkovTransitionKernelPackage) (E : MarkovTransitionKernelEvidence K) :
    MarkovTransitionKernelClosed K :=
  And.intro E.fellerPropertyClosed E.conservativePropertyClosed

end MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean
end HautevilleHouse
