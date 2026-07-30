import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean

structure TopoisomeraseEndpointClassificationPackage where
  topologicalOutcome : String
  linkingNumberFinal : Int
  dnaRelaxed : Prop
  catenaneDecatenated : Prop

structure TopoisomeraseEndpointClassificationEvidence (T : TopoisomeraseEndpointClassificationPackage) where
  dnaRelaxedClosed : T.dnaRelaxed
  catenaneDecatenatedClosed : T.catenaneDecatenated

def TopoisomeraseEndpointClassificationClosed (T : TopoisomeraseEndpointClassificationPackage) : Prop :=
  T.dnaRelaxed ∧ T.catenaneDecatenated

theorem topoisomerase_endpoint_classification_closed_from_evidence (T : TopoisomeraseEndpointClassificationPackage) (E : TopoisomeraseEndpointClassificationEvidence T) :
    TopoisomeraseEndpointClassificationClosed T := by
  exact And.intro E.dnaRelaxedClosed E.catenaneDecatenatedClosed

end MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean
end HautevilleHouse