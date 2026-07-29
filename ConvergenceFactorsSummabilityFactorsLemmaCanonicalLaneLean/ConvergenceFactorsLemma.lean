import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFactorsSummabilityFactorsLemmaCanonicalLaneLean

structure ConvergenceFactorsLemmaPackage where
  sequence : Type u
  convergenceCondition : Prop
  factorApplied : Prop
  conclusion : Prop

structure ConvergenceFactorsLemmaEvidence (C : ConvergenceFactorsLemmaPackage) where
  convergenceConditionClosed : C.convergenceCondition
  factorAppliedClosed : C.factorApplied
  conclusionClosed : C.conclusion

def ConvergenceFactorsLemmaClosed (C : ConvergenceFactorsLemmaPackage) : Prop :=
  C.convergenceCondition ∧ C.factorApplied ∧ C.conclusion

theorem convergence_factors_lemma_closed_from_evidence (C : ConvergenceFactorsLemmaPackage) (E : ConvergenceFactorsLemmaEvidence C) :
    ConvergenceFactorsLemmaClosed C := by
  exact And.intro E.convergenceConditionClosed (And.intro E.factorAppliedClosed E.conclusionClosed)

end ConvergenceFactorsSummabilityFactorsLemmaCanonicalLaneLean
end HautevilleHouse