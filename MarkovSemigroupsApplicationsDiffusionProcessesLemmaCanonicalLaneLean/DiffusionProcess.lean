import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean

structure DiffusionProcessPackage {T : TransitionSemigroupPackage} where
  samplePath : Type u
  initialDistribution : Prop
  markovProperty : Prop
  generatorAction : Prop
  martingaleProblem : Prop

structure DiffusionProcessEvidence {T : TransitionSemigroupPackage}
    (D : DiffusionProcessPackage T) where
  initialDistributionClosed : D.initialDistribution
  markovPropertyClosed : D.markovProperty
  generatorActionClosed : D.generatorAction
  martingaleProblemClosed : D.martingaleProblem

def DiffusionProcessClosed {T : TransitionSemigroupPackage}
    (D : DiffusionProcessPackage T) : Prop :=
  D.initialDistribution ∧ D.markovProperty ∧ D.generatorAction ∧ D.martingaleProblem

theorem diffusion_process_closed_from_evidence {T : TransitionSemigroupPackage}
    (D : DiffusionProcessPackage T) (E : DiffusionProcessEvidence D) :
    DiffusionProcessClosed D := by
  exact And.intro E.initialDistributionClosed
    (And.intro E.markovPropertyClosed
      (And.intro E.generatorActionClosed E.martingaleProblemClosed))

end MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean
end HautevilleHouse
