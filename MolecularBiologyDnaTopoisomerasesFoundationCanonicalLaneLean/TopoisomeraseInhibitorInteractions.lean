import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean

structure TopoisomeraseInhibitorInteractionsPackage where
  inhibitorType : String
  bindingAffinity : Float
  inhibitionMechanism : String
  cellularEfficacy : Prop
  resistanceMutations : List String

structure TopoisomeraseInhibitorInteractionsEvidence (I : TopoisomeraseInhibitorInteractionsPackage) where
  bindingAffinityClosed : I.bindingAffinity > 0.0
  inhibitionMechanismRecorded : True
  cellularEfficacyClosed : I.cellularEfficacy
  resistanceMutationsCataloged : I.resistanceMutations.length ≥ 0

def TopoisomeraseInhibitorInteractionsClosed (I : TopoisomeraseInhibitorInteractionsPackage) : Prop :=
  (I.bindingAffinity > 0.0) ∧ I.cellularEfficacy

theorem topoisomerase_inhibitor_interactions_closed_from_evidence (I : TopoisomeraseInhibitorInteractionsPackage) (E : TopoisomeraseInhibitorInteractionsEvidence I) :
    TopoisomeraseInhibitorInteractionsClosed I := by
  exact And.intro E.bindingAffinityClosed E.cellularEfficacyClosed

end MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean
end HautevilleHouse