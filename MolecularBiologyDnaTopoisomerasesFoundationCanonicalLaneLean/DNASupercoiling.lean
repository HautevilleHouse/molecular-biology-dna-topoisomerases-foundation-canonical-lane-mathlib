import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean

structure DNASupercoilingState where
  linkingNumber : ℤ
  twist : ℝ
  writhe : ℝ

def supercoilRelaxationCondition (s : DNASupercoilingState) : Prop :=
  s.linkingNumber = 0 ∨ s.twist = 0 ∨ s.writhe = 0

structure TopoisomeraseCycle where
  initialState : DNASupercoilingState
  finalState : DNASupercoilingState
  reactionComplete : supercoilRelaxationCondition finalState

def cycleEvidence (c : TopoisomeraseCycle) : Prop :=
  c.reactionComplete ∧ True

end MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean
end HautevilleHouse
