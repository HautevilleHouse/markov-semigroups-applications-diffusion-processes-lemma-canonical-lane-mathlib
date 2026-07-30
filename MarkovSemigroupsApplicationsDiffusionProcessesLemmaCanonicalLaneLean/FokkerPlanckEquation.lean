import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean

structure FokkerPlanckPackage {M : MarkovSemigroupPackage} (D : DiffusionProcessPackage M) where
  transitionDensity : M.stateSpace → M.stateSpace → ℝ → ℝ
  forwardEquation : Prop
  adjointRelation : Prop

structure FokkerPlanckEvidence {M : MarkovSemigroupPackage} {D : DiffusionProcessPackage M} (F : FokkerPlanckPackage D) where
  forwardEquationClosed : F.forwardEquation
  adjointRelationClosed : F.adjointRelation

def FokkerPlanckClosed {M : MarkovSemigroupPackage} {D : DiffusionProcessPackage M} (F : FokkerPlanckPackage D) : Prop :=
  F.forwardEquation ∧ F.adjointRelation

theorem fokker_planck_closed_from_evidence {M : MarkovSemigroupPackage} {D : DiffusionProcessPackage M} (F : FokkerPlanckPackage D) (E : FokkerPlanckEvidence F) : FokkerPlanckClosed F := by
  exact And.intro E.forwardEquationClosed E.adjointRelationClosed

end MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean
end HautevilleHouse