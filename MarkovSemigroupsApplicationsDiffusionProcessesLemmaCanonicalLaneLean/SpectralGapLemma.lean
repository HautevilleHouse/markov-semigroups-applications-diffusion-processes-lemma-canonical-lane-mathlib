import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean

structure SpectralGapPackage {K : MarkovTransitionKernelPackage}
    {G : SemigroupGeneratorPackage K} {D : DiffusionProcessPackage G}
    (I : InvariantMeasurePackage D) where
  spectralGapValue : ℝ
  poincareInequality : Prop
  exponentialConvergence : Prop

structure SpectralGapEvidence {K : MarkovTransitionKernelPackage}
    {G : SemigroupGeneratorPackage K} {D : DiffusionProcessPackage G}
    {I : InvariantMeasurePackage D} (S : SpectralGapPackage I) where
  poincareInequalityClosed : S.poincareInequality
  exponentialConvergenceClosed : S.exponentialConvergence

def SpectralGapClosed {K : MarkovTransitionKernelPackage}
    {G : SemigroupGeneratorPackage K} {D : DiffusionProcessPackage G}
    {I : InvariantMeasurePackage D} (S : SpectralGapPackage I) : Prop :=
  S.poincareInequality ∧ S.exponentialConvergence

theorem spectral_gap_closed_from_evidence
    {K : MarkovTransitionKernelPackage} {G : SemigroupGeneratorPackage K}
    {D : DiffusionProcessPackage G} {I : InvariantMeasurePackage D}
    (S : SpectralGapPackage I) (E : SpectralGapEvidence S) : SpectralGapClosed S :=
  And.intro E.poincareInequalityClosed E.exponentialConvergenceClosed

end MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean
end HautevilleHouse
