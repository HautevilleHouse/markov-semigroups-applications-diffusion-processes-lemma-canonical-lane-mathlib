import MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean.DiffusionProcessPackage

namespace HautevilleHouse
namespace MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean

structure InvariantMeasure {X : Type} [TopologicalSpace X] (M : MarkovSemigroup X) where
  measure : Measure X
  invariance : ∀ t, measure (M.semigroup t ·) = measure

def InvariantMeasureExists {X : Type} [TopologicalSpace X] (M : MarkovSemigroup X) : Prop :=
  ∃ (μ : Measure X), μ ≠ 0 ∧ ∀ t, μ = μ.map (M.semigroup t)

theorem invariant_measure_exists_equiv {X : Type} [TopologicalSpace X] (M : MarkovSemigroup X) : InvariantMeasureExists M ↔ ∃ (I : InvariantMeasure M), True := by
  constructor
  · intro h; rcases h with ⟨μ, hμ, h⟩; refine ⟨⟨μ, h⟩, trivial⟩
  · intro h; rcases h with ⟨I, _⟩; refine ⟨I.measure, ?_, I.invariance⟩; exact I.measure ≠ 0

end MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean
end HautevilleHouse