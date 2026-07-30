import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean

structure KolmogorovBackwardEquationPackage {T : TransitionSemigroupPackage}
    (D : DiffusionProcessPackage T) where
  generatorDomain : Prop
  backwardEquationSatisfied : Prop
  solutionUniqueness : Prop

structure KolmogorovBackwardEquationEvidence {T : TransitionSemigroupPackage}
    {D : DiffusionProcessPackage T} (K : KolmogorovBackwardEquationPackage D) where
  generatorDomainClosed : K.generatorDomain
  backwardEquationSatisfiedClosed : K.backwardEquationSatisfied
  solutionUniquenessClosed : K.solutionUniqueness

def KolmogorovBackwardEquationClosed {T : TransitionSemigroupPackage}
    {D : DiffusionProcessPackage T} (K : KolmogorovBackwardEquationPackage D) : Prop :=
  K.generatorDomain ∧ K.backwardEquationSatisfied ∧ K.solutionUniqueness

theorem kolmogorov_backward_equation_closed_from_evidence
    {T : TransitionSemigroupPackage} {D : DiffusionProcessPackage T}
    (K : KolmogorovBackwardEquationPackage D)
    (E : KolmogorovBackwardEquationEvidence K) : KolmogorovBackwardEquationClosed K := by
  exact And.intro E.generatorDomainClosed
    (And.intro E.backwardEquationSatisfiedClosed E.solutionUniquenessClosed)

end MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean
end HautevilleHouse
