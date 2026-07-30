import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean.MarkovSemigroupDefinition

namespace HautevilleHouse
namespace MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean

structure InvariantMeasure (X : Type u) [MeasurableSpace X] (M : MarkovSemigroup X) where
  measure : Measure X
  invariance : ∀ A, measure A = (∫ x, M.kernel x A ∂ measure)

def invariantMeasureClosed (I : InvariantMeasure X M) : Prop :=
  I.invariance

theorem invariant_measure_closed (I : InvariantMeasure X M) : invariantMeasureClosed I :=
  I.invariance

end HautevilleHouse
end HautevilleHouse