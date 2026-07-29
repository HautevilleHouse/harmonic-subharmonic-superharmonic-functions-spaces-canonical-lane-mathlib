import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicSubharmonicSuperharmonicFunctionsSpacesCanonicalLaneLean

structure HarmonicFunctionCertificate where
  functionLabel : String
  domain : String
  laplacianZero : Bool
  harmonicMeanProperty : Bool
  maximumPrincipleSatisfied : Bool

def primitiveHarmonicFunction : HarmonicFunctionCertificate := {
  functionLabel := "harmonic function on a domain",
  domain := "open set in Euclidean space",
  laplacianZero := true,
  harmonicMeanProperty := true,
  maximumPrincipleSatisfied := true
}

end HarmonicSubharmonicSuperharmonicFunctionsSpacesCanonicalLaneLean
end HautevilleHouse