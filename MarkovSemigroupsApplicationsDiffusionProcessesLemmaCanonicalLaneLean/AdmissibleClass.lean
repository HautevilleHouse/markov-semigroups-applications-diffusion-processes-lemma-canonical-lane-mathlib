import MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : DiffusionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DiffusionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean
end HautevilleHouse