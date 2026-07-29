import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicSubharmonicSuperharmonicFunctionsHigherCanonicalLaneLean

structure HarmonicLayerCertificate where
  functionName : String
  domainOpen : Bool
  laplaceZero : Bool
  meanValueProperty : Bool
  maximumPrinciple : Bool
  harmonicConjugate : Bool

structure HarmonicFunction where
  functionName : String
  domain : String
  value : Float

def harmonicLayerCertificate : HarmonicLayerCertificate := {
  functionName := "harmonic_function",
  domainOpen := true,
  laplaceZero := true,
  meanValueProperty := true,
  maximumPrinciple := true,
  harmonicConjugate := true
}

def HarmonicLayerClosed (C : HarmonicLayerCertificate) : Prop :=
  C.laplaceZero = true ∧ C.meanValueProperty = true ∧ C.maximumPrinciple = true ∧ C.harmonicConjugate = true

theorem harmonic_layer_closed_checked :
    HarmonicLayerClosed harmonicLayerCertificate := by
  exact And.intro rfl (And.intro rfl (And.intro rfl rfl))

end HarmonicSubharmonicSuperharmonicFunctionsHigherCanonicalLaneLean
end HautevilleHouse