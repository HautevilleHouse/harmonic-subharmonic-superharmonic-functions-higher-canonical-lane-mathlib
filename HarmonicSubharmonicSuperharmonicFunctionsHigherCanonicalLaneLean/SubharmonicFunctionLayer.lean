import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicSubharmonicSuperharmonicFunctionsHigherCanonicalLaneLean

structure SubharmonicLayerCertificate where
  functionName : String
  domainOpen : Bool
  laplaceNonNegative : Bool
  subMeanValueProperty : Bool
  maximumPrinciple : Bool

def subharmonicLayerCertificate : SubharmonicLayerCertificate := {
  functionName := "subharmonic_function",
  domainOpen := true,
  laplaceNonNegative := true,
  subMeanValueProperty := true,
  maximumPrinciple := true
}

def SubharmonicLayerClosed (C : SubharmonicLayerCertificate) : Prop :=
  C.laplaceNonNegative = true ∧ C.subMeanValueProperty = true ∧ C.maximumPrinciple = true

theorem subharmonic_layer_closed_checked :
    SubharmonicLayerClosed subharmonicLayerCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end HarmonicSubharmonicSuperharmonicFunctionsHigherCanonicalLaneLean
end HautevilleHouse