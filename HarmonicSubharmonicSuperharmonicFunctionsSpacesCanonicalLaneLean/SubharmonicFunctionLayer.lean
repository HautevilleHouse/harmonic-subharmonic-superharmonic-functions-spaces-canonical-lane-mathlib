import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicSubharmonicSuperharmonicFunctionsSpacesCanonicalLaneLean

structure SubharmonicFunctionCertificate where
  functionLabel : String
  domain : String
  subharmonicInequality : Bool
  meanValueInequality : Bool
  maximumPrincipleExtended : Bool

def primitiveSubharmonicFunction : SubharmonicFunctionCertificate := {
  functionLabel := "subharmonic function on a domain",
  domain := "open set in Euclidean space",
  subharmonicInequality := true,
  meanValueInequality := true,
  maximumPrincipleExtended := true
}

end HarmonicSubharmonicSuperharmonicFunctionsSpacesCanonicalLaneLean
end HautevilleHouse