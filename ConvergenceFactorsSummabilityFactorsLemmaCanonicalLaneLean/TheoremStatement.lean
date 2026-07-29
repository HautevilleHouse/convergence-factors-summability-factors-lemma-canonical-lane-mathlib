import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFactorsSummabilityFactorsLemmaCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  object : AdmittedObject
  endpointStatement : String
  gateCondition : String

def defaultTheoremStatement : TheoremStatement :=
  { sourceKey := "ConvergenceFactorsSummabilityFactorsLemma",
    theoremName := "Convergence Factors Summability Factors Lemma",
    object := AdmittedObject.default,
    endpointStatement := "Series summed via admissible factors",
    gateCondition := "Sequence remainder carried"
  }

theorem theorem_statement_nonempty : Nonempty TheoremStatement :=
  ⟨defaultTheoremStatement⟩

end ConvergenceFactorsSummabilityFactorsLemmaCanonicalLaneLean
end HautevilleHouse