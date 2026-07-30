import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean.TopoisomeraseStructures

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean

structure RelaxationKinetics where
  initialSupercoiling : DnaTopology
  finalSupercoiling : DnaTopology
  numberOfSteps : Nat
  relaxationRate : Float
  processiveTurnover : Prop
  distributiveMode : Prop

def relaxationClosed (r : RelaxationKinetics) : Prop :=
  r.initialSupercoiling.supercoilingDensity > r.finalSupercoiling.supercoilingDensity ∧
  (r.processiveTurnover ∨ r.distributiveMode)

theorem relaxation_from_evidence (r : RelaxationKinetics) (hRatePos : r.relaxationRate > 0.0) (hStepsPos : r.numberOfSteps > 0) : r.initialSupercoiling.supercoilingDensity > r.finalSupercoiling.supercoilingDensity := by
  have : r.initialSupercoiling.supercoilingDensity = r.finalSupercoiling.supercoilingDensity + (r.relaxationRate * (r.numberOfSteps : Float)) := by
    sorry
  linarith

end MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean
end HautevilleHouse