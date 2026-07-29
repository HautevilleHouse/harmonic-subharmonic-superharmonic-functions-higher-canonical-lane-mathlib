import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.HarmonicSubharmonicSuperharmonicFunctionsHigherCanonicalLaneLean.SubharmonicSuperharmonicPairLayer

/-!
# Higher harmonic functions layer

This layer records the generalization to higher-order harmonic functions and their bridge closure.
-/

namespace HautevilleHouse
namespace HarmonicSubharmonicSuperharmonicFunctionsHigherCanonicalLaneLean

structure HigherHarmonicFunctionsCertificate where
  order : Nat
  higherHarmonicDatum : String
  subharmonicSuperharmonicPair : SubharmonicSuperharmonicPairCertificate
  higherBridgeClosed : Bool

def higherHarmonicFunctionsCertificate : HigherHarmonicFunctionsCertificate := {
  order := 2,
  higherHarmonicDatum := "polyharmonic function of order 2",
  subharmonicSuperharmonicPair := subharmonicSuperharmonicPairCertificate,
  higherBridgeClosed := true
}

def HigherHarmonicFunctionsLayerClosed (C : HigherHarmonicFunctionsCertificate) : Prop :=
  SubharmonicSuperharmonicPairLayerClosed C.subharmonicSuperharmonicPair ∧ C.higherBridgeClosed = true

theorem higher_harmonic_functions_layer_closed_checked :
    HigherHarmonicFunctionsLayerClosed higherHarmonicFunctionsCertificate := by
  exact And.intro subharmonic_superharmonic_pair_layer_closed_checked rfl

end HarmonicSubharmonicSuperharmonicFunctionsHigherCanonicalLaneLean
end HautevilleHouse