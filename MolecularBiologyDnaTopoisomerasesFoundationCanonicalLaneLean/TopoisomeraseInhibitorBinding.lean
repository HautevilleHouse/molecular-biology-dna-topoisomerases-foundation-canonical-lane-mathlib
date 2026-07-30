import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean.TopoisomeraseCleavageComplex

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean

structure InhibitorBinding where
  inhibitorMolecule : Type
  bindingSiteOccupied : Prop
  cleavageComplexStabilized : Prop
  religationBlocked : Prop
  covalentComplexTrapped : Prop

def inhibitorBlockadeClosed (i : InhibitorBinding) : Prop :=
  i.bindingSiteOccupied ∧ i.cleavageComplexStabilized ∧ (i.religationBlocked ∨ i.covalentComplexTrapped)

theorem inhibitor_blockade_from_evidence (i : InhibitorBinding) (hB : i.bindingSiteOccupied) (hC : i.cleavageComplexStabilized) (hRB : i.religationBlocked) : inhibitorBlockadeClosed i := by
  refine And.intro hB (And.intro hC (Or.inl hRB))

theorem inhibitor_blockade_trapped (i : InhibitorBinding) (hB : i.bindingSiteOccupied) (hC : i.cleavageComplexStabilized) (hCT : i.covalentComplexTrapped) : inhibitorBlockadeClosed i := by
  refine And.intro hB (And.intro hC (Or.inr hCT))

end MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean
end HautevilleHouse