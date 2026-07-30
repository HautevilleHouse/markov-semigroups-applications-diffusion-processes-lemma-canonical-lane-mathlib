import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean

structure GeneratorPackage (M : MarkovSemigroupPackage) where
  operatorDomain : Set (M.stateSpace → ℝ)
  infinitesimalGenerator : (M.stateSpace → ℝ) → (M.stateSpace → ℝ)
  coreProperty : Prop
  generatesSemigroup : Prop

structure GeneratorEvidence {M : MarkovSemigroupPackage} (G : GeneratorPackage M) where
  corePropertyClosed : G.coreProperty
  generatesSemigroupClosed : G.generatesSemigroup

def GeneratorClosed {M : MarkovSemigroupPackage} (G : GeneratorPackage M) : Prop :=
  G.coreProperty ∧ G.generatesSemigroup

theorem generator_closed_from_evidence {M : MarkovSemigroupPackage} (G : GeneratorPackage M) (E : GeneratorEvidence G) : GeneratorClosed G := by
  exact And.intro E.corePropertyClosed E.generatesSemigroupClosed

end MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean
end HautevilleHouse