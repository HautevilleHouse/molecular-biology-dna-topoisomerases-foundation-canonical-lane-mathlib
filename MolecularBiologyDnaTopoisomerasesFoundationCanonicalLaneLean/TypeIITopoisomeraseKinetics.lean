import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean

structure TypeIITopoisomeraseKineticsPackage {T : TopoisomeraseTopologyPackage} {R : DNARelaxationMechanismPackage T} where
  atpHydrolysisRate : Prop
  gateOpeningStep : Prop
  strandPassageStep : Prop
  gateClosingStep : Prop
  processivity : Prop

structure TypeIITopoisomeraseKineticsEvidence {T : TopoisomeraseTopologyPackage} {R : DNARelaxationMechanismPackage T} (K : TypeIITopoisomeraseKineticsPackage T R) where
  atpHydrolysisRateClosed : K.atpHydrolysisRate
  gateOpeningStepClosed : K.gateOpeningStep
  strandPassageStepClosed : K.strandPassageStep
  gateClosingStepClosed : K.gateClosingStep
  processivityClosed : K.processivity

def TypeIITopoisomeraseKineticsClosed {T : TopoisomeraseTopologyPackage} {R : DNARelaxationMechanismPackage T} (K : TypeIITopoisomeraseKineticsPackage T R) : Prop :=
  K.atpHydrolysisRate ∧ K.gateOpeningStep ∧ K.strandPassageStep ∧ K.gateClosingStep ∧ K.processivity

theorem type_ii_topoisomerase_kinetics_closed_from_evidence {T : TopoisomeraseTopologyPackage} {R : DNARelaxationMechanismPackage T} (K : TypeIITopoisomeraseKineticsPackage T R) (E : TypeIITopoisomeraseKineticsEvidence K) : TypeIITopoisomeraseKineticsClosed K := by
  exact And.intro E.atpHydrolysisRateClosed (And.intro E.gateOpeningStepClosed (And.intro E.strandPassageStepClosed (And.intro E.gateClosingStepClosed E.processivityClosed)))

end MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean
end HautevilleHouse
