import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFactorsSummabilityFactorsLemmaCanonicalLaneLean

structure SummabilityFactorStructure where
  factor : Type u
  series : Type v
  summable : series → Prop
  factorMultiplication : factor → series → series
  factorPreservesSummability : Prop
  factorBoundedness : Prop

structure SummabilityFactorEvidence (S : SummabilityFactorStructure) where
  factorPreservesSummabilityClosed : S.factorPreservesSummability
  factorBoundednessClosed : S.factorBoundedness

def SummabilityFactorClosed (S : SummabilityFactorStructure) : Prop :=
  S.factorPreservesSummability ∧ S.factorBoundedness

theorem summability_factor_closed_from_evidence
    (S : SummabilityFactorStructure) (E : SummabilityFactorEvidence S) :
    SummabilityFactorClosed S := by
  exact And.intro E.factorPreservesSummabilityClosed E.factorBoundednessClosed

structure AdmissibleSummabilityFactor where
  admissibleClass : AdmissibleClass
  factorStructure : SummabilityFactorStructure
  evidence : SummabilityFactorEvidence factorStructure
  bridgeClosed : bridgeClosed admissibleClass
  gateClosed : gateClosed admissibleClass

def ConstrainedSummabilityFactorClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_summability_factor_endgame (A : AdmissibleClass) :
    ConstrainedSummabilityFactorClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ConvergenceFactorsSummabilityFactorsLemmaCanonicalLaneLean
end HautevilleHouse