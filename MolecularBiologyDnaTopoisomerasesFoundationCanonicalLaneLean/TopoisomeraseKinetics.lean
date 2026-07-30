import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean

structure TopoisomeraseKineticsData where
  catalyticRate : ℝ
  michaelisConstant : ℝ
  inhibitionConstant : ℝ

def michaelisMenten (Vmax Km S : ℝ) : ℝ :=
  Vmax * S / (Km + S)

theorem michaelis_menten_plausible (S : ℝ) (hS : S > 0) : michaelisMenten 1.0 0.5 S > 0 := by
  intro hpos
  positivity

end MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean
end HautevilleHouse