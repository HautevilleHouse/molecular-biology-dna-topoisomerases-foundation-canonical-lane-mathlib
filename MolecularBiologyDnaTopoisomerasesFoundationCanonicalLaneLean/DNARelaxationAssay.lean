import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean

structure DNARelaxationAssayPackage where
  supercoiledSubstrate : Prop
  relaxationObserved : Prop
  timeCourseCompleted : Prop
  quantificationMethod : String

structure DNARelaxationAssayEvidence (D : DNARelaxationAssayPackage) where
  supercoiledSubstrateClosed : D.supercoiledSubstrate
  relaxationObservedClosed : D.relaxationObserved
  timeCourseCompletedClosed : D.timeCourseCompleted

def DNARelaxationAssayClosed (D : DNARelaxationAssayPackage) : Prop :=
  D.supercoiledSubstrate ∧ D.relaxationObserved ∧ D.timeCourseCompleted

theorem dna_relaxation_assay_closed_from_evidence (D : DNARelaxationAssayPackage) (E : DNARelaxationAssayEvidence D) :
    DNARelaxationAssayClosed D := by
  exact And.intro E.supercoiledSubstrateClosed (And.intro E.relaxationObservedClosed E.timeCourseCompletedClosed)

end MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean
end HautevilleHouse