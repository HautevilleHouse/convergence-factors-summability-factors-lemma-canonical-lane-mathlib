import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFactorsSummabilityFactorsLemmaCanonicalLaneLean

structure ConvergenceFactors where
  sequence : Nat → ℝ
  limit : ℝ
  convergenceRate : Prop
  signedMeasure : Prop

def ConvergenceFactorsClosed (C : ConvergenceFactors) : Prop :=
  C.convergenceRate ∧ C.signedMeasure

end ConvergenceFactorsSummabilityFactorsLemmaCanonicalLaneLean
end HautevilleHouse