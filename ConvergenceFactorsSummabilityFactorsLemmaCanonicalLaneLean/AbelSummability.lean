import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFactorsSummabilityFactorsLemmaCanonicalLaneLean

structure AbelSummabilityPackage where
  series : ℕ → ℝ
  abelMean : ℝ → ℝ
  limitExists : Prop
  consistencyWithClassical : Prop

structure AbelSummabilityEvidence (A : AbelSummabilityPackage) where
  limitExistsClosed : A.limitExists
  consistencyWithClassicalClosed : A.consistencyWithClassical

def AbelSummabilityClosed (A : AbelSummabilityPackage) : Prop :=
  A.limitExists ∧ A.consistencyWithClassical

theorem abel_summability_closed_from_evidence (A : AbelSummabilityPackage) (E : AbelSummabilityEvidence A) : AbelSummabilityClosed A :=
  And.intro E.limitExistsClosed E.consistencyWithClassicalClosed

end ConvergenceFactorsSummabilityFactorsLemmaCanonicalLaneLean
end HautevilleHouse