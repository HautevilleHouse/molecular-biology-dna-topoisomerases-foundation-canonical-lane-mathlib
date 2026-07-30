import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean

structure DnaTopology where
  linkingNumber : ℤ
  writhe : ℤ
  twist : ℤ

structure TopoisomeraseProtein where
  cutsDna : Prop
  passesStrand : Prop
  religates : Prop
  changesLinkingNumber : ℤ → ℤ

structure TopoisomeraseCertificate where
  dna : DnaTopology
  protein : TopoisomeraseProtein
  relaxationAction : Prop
  supercoilRelaxed : Prop
  atpHydrolysis : Prop

def TopoisomeraseAdmittedObject (C : TopoisomeraseCertificate) : Set TopoisomeraseCertificate := {C}

end MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean
end HautevilleHouse