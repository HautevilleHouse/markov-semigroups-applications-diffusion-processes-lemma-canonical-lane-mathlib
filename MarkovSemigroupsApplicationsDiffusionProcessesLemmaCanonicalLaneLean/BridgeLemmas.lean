import MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DiffusionWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean
end HautevilleHouse