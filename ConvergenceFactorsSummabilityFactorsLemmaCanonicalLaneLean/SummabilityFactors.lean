import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFactorsSummabilityFactorsLemmaCanonicalLaneLean

structure SummabilityFactors (C : ConvergenceFactors) where
  summabilityFactor : Nat → ℝ
  weightedSum : ℝ
  weightCondition : Prop

def SummabilityFactorsClosed {C : ConvergenceFactors} (S : SummabilityFactors C) : Prop :=
  S.weightCondition

end ConvergenceFactorsSummabilityFactorsLemmaCanonicalLaneLean
end HautevilleHouse