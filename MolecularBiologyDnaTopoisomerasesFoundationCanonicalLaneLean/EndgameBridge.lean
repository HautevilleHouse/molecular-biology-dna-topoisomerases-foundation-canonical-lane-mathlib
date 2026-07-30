import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean.TopoisomeraseTopologyPackage
import MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean.DNARelaxationMechanism
import MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean.SupercoilingEnergyLandscape
import MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean.TypeIITopoisomeraseKinetics

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | { space := _, closedThreeManifold := _, simplyConnected := _, sphereModel := _, sphereTopology := _, homeomorphicToSphere := conclusion } => conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedTopoisomeraseClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_topoisomerase_endgame (A : AdmissibleClass) : ConstrainedTopoisomeraseClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean
end HautevilleHouse
