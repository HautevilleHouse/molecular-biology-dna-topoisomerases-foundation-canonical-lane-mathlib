import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean

structure SupercoilingRegulationPackage where
  linkingNumberChange : Int
  writheChange : Float
  twistChange : Float
  energyCompensation : Prop
  topoisomeraseBinding : Prop

structure SupercoilingRegulationEvidence (S : SupercoilingRegulationPackage) where
  linkingNumberChangeClosed : S.linkingNumberChange = 0
  writheChangeClosed : S.writheChange = 0.0
  twistChangeClosed : S.twistChange = 0.0
  energyCompensationClosed : S.energyCompensation
  topoisomeraseBindingClosed : S.topoisomeraseBinding

def SupercoilingRegulationClosed (S : SupercoilingRegulationPackage) : Prop :=
  (S.linkingNumberChange = 0) ∧ (S.writheChange = 0.0) ∧ (S.twistChange = 0.0) ∧ S.energyCompensation ∧ S.topoisomeraseBinding

theorem supercoiling_regulation_closed_from_evidence (S : SupercoilingRegulationPackage) (E : SupercoilingRegulationEvidence S) :
    SupercoilingRegulationClosed S := by
  exact And.intro E.linkingNumberChangeClosed (And.intro E.writheChangeClosed (And.intro E.twistChangeClosed (And.intro E.energyCompensationClosed E.topoisomeraseBindingClosed)))

end MolecularBiologyDnaTopoisomerasesFoundationCanonicalLaneLean
end HautevilleHouse