import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean

structure SemigroupGeneratorPackage {K : MarkovTransitionKernelPackage}
    (T : MarkovTransitionKernelPackage) where
  generatorDomain : Set (T.stateSpace → ℝ)
  generatorAction : (T.stateSpace → ℝ) → (T.stateSpace → ℝ)
  coreProperty : Prop
  closableProperty : Prop

structure SemigroupGeneratorEvidence {K : MarkovTransitionKernelPackage}
    {T : MarkovTransitionKernelPackage} (G : SemigroupGeneratorPackage T) where
  corePropertyClosed : G.coreProperty
  closablePropertyClosed : G.closableProperty

def SemigroupGeneratorClosed {K : MarkovTransitionKernelPackage}
    {T : MarkovTransitionKernelPackage} (G : SemigroupGeneratorPackage T) : Prop :=
  G.coreProperty ∧ G.closableProperty

theorem semigroup_generator_closed_from_evidence
    {K : MarkovTransitionKernelPackage} {T : MarkovTransitionKernelPackage}
    (G : SemigroupGeneratorPackage T) (E : SemigroupGeneratorEvidence G) :
    SemigroupGeneratorClosed G :=
  And.intro E.corePropertyClosed E.closablePropertyClosed

end MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean
end HautevilleHouse
