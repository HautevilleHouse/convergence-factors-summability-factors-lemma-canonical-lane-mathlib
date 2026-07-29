import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConvergenceFactorsSummabilityFactorsLemmaCanonicalLaneLean.AbelTransformation

namespace HautevilleHouse
namespace ConvergenceFactorsSummabilityFactorsLemmaCanonicalLaneLean

structure KroneckerLemmaPackage {C : ConvergenceFactorPackage} {S : SummabilityFactorPackage}
    {A : AbelTransformationPackage C S} where
  factorTimesPartialSumConverges : Prop
  limitRelation : Prop

structure KroneckerLemmaEvidence {C : ConvergenceFactorPackage} {S : SummabilityFactorPackage}
    {A : AbelTransformationPackage C S} (K : KroneckerLemmaPackage C S A) where
  factorTimesPartialSumConvergesClosed : K.factorTimesPartialSumConverges
  limitRelationClosed : K.limitRelation

def KroneckerLemmaClosed {C : ConvergenceFactorPackage} {S : SummabilityFactorPackage}
    {A : AbelTransformationPackage C S} (K : KroneckerLemmaPackage C S A) : Prop :=
  K.factorTimesPartialSumConverges ∧ K.limitRelation

theorem kronecker_lemma_closed_from_evidence {C : ConvergenceFactorPackage} {S : SummabilityFactorPackage}
    {A : AbelTransformationPackage C S} (K : KroneckerLemmaPackage C S A)
    (E : KroneckerLemmaEvidence K) : KroneckerLemmaClosed K := by
  exact And.intro E.factorTimesPartialSumConvergesClosed E.limitRelationClosed

end ConvergenceFactorsSummabilityFactorsLemmaCanonicalLaneLean
end HautevilleHouse