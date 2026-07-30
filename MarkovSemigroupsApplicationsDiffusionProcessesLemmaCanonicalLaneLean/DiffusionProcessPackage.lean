import MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean.MarkovSemigroupDef

namespace HautevilleHouse
namespace MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean

structure DiffusionProcessPackage {X : Type} [TopologicalSpace X] (M : MarkovSemigroup X) where
  generator : (C∞(X, ℝ) → C∞(X, ℝ))
  domainDense : Prop
  generatorCore : Prop
  diffusions : ℝ≥0 → X → X
  generatorOnCore : ∀ f ∈ generatorCore, ∂/∂t (M.semigroup t f) | t=0 = generator f

def DiffusionProcessPackageClosed {X : Type} [TopologicalSpace X] {M : MarkovSemigroup X} (D : DiffusionProcessPackage M) : Prop :=
  D.domainDense ∧ D.generatorCore ∧ D.generatorOnCore

theorem diffusion_process_package_closed_iff {X : Type} [TopologicalSpace X] {M : MarkovSemigroup X} (D : DiffusionProcessPackage M) : DiffusionProcessPackageClosed D := by
  exact And.intro D.domainDense (And.intro D.generatorCore D.generatorOnCore)

end MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean
end HautevilleHouse