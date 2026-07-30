import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean.TopoisomerasePoincareAdmittedObject

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean

def bridgeClosed (obj : TopoisomeraseAdmittedObject) : Prop :=
  obj.topologyResolved

def gateClosed (obj : TopoisomeraseAdmittedObject) : Prop :=
  obj.cleavageCompetent ∧ obj.atpGateClosed ∧ obj.inhibitorClosed ∧ obj.relaxationComplete

def ConstrainedTopoisomeraseClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed (A.object : TopoisomeraseAdmittedObject) ∧ gateClosed (A.object : TopoisomeraseAdmittedObject)

theorem bridge_from_admissible_class (A : AdmissibleClass) (obj : TopoisomeraseAdmittedObject) : bridgeClosed obj := by
  exact obj.topologyResolved

theorem gate_from_admissible_class (A : AdmissibleClass) (obj : TopoisomeraseAdmittedObject) : gateClosed obj := by
  exact And.intro obj.cleavageCompetent (And.intro obj.atpGateClosed (And.intro obj.inhibitorClosed obj.relaxationComplete))

theorem topoisomerase_endgame (A : AdmissibleClass) (obj : TopoisomeraseAdmittedObject) : ConstrainedTopoisomeraseClosure A := by
  exact And.intro (bridge_from_admissible_class A obj) (gate_from_admissible_class A obj)

end MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean
end HautevilleHouse