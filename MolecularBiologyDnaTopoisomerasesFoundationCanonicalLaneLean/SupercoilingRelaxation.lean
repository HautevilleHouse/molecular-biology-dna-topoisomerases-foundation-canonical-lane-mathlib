import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean

structure SupercoilingRelaxationProperty where
  initialSupercoilingDensity : ℝ
  relaxationRate : ℝ
  atpDependent : Bool

def SupercoilingRelaxationPackage : SupercoilingRelaxationProperty := {
  initialSupercoilingDensity := 0.05
  relaxationRate := 0.02
  atpDependent := true
}

theorem supercoiling_relaxation_rate_positive : SupercoilingRelaxationPackage.relaxationRate > 0 := by
  native_dec_trivial

end MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean
end HautevilleHouse