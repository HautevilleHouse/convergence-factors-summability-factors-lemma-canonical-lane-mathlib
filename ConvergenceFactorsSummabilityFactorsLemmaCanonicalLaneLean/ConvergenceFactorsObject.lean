import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFactorsSummabilityFactorsLemmaCanonicalLaneLean

structure SequenceSpace where
  carrier : Type
  norm : carrier → ℝ

structure SummabilityFactor where
  factorSequence : ℕ → ℝ
  boundedness : Prop

structure ConvergenceFactor where
  factorSequence : ℕ → ℝ
  summabilityRelation : Prop

structure AdmittedSummabilityObject where
  sequenceSpace : SequenceSpace
  factorPair : SummabilityFactor × ConvergenceFactor
  compatibilityCondition : Prop
  conclusion : SummabilityFactor.boundedness ∧ ConvergenceFactor.summabilityRelation

def witnessClosed (O : AdmittedSummabilityObject) : Prop :=
  O.conclusion

end ConvergenceFactorsSummabilityFactorsLemmaCanonicalLaneLean
end HautevilleHouse