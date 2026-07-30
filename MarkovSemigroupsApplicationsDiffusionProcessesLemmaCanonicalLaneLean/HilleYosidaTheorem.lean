import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean

structure HilleYosidaPackage (X : Type u) where
  generator : Generator X
  semigroup : MarkovSemigroup X
  resolvent : (ℝ → (X → ℝ) → (X → ℝ))
  resolventEquation : Prop
  generationTheorem : Prop
  coreTheorem : Prop

structure HilleYosidaEvidence (H : HilleYosidaPackage) where
  resolventEquationClosed : H.resolventEquation
  generationTheoremClosed : H.generationTheorem
  coreTheoremClosed : H.coreTheorem

def HilleYosidaClosed (H : HilleYosidaPackage) : Prop :=
  H.resolventEquation ∧ H.generationTheorem ∧ H.coreTheorem

theorem hille_yosida_closed_from_evidence (H : HilleYosidaPackage) (E : HilleYosidaEvidence H) : HilleYosidaClosed H := by
  exact And.intro E.resolventEquationClosed (And.intro E.generationTheoremClosed E.coreTheoremClosed)

end MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean
end HautevilleHouse
