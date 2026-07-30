import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean

structure KolmogorovEquationsPackage (X : Type u) where
  forwardEquation : (X → ℝ) → (X → ℝ) → Prop
  backwardEquation : (X → ℝ) → (X → ℝ) → Prop
  transitionDensity : X → X → ℝ → ℝ
  uniqueness : Prop
  regularity : Prop

structure KolmogorovEquationsEvidence (K : KolmogorovEquationsPackage) where
  forwardEquationClosed : K.forwardEquation
  backwardEquationClosed : K.backwardEquation
  uniquenessClosed : K.uniqueness
  regularityClosed : K.regularity

def KolmogorovEquationsClosed (K : KolmogorovEquationsPackage) : Prop :=
  K.forwardEquation ∧ K.backwardEquation ∧ K.uniqueness ∧ K.regularity

theorem kolmogorov_equations_closed_from_evidence (K : KolmogorovEquationsPackage) (E : KolmogorovEquationsEvidence K) : KolmogorovEquationsClosed K := by
  exact And.intro E.forwardEquationClosed (And.intro E.backwardEquationClosed (And.intro E.uniquenessClosed E.regularityClosed))

end MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean
end HautevilleHouse
