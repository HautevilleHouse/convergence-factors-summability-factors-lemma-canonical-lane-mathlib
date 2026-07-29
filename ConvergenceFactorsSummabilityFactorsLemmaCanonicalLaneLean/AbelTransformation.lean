import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConvergenceFactorsSummabilityFactorsLemmaCanonicalLaneLean.ConvergenceFactorPackage
import HautevilleHouse.ConvergenceFactorsSummabilityFactorsLemmaCanonicalLaneLean.SummabilityFactorPackage

namespace HautevilleHouse
namespace ConvergenceFactorsSummabilityFactorsLemmaCanonicalLaneLean

structure AbelTransformationPackage {C : ConvergenceFactorPackage} {S : SummabilityFactorPackage} where
  partialSummationFormula : Prop
  remainderEstimate : Prop
  compatibilityCondition : Prop

structure AbelTransformationEvidence {C : ConvergenceFactorPackage} {S : SummabilityFactorPackage}
    (A : AbelTransformationPackage C S) where
  partialSummationFormulaClosed : A.partialSummationFormula
  remainderEstimateClosed : A.remainderEstimate
  compatibilityConditionClosed : A.compatibilityCondition

def AbelTransformationClosed {C : ConvergenceFactorPackage} {S : SummabilityFactorPackage}
    (A : AbelTransformationPackage C S) : Prop :=
  A.partialSummationFormula ∧ A.remainderEstimate ∧ A.compatibilityCondition

theorem abel_transformation_closed_from_evidence {C : ConvergenceFactorPackage} {S : SummabilityFactorPackage}
    (A : AbelTransformationPackage C S) (E : AbelTransformationEvidence A) : AbelTransformationClosed A := by
  exact And.intro E.partialSummationFormulaClosed
    (And.intro E.remainderEstimateClosed E.compatibilityConditionClosed)

end ConvergenceFactorsSummabilityFactorsLemmaCanonicalLaneLean
end HautevilleHouse