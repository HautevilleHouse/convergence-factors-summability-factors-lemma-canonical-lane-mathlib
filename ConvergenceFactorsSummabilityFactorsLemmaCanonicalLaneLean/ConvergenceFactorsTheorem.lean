import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConvergenceFactorsSummabilityFactorsLemmaCanonicalLaneLean.KroneckerLemma

namespace HautevilleHouse
namespace ConvergenceFactorsSummabilityFactorsLemmaCanonicalLaneLean

structure ConvergenceFactorsTheoremPackage {C : ConvergenceFactorPackage} {S : SummabilityFactorPackage}
    {A : AbelTransformationPackage C S} {K : KroneckerLemmaPackage C S A} where
  conditionOnFactor : Prop
  convergenceImplied : Prop

structure ConvergenceFactorsTheoremEvidence {C : ConvergenceFactorPackage} {S : SummabilityFactorPackage}
    {A : AbelTransformationPackage C S} {K : KroneckerLemmaPackage C S A}
    (T : ConvergenceFactorsTheoremPackage C S A K) where
  conditionOnFactorClosed : T.conditionOnFactor
  convergenceImpliedClosed : T.convergenceImplied

def ConvergenceFactorsTheoremClosed {C : ConvergenceFactorPackage} {S : SummabilityFactorPackage}
    {A : AbelTransformationPackage C S} {K : KroneckerLemmaPackage C S A}
    (T : ConvergenceFactorsTheoremPackage C S A K) : Prop :=
  T.conditionOnFactor ∧ T.convergenceImplied

theorem convergence_factors_theorem_closed_from_evidence {C : ConvergenceFactorPackage} {S : SummabilityFactorPackage}
    {A : AbelTransformationPackage C S} {K : KroneckerLemmaPackage C S A}
    (T : ConvergenceFactorsTheoremPackage C S A K)
    (E : ConvergenceFactorsTheoremEvidence T) : ConvergenceFactorsTheoremClosed T := by
  exact And.intro E.conditionOnFactorClosed E.convergenceImpliedClosed

end ConvergenceFactorsSummabilityFactorsLemmaCanonicalLaneLean
end HautevilleHouse