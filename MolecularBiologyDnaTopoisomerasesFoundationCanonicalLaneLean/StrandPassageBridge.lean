import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ∃ (C : TopoisomeraseCertificate), C.protein.cutsDna ∧ C.protein.passesStrand ∧ C.protein.religates ∧ C.protein.changesLinkingNumber = (λx => x)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean
end HautevilleHouse