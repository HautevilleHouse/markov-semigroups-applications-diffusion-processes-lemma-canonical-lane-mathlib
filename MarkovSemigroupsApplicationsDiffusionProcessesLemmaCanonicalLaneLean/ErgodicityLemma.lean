import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean.InvariantMeasurePackage

namespace HautevilleHouse
namespace MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean

structure ErgodicityLemma (X : Type u) [MeasurableSpace X] (M : MarkovSemigroup X) where
  invariantMeasure : InvariantMeasure X M
  ergodic : ∀ A, A ∈ M.measurableSet ∧ M.invariantSet A → I.measure A = 0 ∨ I.measure Aᶜ = 0

def ergodicityClosed (E : ErgodicityLemma X M) : Prop :=
  invariantMeasureClosed E.invariantMeasure ∧ E.ergodic

theorem ergodicity_closed (E : ErgodicityLemma X M) : ergodicityClosed E :=
  And.intro E.invariantMeasure.invariance E.ergodic

end HautevilleHouse
end HautevilleHouse