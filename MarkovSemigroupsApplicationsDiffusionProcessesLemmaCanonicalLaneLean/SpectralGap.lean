import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean

structure SpectralGapPackage {M : MarkovSemigroupPackage} (I : InvariantMeasurePackage M) where
  spectrumBounds : ℝ → ℝ
  gapPositivity : Prop
  exponentialConvergence : Prop

structure SpectralGapEvidence {M : MarkovSemigroupPackage} {I : InvariantMeasurePackage M} (S : SpectralGapPackage I) where
  gapPositivityClosed : S.gapPositivity
  exponentialConvergenceClosed : S.exponentialConvergence

def SpectralGapClosed {M : MarkovSemigroupPackage} {I : InvariantMeasurePackage M} (S : SpectralGapPackage I) : Prop :=
  S.gapPositivity ∧ S.exponentialConvergence

theorem spectral_gap_closed_from_evidence {M : MarkovSemigroupPackage} {I : InvariantMeasurePackage M} (S : SpectralGapPackage I) (E : SpectralGapEvidence S) : SpectralGapClosed S := by
  exact And.intro E.gapPositivityClosed E.exponentialConvergenceClosed

end MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean
end HautevilleHouse