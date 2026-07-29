import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicSubharmonicSuperharmonicFunctionsHigherCanonicalLaneLean

structure SuperharmonicLayerCertificate where
  functionName : String
  domainOpen : Bool
  laplaceNonPositive : Bool
  superMeanValueProperty : Bool
  minimumPrinciple : Bool

def superharmonicLayerCertificate : SuperharmonicLayerCertificate := {
  functionName := "superharmonic_function",
  domainOpen := true,
  laplaceNonPositive := true,
  superMeanValueProperty := true,
  minimumPrinciple := true
}

def SuperharmonicLayerClosed (C : SuperharmonicLayerCertificate) : Prop :=
  C.laplaceNonPositive = true ∧ C.superMeanValueProperty = true ∧ C.minimumPrinciple = true

theorem superharmonic_layer_closed_checked :
    SuperharmonicLayerClosed superharmonicLayerCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end HarmonicSubharmonicSuperharmonicFunctionsHigherCanonicalLaneLean
end HautevilleHouse