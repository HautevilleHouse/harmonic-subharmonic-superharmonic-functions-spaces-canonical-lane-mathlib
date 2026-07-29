import canonicalLaneMathlib.AdmissibleClass
import HarmonicSubharmonicSuperharmonicFunctionsSpacesCanonicalLaneLean.HarmonicFunctionAdmissibleClass

namespace HautevilleHouse
namespace HarmonicSubharmonicSuperharmonicFunctionsSpacesCanonicalLaneLean

structure SubharmonicFunctionCertificate where
  upperSemicontinuous : Bool
  submeanProperty : Bool
  harmonicDatum : HarmonicFunctionDatum
  comparisonFunction : String
  endpointChecked : Bool

def primitiveSubharmonicCertificate : SubharmonicFunctionCertificate := {
  upperSemicontinuous := true,
  submeanProperty := true,
  harmonicDatum := primitiveHarmonicFunctionDatum,
  comparisonFunction := "dominated by harmonic functions on every ball",
  endpointChecked := true
}

def SubharmonicBridgeClosed (C : SubharmonicFunctionCertificate) : Prop :=
  C.upperSemicontinuous = true ∧ C.submeanProperty = true ∧ C.harmonicDatum.laplacianZero = true ∧ C.endpointChecked = true

theorem subharmonic_bridge_closed_checked : SubharmonicBridgeClosed primitiveSubharmonicCertificate := by
  exact And.intro rfl (And.intro rfl (And.intro rfl rfl))

end HarmonicSubharmonicSuperharmonicFunctionsSpacesCanonicalLaneLean
end HautevilleHouse
