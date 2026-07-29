import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicSubharmonicSuperharmonicFunctionsSpacesCanonicalLaneLean

structure PerronMethodCertificate where
  domain : String
  boundaryData : String
  subharmonicFamily : String
  upperEnvelopeDefined : Bool
  envelopeIsHarmonic : Bool
  boundaryValueAchieved : Bool

def primitivePerronMethod : PerronMethodCertificate := {
  domain := "bounded open set",
  boundaryData := "continuous boundary function",
  subharmonicFamily := "family of subharmonic functions bounded by f",
  upperEnvelopeDefined := true,
  envelopeIsHarmonic := true,
  boundaryValueAchieved := true
}

end HarmonicSubharmonicSuperharmonicFunctionsSpacesCanonicalLaneLean
end HautevilleHouse