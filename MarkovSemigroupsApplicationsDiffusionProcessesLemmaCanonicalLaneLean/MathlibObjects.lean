import MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DiffusionSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DiffusionAdmittedObject where
  space : DiffusionSpace
  closedManifold : Prop
  simplyConnected : Prop
  diffusedState : Type
  diffusedTopology : TopologicalSpace diffusedState
  invariantMeasureExists : Prop
  conclusion : invariantMeasureExists

structure DiffusionEndgameState where
  object : DiffusionAdmittedObject

def DiffusionWitnessClosed (O : DiffusionAdmittedObject) : Prop :=
  O.invariantMeasureExists

end MarkovSemigroupsApplicationsDiffusionProcessesLemmaCanonicalLaneLean
end HautevilleHouse