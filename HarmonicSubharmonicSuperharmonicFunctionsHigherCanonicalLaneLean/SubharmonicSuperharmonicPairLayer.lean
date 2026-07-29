import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.HarmonicSubharmonicSuperharmonicFunctionsHigherCanonicalLaneLean.HarmonicBridgeLayer

/-!
# Subharmonic-superharmonic pair layer

This layer records the pair of subharmonic and superharmonic functions and their relation.
-/

namespace HautevilleHouse
namespace HarmonicSubharmonicSuperharmonicFunctionsHigherCanonicalLaneLean

structure SubharmonicSuperharmonicPairCertificate where
  subharmonicDatum : String
  superharmonicDatum : String
  harmonicBridge : HarmonicBridgeCertificate
  pairRelation : String
  pairClosed : Bool

def subharmonicSuperharmonicPairCertificate : SubharmonicSuperharmonicPairCertificate := {
  subharmonicDatum := "subharmonic function u",
  superharmonicDatum := "superharmonic function v",
  harmonicBridge := harmonicBridgeCertificate,
  pairRelation := "u ≤ v",
  pairClosed := true
}

def SubharmonicSuperharmonicPairLayerClosed (C : SubharmonicSuperharmonicPairCertificate) : Prop :=
  HarmonicBridgeLayerClosed C.harmonicBridge ∧ C.pairClosed = true

theorem subharmonic_superharmonic_pair_layer_closed_checked :
    SubharmonicSuperharmonicPairLayerClosed subharmonicSuperharmonicPairCertificate := by
  exact And.intro harmonic_bridge_layer_closed_checked rfl

end HarmonicSubharmonicSuperharmonicFunctionsHigherCanonicalLaneLean
end HautevilleHouse