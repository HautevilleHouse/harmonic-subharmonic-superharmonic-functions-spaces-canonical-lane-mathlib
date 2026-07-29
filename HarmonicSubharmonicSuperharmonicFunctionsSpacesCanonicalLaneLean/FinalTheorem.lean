import canonicalLaneMathlib.AdmissibleClass
import HarmonicSubharmonicSuperharmonicFunctionsSpacesCanonicalLaneLean.SubharmonicBridgeLayer
import HarmonicSubharmonicSuperharmonicFunctionsSpacesCanonicalLaneLean.SuperharmonicGateLayer

namespace HautevilleHouse
namespace HarmonicSubharmonicSuperharmonicFunctionsSpacesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let C : SubharmonicFunctionCertificate := primitiveSubharmonicCertificate
  SubharmonicBridgeClosed C

def gateClosed (A : AdmissibleClass) : Prop :=
  let C : SuperharmonicFunctionCertificate := primitiveSuperharmonicCertificate
  SuperharmonicGateClosed C

def ConstrainedHarmonicClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact subharmonic_bridge_closed_checked

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact superharmonic_gate_closed_checked

theorem constrained_harmonic_endgame (A : AdmissibleClass) : ConstrainedHarmonicClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HarmonicSubharmonicSuperharmonicFunctionsSpacesCanonicalLaneLean
end HautevilleHouse
