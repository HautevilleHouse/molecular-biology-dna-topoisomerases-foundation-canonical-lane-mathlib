import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean

structure DnaTopoAdmittedObject where
  doubleStrandBreak : Prop
  religation : Prop
  supercoilRelaxation : Prop
  topoisomeraseMechanism : Prop

def DnaTopoWitnessClosed (O : DnaTopoAdmittedObject) : Prop :=
  O.doubleStrandBreak ∧ O.religation ∧ O.supercoilRelaxation

structure AdmissibleClass where
  object : DnaTopoAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DnaTopoWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean
end HautevilleHouse
