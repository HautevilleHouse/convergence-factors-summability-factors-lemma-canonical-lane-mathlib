import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConvergenceFactorsSummabilityFactorsLemmaCanonicalLaneLean.ConvergenceFactors
import HautevilleHouse.ConvergenceFactorsSummabilityFactorsLemmaCanonicalLaneLean.SummabilityFactors

namespace HautevilleHouse
namespace ConvergenceFactorsSummabilityFactorsLemmaCanonicalLaneLean

structure TauberianCondition (C : ConvergenceFactors) (S : SummabilityFactors C) where
  tauberianWeight : Prop
  extraCondition : Prop

structure TauberianTheorem (C : ConvergenceFactors) (S : SummabilityFactors C) where
  tauberianCondition : TauberianCondition C S
  convergenceImpliesSummability : Prop
  equivalenceProof : Prop

def TauberianTheoremClosed {C : ConvergenceFactors} {S : SummabilityFactors C} (T : TauberianTheorem C S) : Prop :=
  T.convergenceImpliesSummability ∧ T.equivalenceProof

end ConvergenceFactorsSummabilityFactorsLemmaCanonicalLaneLean
end HautevilleHouse