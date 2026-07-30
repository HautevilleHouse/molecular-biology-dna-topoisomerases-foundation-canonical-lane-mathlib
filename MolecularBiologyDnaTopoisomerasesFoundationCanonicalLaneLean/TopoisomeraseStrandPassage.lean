import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean

structure TopoisomeraseStrandPassagePackage where
  enzymeType : String
  dnaSubstrate : String
  transientBreakCreated : Prop
  strandPassageCompleted : Prop
  religationPerformed : Prop

structure TopoisomeraseStrandPassageEvidence (T : TopoisomeraseStrandPassagePackage) where
  transientBreakCreatedClosed : T.transientBreakCreated
  strandPassageCompletedClosed : T.strandPassageCompleted
  religationPerformedClosed : T.religationPerformed

def TopoisomeraseStrandPassageClosed (T : TopoisomeraseStrandPassagePackage) : Prop :=
  T.transientBreakCreated ∧ T.strandPassageCompleted ∧ T.religationPerformed

theorem topoisomerase_strand_passage_closed_from_evidence (T : TopoisomeraseStrandPassagePackage) (E : TopoisomeraseStrandPassageEvidence T) :
    TopoisomeraseStrandPassageClosed T := by
  exact And.intro E.transientBreakCreatedClosed (And.intro E.strandPassageCompletedClosed E.religationPerformedClosed)

end MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean
end HautevilleHouse