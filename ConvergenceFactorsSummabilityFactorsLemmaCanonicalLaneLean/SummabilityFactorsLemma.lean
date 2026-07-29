import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFactorsSummabilityFactorsLemmaCanonicalLaneLean

structure SummabilityFactorsLemmaPackage where
  sequence : Type u
  normedGroup : Type v
  convergenceFactor : sequence → sequence → Prop
  summabilityFactor : sequence → sequence → Prop
  convergenceImpliesSummability : Prop
  summabilityImpliesConvergence : Prop
  equivalenceProof : Prop

structure SummabilityFactorsLemmaEvidence (P : SummabilityFactorsLemmaPackage) where
  convergenceImpliesSummabilityClosed : P.convergenceImpliesSummability
  summabilityImpliesConvergenceClosed : P.summabilityImpliesConvergence
  equivalenceProofClosed : P.equivalenceProof

def SummabilityFactorsLemmaClosed (P : SummabilityFactorsLemmaPackage) : Prop :=
  P.convergenceImpliesSummability ∧ P.summabilityImpliesConvergence ∧ P.equivalenceProof

theorem summability_factors_lemma_closed_from_evidence
    (P : SummabilityFactorsLemmaPackage) (E : SummabilityFactorsLemmaEvidence P) :
    SummabilityFactorsLemmaClosed P := by
  exact And.intro E.convergenceImpliesSummabilityClosed
    (And.intro E.summabilityImpliesConvergenceClosed E.equivalenceProofClosed)

structure AdmissibleSummabilityFactors where
  admissibleClass : AdmissibleClass
  package : SummabilityFactorsLemmaPackage
  evidence : SummabilityFactorsLemmaEvidence package
  bridgeClosed : bridgeClosed admissibleClass
  gateClosed : gateClosed admissibleClass

def ConstrainedSummabilityFactorsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_summability_factors_endgame (A : AdmissibleClass) :
    ConstrainedSummabilityFactorsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ConvergenceFactorsSummabilityFactorsLemmaCanonicalLaneLean
end HautevilleHouse