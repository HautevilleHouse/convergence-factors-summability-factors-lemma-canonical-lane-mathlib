import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFactorsSummabilityFactorsLemmaCanonicalLaneLean

structure LeibnizCriteriaPackage where
  alternatingSeries : ℕ → ℝ
  monotoneDecreasingZero : Prop
  convergenceImplied : Prop

structure LeibnizCriteriaEvidence (L : LeibnizCriteriaPackage) where
  monotoneDecreasingZeroClosed : L.monotoneDecreasingZero
  convergenceImpliedClosed : L.convergenceImplied

def LeibnizCriteriaClosed (L : LeibnizCriteriaPackage) : Prop :=
  L.monotoneDecreasingZero ∧ L.convergenceImplied

theorem leibniz_criteria_closed_from_evidence (L : LeibnizCriteriaPackage) (E : LeibnizCriteriaEvidence L) : LeibnizCriteriaClosed L :=
  And.intro E.monotoneDecreasingZeroClosed E.convergenceImpliedClosed

end ConvergenceFactorsSummabilityFactorsLemmaCanonicalLaneLean
end HautevilleHouse