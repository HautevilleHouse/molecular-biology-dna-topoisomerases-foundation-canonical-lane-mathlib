import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean.TopoisomeraseStructures

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean

structure CleavageComplex where
  dna : DnaTopology
  topoisomeraseBound : Prop
  transientCleavage : Prop
  religationCompetent : Prop
  gateStrandCleaved : Prop

def cleavageCompetent (c : CleavageComplex) : Prop :=
  c.topoisomeraseBound ∧ c.transientCleavage ∧ c.religationCompetent ∧ c.gateStrandCleaved

theorem cleavage_competent_from_evidence (c : CleavageComplex) (hB : c.topoisomeraseBound) (hTC : c.transientCleavage) (hRC : c.religationCompetent) (hGS : c.gateStrandCleaved) : cleavageCompetent c := by
  exact And.intro hB (And.intro hTC (And.intro hRC hGS))

end MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean
end HautevilleHouse