import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean

structure SupercoilingEnergyLandscapePackage where
  linkingNumberDeficit : Prop
  writheDistribution : Prop
  twistContribution : Prop
  freeEnergyBarrier : Prop

structure SupercoilingEnergyLandscapeEvidence (S : SupercoilingEnergyLandscapePackage) where
  linkingNumberDeficitClosed : S.linkingNumberDeficit
  writheDistributionClosed : S.writheDistribution
  twistContributionClosed : S.twistContribution
  freeEnergyBarrierClosed : S.freeEnergyBarrier

def SupercoilingEnergyLandscapeClosed (S : SupercoilingEnergyLandscapePackage) : Prop :=
  S.linkingNumberDeficit ∧ S.writheDistribution ∧ S.twistContribution ∧ S.freeEnergyBarrier

theorem supercoiling_energy_landscape_closed_from_evidence (S : SupercoilingEnergyLandscapePackage) (E : SupercoilingEnergyLandscapeEvidence S) : SupercoilingEnergyLandscapeClosed S := by
  exact And.intro E.linkingNumberDeficitClosed (And.intro E.writheDistributionClosed (And.intro E.twistContributionClosed E.freeEnergyBarrierClosed))

end MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean
end HautevilleHouse
