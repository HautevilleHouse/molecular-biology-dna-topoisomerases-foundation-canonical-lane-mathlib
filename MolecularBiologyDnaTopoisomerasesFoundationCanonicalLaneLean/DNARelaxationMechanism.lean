import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean

structure DNARelaxationMechanismPackage {T : TopoisomeraseTopologyPackage} where
  cleavageComplexFormation : Prop
  rotationSubstrate : Prop
  religationEvent : Prop
  atpDependence : Prop

structure DNARelaxationMechanismEvidence {T : TopoisomeraseTopologyPackage} (R : DNARelaxationMechanismPackage T) where
  cleavageComplexFormationClosed : R.cleavageComplexFormation
  rotationSubstrateClosed : R.rotationSubstrate
  religationEventClosed : R.religationEvent
  atpDependenceClosed : R.atpDependence

def DNARelaxationMechanismClosed {T : TopoisomeraseTopologyPackage} (R : DNARelaxationMechanismPackage T) : Prop :=
  R.cleavageComplexFormation ∧ R.rotationSubstrate ∧ R.religationEvent ∧ R.atpDependence

theorem dna_relaxation_mechanism_closed_from_evidence {T : TopoisomeraseTopologyPackage} (R : DNARelaxationMechanismPackage T) (E : DNARelaxationMechanismEvidence R) : DNARelaxationMechanismClosed R := by
  exact And.intro E.cleavageComplexFormationClosed (And.intro E.rotationSubstrateClosed (And.intro E.religationEventClosed E.atpDependenceClosed))

end MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean
end HautevilleHouse
