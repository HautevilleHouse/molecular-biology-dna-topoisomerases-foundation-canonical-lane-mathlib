import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean

structure TopoisomeraseType where
  typeName : String
  breakMechanism : Prop
  religationMechanism : Prop

def topoisomeraseTypeIB : TopoisomeraseType := {
  typeName := "Type IB"
  breakMechanism := True
  religationMechanism := True
}

def topoisomeraseTypeII : TopoisomeraseType := {
  typeName := "Type II"
  breakMechanism := True
  religationMechanism := True
}

def topoisomeraseFunctions (t : TopoisomeraseType) : Prop :=
  t.breakMechanism ∧ t.religationMechanism ∧ True

end MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean
end HautevilleHouse
