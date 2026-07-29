import convergenceFactorsSummabilityFactorsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFactorsSummabilityFactorsLemmaCanonicalLaneLean

structure ConvergenceFactorPackage where
  sequence : Type u
  convergenceFactor : sequence → ℕ → ℝ
  limitExists : Prop
  limitValue : ℝ
  convergenceFactorBound : Prop

structure ConvergenceFactorEvidence (C : ConvergenceFactorPackage) where
  limitExistsClosed : C.limitExists
  limitValueClosed : limitValue = ?
  convergenceFactorBoundClosed : C.convergenceFactorBound

def ConvergenceFactorClosed (C : ConvergenceFactorPackage) : Prop :=
  C.limitExists ∧ C.convergenceFactorBound

theorem convergence_factor_closed_from_evidence (C : ConvergenceFactorPackage)
    (E : ConvergenceFactorEvidence C) : ConvergenceFactorClosed C := by
  exact And.intro E.limitExistsClosed E.convergenceFactorBoundClosed

end ConvergenceFactorsSummabilityFactorsLemmaCanonicalLaneLean
end HautevilleHouse
