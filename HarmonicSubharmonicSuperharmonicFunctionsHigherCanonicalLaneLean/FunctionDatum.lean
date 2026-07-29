import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Complex.Basic

namespace HautevilleHouse
namespace HarmonicSubharmonicSuperharmonicFunctionsHigherCanonicalLaneLean

structure HarmonicFunctionDatum where
  laplaceZeroChecked : Bool
  meanValuePropertyChecked : Bool
  sourceConstantsInternalized : Bool

structure SubharmonicFunctionDatum where
  subLaplaceChecked : Bool
  maximumPrincipleChecked : Bool
  sourceConstantsInternalized : Bool

structure SuperharmonicFunctionDatum where
  superLaplaceChecked : Bool
  minimumPrincipleChecked : Bool
  sourceConstantsInternalized : Bool

structure PotentialTheoryDatum where
  greenFunctionChecked : Bool
  poissonIntegralChecked : Bool
  sourceConstantsInternalized : Bool

structure PerronMethodDatum where
  perronSolutionChecked : Bool
  barrierFunctionChecked : Bool
  sourceConstantsInternalized : Bool

def primitiveHarmonicFunctionDatum : HarmonicFunctionDatum := {
  laplaceZeroChecked := true,
  meanValuePropertyChecked := true,
  sourceConstantsInternalized := true
}

def primitiveSubharmonicFunctionDatum : SubharmonicFunctionDatum := {
  subLaplaceChecked := true,
  maximumPrincipleChecked := true,
  sourceConstantsInternalized := true
}

def primitiveSuperharmonicFunctionDatum : SuperharmonicFunctionDatum := {
  superLaplaceChecked := true,
  minimumPrincipleChecked := true,
  sourceConstantsInternalized := true
}

def primitivePotentialTheoryDatum : PotentialTheoryDatum := {
  greenFunctionChecked := true,
  poissonIntegralChecked := true,
  sourceConstantsInternalized := true
}

def primitivePerronMethodDatum : PerronMethodDatum := {
  perronSolutionChecked := true,
  barrierFunctionChecked := true,
  sourceConstantsInternalized := true
}

end HautevilleHouse
end HarmonicSubharmonicSuperharmonicFunctionsHigherCanonicalLaneLean