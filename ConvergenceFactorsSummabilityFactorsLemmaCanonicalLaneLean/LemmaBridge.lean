import convergenceFactorsSummabilityFactorsLemmaCanonicalLaneLean.SummabilityFactorPackage

namespace HautevilleHouse
namespace ConvergenceFactorsSummabilityFactorsLemmaCanonicalLaneLean

structure LemmaBridge {C : ConvergenceFactorPackage}
    {S : SummabilityFactorPackage C} where
  lemmaStatement : Prop
  convergenceFactorClosed : ConvergenceFactorClosed C
  summabilityFactorClosed : SummabilityFactorClosed S
  implication : lemmaStatement ↔ (convergenceFactorClosed ∧ summabilityFactorClosed)

structure LemmaBridgeEvidence {C : ConvergenceFactorPackage}
    {S : SummabilityFactorPackage C} (B : LemmaBridge C S) where
  lemmaStatementClosed : B.lemmaStatement
  implicationClosed : B.implication

def LemmaBridgeClosed {C : ConvergenceFactorPackage}
    {S : SummabilityFactorPackage C} (B : LemmaBridge C S) : Prop :=
  B.lemmaStatement ∧ B.implication

theorem lemma_bridge_closed_from_evidence {C : ConvergenceFactorPackage}
    {S : SummabilityFactorPackage C} (B : LemmaBridge C S)
    (E : LemmaBridgeEvidence B) : LemmaBridgeClosed B := by
  exact And.intro E.lemmaStatementClosed E.implicationClosed

end ConvergenceFactorsSummabilityFactorsLemmaCanonicalLaneLean
end HautevilleHouse
