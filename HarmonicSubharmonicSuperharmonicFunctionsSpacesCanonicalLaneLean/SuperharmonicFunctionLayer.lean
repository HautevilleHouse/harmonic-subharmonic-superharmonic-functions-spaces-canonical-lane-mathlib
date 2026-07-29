import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicSubharmonicSuperharmonicFunctionsSpacesCanonicalLaneLean

structure SuperharmonicFunctionCertificate where
  functionLabel : String
  domain : String
  superharmonicInequality : Bool
  meanValueInequality : Bool
  minimumPrincipleExtended : Bool

def primitiveSuperharmonicFunction : SuperharmonicFunctionCertificate := {
  functionLabel := "superharmonic function on a domain",
  domain := "open set in Euclidean space",
  superharmonicInequality := true,
  meanValueInequality := true,
  minimumPrincipleExtended := true
}

end HarmonicSubharmonicSuperharmonicFunctionsSpacesCanonicalLaneLean
end HautevilleHouse