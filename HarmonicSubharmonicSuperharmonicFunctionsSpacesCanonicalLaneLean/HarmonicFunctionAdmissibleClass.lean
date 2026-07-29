import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicSubharmonicSuperharmonicFunctionsSpacesCanonicalLaneLean

structure HarmonicFunctionDatum where
  domain : String
  laplacianZero : Bool
  boundaryBehavior : String
  smoothnessClass : String

def primitiveHarmonicFunctionDatum : HarmonicFunctionDatum := {
  domain := "open subset of ℝ^n",
  laplacianZero := true,
  boundaryBehavior := "inherited from boundary data",
  smoothnessClass := "C^∞"
}

theorem laplacian_zero_checked : primitiveHarmonicFunctionDatum.laplacianZero = true := by rfl

end HarmonicSubharmonicSuperharmonicFunctionsSpacesCanonicalLaneLean
end HautevilleHouse
