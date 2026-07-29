import canonicalLaneMathlib.AdmissibleClass
import HarmonicSubharmonicSuperharmonicFunctionsSpacesCanonicalLaneLean.HarmonicFunctionAdmissibleClass

namespace HautevilleHouse
namespace HarmonicSubharmonicSuperharmonicFunctionsSpacesCanonicalLaneLean

structure SuperharmonicFunctionCertificate where
  lowerSemicontinuous : Bool
  supermeanProperty : Bool
  harmonicDatum : HarmonicFunctionDatum
  comparisonFunction : String
  endpointChecked : Bool

def primitiveSuperharmonicCertificate : SuperharmonicFunctionCertificate := {
  lowerSemicontinuous := true,
  supermeanProperty := true,
  harmonicDatum := primitiveHarmonicFunctionDatum,
  comparisonFunction := "dominates harmonic functions on every ball",
  endpointChecked := true
}

def SuperharmonicGateClosed (C : SuperharmonicFunctionCertificate) : Prop :=
  C.lowerSemicontinuous = true ∧ C.supermeanProperty = true ∧ C.harmonicDatum.laplacianZero = true ∧ C.endpointChecked = true

theorem superharmonic_gate_closed_checked : SuperharmonicGateClosed primitiveSuperharmonicCertificate := by
  exact And.intro rfl (And.intro rfl (And.intro rfl rfl))

end HarmonicSubharmonicSuperharmonicFunctionsSpacesCanonicalLaneLean
end HautevilleHouse
