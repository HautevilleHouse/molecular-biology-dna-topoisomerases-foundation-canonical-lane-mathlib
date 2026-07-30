import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DnaTopoWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean
end HautevilleHouse
