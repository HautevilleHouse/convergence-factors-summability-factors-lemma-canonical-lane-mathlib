import convergenceFactorsSummabilityFactorsLemmaCanonicalLaneLean.ConvergenceFactorPackage

namespace HautevilleHouse
namespace ConvergenceFactorsSummabilityFactorsLemmaCanonicalLaneLean

structure SummabilityFactorPackage {C : ConvergenceFactorPackage} where
  summabilityFactor : C.sequence → ℕ → ℝ
  factorTransformation : Prop
  transformedLimitExists : Prop
  factorBound : Prop

structure SummabilityFactorEvidence {C : ConvergenceFactorPackage}
    (S : SummabilityFactorPackage C) where
  factorTransformationClosed : S.factorTransformation
  transformedLimitExistsClosed : S.transformedLimitExists
  factorBoundClosed : S.factorBound

def SummabilityFactorClosed {C : ConvergenceFactorPackage}
    (S : SummabilityFactorPackage C) : Prop :=
  S.factorTransformation ∧ S.transformedLimitExists ∧ S.factorBound

theorem summability_factor_closed_from_evidence {C : ConvergenceFactorPackage}
    (S : SummabilityFactorPackage C) (E : SummabilityFactorEvidence S) :
    SummabilityFactorClosed S := by
  exact And.intro E.factorTransformationClosed
    (And.intro E.transformedLimitExistsClosed E.factorBoundClosed)

end ConvergenceFactorsSummabilityFactorsLemmaCanonicalLaneLean
end HautevilleHouse
