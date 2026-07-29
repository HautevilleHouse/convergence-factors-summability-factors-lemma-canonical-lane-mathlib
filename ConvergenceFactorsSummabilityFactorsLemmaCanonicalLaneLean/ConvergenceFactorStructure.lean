import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFactorsSummabilityFactorsLemmaCanonicalLaneLean

structure ConvergenceFactorStructure where
  factor : Type u
  domain : Type v
  codomain : Type w
  factorApplication : factor → domain → codomain
  boundedness : Prop
  linearity : Prop

structure ConvergenceFactorEvidence (C : ConvergenceFactorStructure) where
  boundednessClosed : C.boundedness
  linearityClosed : C.linearity

def ConvergenceFactorClosed (C : ConvergenceFactorStructure) : Prop :=
  C.boundedness ∧ C.linearity

theorem convergence_factor_closed_from_evidence
    (C : ConvergenceFactorStructure) (E : ConvergenceFactorEvidence C) :
    ConvergenceFactorClosed C := by
  exact And.intro E.boundednessClosed E.linearityClosed

structure AdmissibleConvergenceFactor where
  admissibleClass : AdmissibleClass
  factorStructure : ConvergenceFactorStructure
  evidence : ConvergenceFactorEvidence factorStructure
  bridgeClosed : bridgeClosed admissibleClass
  gateClosed : gateClosed admissibleClass

def ConstrainedConvergenceFactorClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_convergence_factor_endgame (A : AdmissibleClass) :
    ConstrainedConvergenceFactorClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ConvergenceFactorsSummabilityFactorsLemmaCanonicalLaneLean
end HautevilleHouse