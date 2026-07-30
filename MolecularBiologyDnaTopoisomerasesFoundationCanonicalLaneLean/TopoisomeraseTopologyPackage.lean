import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean

structure TopoisomeraseTopologyPackage where
  dnaStrandCarrier : Type u
  supercoilingState : Prop
  linkingNumberChange : Prop
  strandPassageEvent : Prop
  relaxationCycle : Prop

structure TopoisomeraseTopologyEvidence (T : TopoisomeraseTopologyPackage) where
  supercoilingStateClosed : T.supercoilingState
  linkingNumberChangeClosed : T.linkingNumberChange
  strandPassageEventClosed : T.strandPassageEvent
  relaxationCycleClosed : T.relaxationCycle

def TopoisomeraseTopologyClosed (T : TopoisomeraseTopologyPackage) : Prop :=
  T.supercoilingState ∧ T.linkingNumberChange ∧ T.strandPassageEvent ∧ T.relaxationCycle

theorem topoisomerase_topology_closed_from_evidence (T : TopoisomeraseTopologyPackage) (E : TopoisomeraseTopologyEvidence T) : TopoisomeraseTopologyClosed T := by
  exact And.intro E.supercoilingStateClosed (And.intro E.linkingNumberChangeClosed (And.intro E.strandPassageEventClosed E.relaxationCycleClosed))

end MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean
end HautevilleHouse
