import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicSubharmonicSuperharmonicFunctionsHigherCanonicalLaneLean

structure HarmonicClosureCertificate where
  harmonicLayer : HarmonicFunctionLayerCertificate
  subharmonicLayer : SubharmonicFunctionLayerCertificate
  superharmonicLayer : SuperharmonicFunctionLayerCertificate
  bridgeCheck : Prop
  gateCheck : Prop
  classicalBoundaryCarried : Bool

def harmonicClosureCertificate : HarmonicClosureCertificate := {
  harmonicLayer := harmonicFunctionLayerCertificate,
  subharmonicLayer := subharmonicFunctionLayerCertificate,
  superharmonicLayer := superharmonicFunctionLayerCertificate,
  bridgeCheck := True,
  gateCheck := True,
  classicalBoundaryCarried := true
}

def HarmonicClosureCertificateClosed (C : HarmonicClosureCertificate) : Prop :=
  HarmonicFunctionLayerClosed C.harmonicLayer ∧
  SubharmonicFunctionLayerClosed C.subharmonicLayer ∧
  SuperharmonicFunctionLayerClosed C.superharmonicLayer ∧
  C.classicalBoundaryCarried = true

theorem harmonic_closure_certificate_closed_checked :
    HarmonicClosureCertificateClosed harmonicClosureCertificate := by
  refine And.intro harmonic_function_layer_closed_checked
    (And.intro subharmonic_function_layer_closed_checked
    (And.intro superharmonic_function_layer_closed_checked rfl))

end HarmonicSubharmonicSuperharmonicFunctionsHigherCanonicalLaneLean
end HautevilleHouse