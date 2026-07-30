import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean

structure TopoisomeraseSupercoilRelaxationPackage where
  dnaMoleculeType : Type u
  linkingNumber : dnaMoleculeType → ℤ
  writhe : dnaMoleculeType → ℤ
  twist : dnaMoleculeType → ℤ
  relaxedState : dnaMoleculeType
  supercoiledState : dnaMoleculeType
  relaxationReaction : Prop
  linkingNumberConservation : Prop
  writheTwistDecomposition : Prop

structure TopoisomeraseSupercoilRelaxationEvidence (P : TopoisomeraseSupercoilRelaxationPackage) where
  relaxationReactionClosed : P.relaxationReaction
  linkingNumberConservationClosed : P.linkingNumberConservation
  writheTwistDecompositionClosed : P.writheTwistDecomposition

def TopoisomeraseSupercoilRelaxationClosed (P : TopoisomeraseSupercoilRelaxationPackage) : Prop :=
  P.relaxationReaction ∧ P.linkingNumberConservation ∧ P.writheTwistDecomposition

theorem topoisomerase_supercoil_relaxation_closed_from_evidence
    (P : TopoisomeraseSupercoilRelaxationPackage)
    (E : TopoisomeraseSupercoilRelaxationEvidence P) :
    TopoisomeraseSupercoilRelaxationClosed P := by
  exact And.intro E.relaxationReactionClosed
    (And.intro E.linkingNumberConservationClosed E.writheTwistDecompositionClosed)

end MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean
end HautevilleHouse
