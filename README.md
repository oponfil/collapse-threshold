# Collapse Threshold

Source for **Collapse Threshold from a Computational Limit** (*Пороговый коллапс из вычислительного предела*) by Oleg Ponfilenok.

The paper proposes a **Threshold Rule** for quantum mechanics. The Born weight of a branch is quantized in steps no smaller than $\varepsilon = 1/I_{\mathrm{rem}}$, where $I_{\mathrm{rem}} \approx 3.5 \times 10^{120}$ is the number of binary distinctions that can be executed within the causal patch. A branch with weight below $\varepsilon$ does not exist, and outcome probabilities are counted among the existing branches (truncation). A single outcome remains when the residual coherence $C$ of the full density matrix falls below the same $\varepsilon$ (objectivation), or, if all branches are below the threshold, a single random branch remains (selection). Equiprobable branching and random-circuit sampling hit a wall at or below about **400 qubits**: 400 is the upper bound from the Lloyd limit, and the actual position is for experiment to determine.

The main test is the **local marginal test** on one processor, for which **410 qubits** are certainly sufficient: the probability of finding one qubit in the state one falls from 1/2 to zero. The same experiment on a separated baseline gives **superluminal information transfer** on a preferred layer tied to the **CMB frame**. Truncation and selection are non-unitary and permit energy non-conservation. On a fault-tolerant quantum computer the rule stops Shor's algorithm once the counting register is wider than the wall (for known schemes, RSA moduli longer than about **800 bits**) and selects the correct candidate of a search up to 400 bits wide in a single run.

## Main results

- **Threshold (§2–3):** ε ≈ 3 × 10⁻¹²¹ is the lower bound of the weight quantum; N* ≈ log₂ I_rem ≈ 400 is the upper bound on the position of the wall. Existing RCS experiments (67 and 83 qubits) show no wall; the numbers below are for the upper bound.
- **Experiment (§7):** four experiments on one processor of 410–412 qubits: the mirror circuit, paired circuits, the local marginal test (the main one) and a search on a small register. In the local marginal test Z- vs X-control shifts P(A=1) to ≈ 1.6% at 402 ancillas while the X arm stays at 1/2. A scheme without conditional gates (an excitation-conserving scrambler after a conditional flip of half of 408 ancillas) and a control with a block scrambler, for which the model predicts no shift, are given. In the search on a register of three qubits with 408 ancillas (412 qubits in all) the marked candidate is found in about 99% of runs instead of 12.5%.
- **Superluminal telephone (§8):** after confirming the local test, the same **404-qubit** scheme on a separated base; **direct controlled-U** at **N = 402** ancillas (M ≈ 7 acts, dₛₐₜ ≈ 20 layers, tᵣᵤₙ ~ 0.5 µs per act): of the order of **hundreds of kbit/s** if Bell-pair supply keeps up (**R_Bell ~ 10⁶** pairs/s per direction), minimum base of the order of **a kilometer**. These are order-of-magnitude estimates for superconducting qubits and an upper bound on the rate: they do not include the cost of conditional control. The delivery of Bell pairs, not the chip, limits the rate: 10⁶ pairs/s is orders of magnitude above present quantum communication lines.
- **Two-way communication:** symmetric **404-qubit** stations (402 ancillas each); each act consumes the Bell pair — **R_Bell ~ 10⁶** pairs/s per active tick; **either transmit or receive** on one pair; alternating ticks on the CMB layer, not simultaneous.
- **CMB frame (§9):** collapse simultaneity on constant FRW time, practically the CMB rest frame; conversion of laboratory clocks to t_FRW for Earth/space stations.
- **Quantum computers (§10):** these predictions require a fault-tolerant computer with hundreds of logical qubits. Shor's algorithm fails once the number of values held in superposition exceeds the wall, min(m, log₂ r) > 400; small orders r and orders that are powers of two are not affected. Standard Shor certainly fails for moduli longer than about 400 bits, whatever the layout of the counting register (and from L ≈ 201 if the strings of both registers are counted); the fate of RSA-512 depends on where the wall lies — Ekerå–Håstad with s ≥ 4 needs m ≤ 384. Period finding is blocked from L ≳ 800 (m ≥ L/2). This is a limit on the algorithm, not on the factoring problem. Grover search, amplitude estimation and QPE on an eigenvector keep states of a few terms and are not affected. The same rule gives search with verification: scrambling about 409 ancillas on the wrong candidates makes that term vanish, so a key of up to 400 bits with a known check (for example AES-256) is found in a single run, and RSA-1024 falls to a 256-bit search via Coppersmith's theorem (up to L ≈ 1600). RSA-2048 is out of reach of this route, which does not make it secure.

## Structure

| § | Topic |
| --- | --- |
| 1 | Introduction |
| 2–3 | Cosmological computational limit, the estimate of ε, what happens below the threshold |
| 4 | Branches and their weight, coherent and combinatorial probability, counting rule |
| 5 | Threshold rule, residual coherence $C$, BDPT, objectivation, front of the wall for a random circuit |
| 6 | Energy non-conservation at truncation and selection |
| 7 | Experimental test: mirror circuit, paired circuits, local marginal test, search on a small register |
| 8 | Superluminal telephone: direct controlled-U, rate and base, two-way communication |
| 9 | CMB frame, preferred-layer test, clock conversion to t_FRW |
| 10 | Predictions for quantum computers: Shor limit, other algorithms, search with verification |
| 11 | Discussion and open questions: existing experiments, comparison with GRW/CSL, integer micromodel, the jump at the threshold, local Bekenstein bound, branches, CMB frame and causality |
| A | Existing experiments in which the action of the rule is imperceptible |

## Preprint

The English version is published as a preprint on [Zenodo](https://doi.org/10.5281/zenodo.22613566) (this DOI covers all versions and resolves to the latest) and on [ai.viXra.org](https://ai.vixra.org/abs/2609.0014).

## Files

| File | Role |
| --- | --- |
| `collapse_threshold_ru.tex` | Russian article source |
| `collapse_threshold_en.tex` | English article source |
| `refs.bib` | Shared bibliography |
| `figures/` | TikZ sources of the six figures, one file per figure and language (`fig_<name>_ru.tex`, `fig_<name>_en.tex`) |
| `collapse_threshold_ru.pdf` | Compiled Russian PDF (32 pages) |
| `collapse_threshold_en.pdf` | Compiled English PDF (31 pages) |
| `build.ps1` | Windows build script (`pdflatex` + `bibtex`); both languages by default |

## Build

Both files build with XeLaTeX or pdfLaTeX plus BibTeX. The simplest way is [Tectonic](https://tectonic-typesetting.github.io/), which runs all passes itself:

```bash
tectonic collapse_threshold_en.tex
```

```bash
tectonic collapse_threshold_ru.tex
```

Under XeLaTeX / Tectonic the Russian version is set in Avenir Next, a macOS system font. Under pdfLaTeX it falls back to Comfortaa.

On Windows, with a TeX distribution that has `pdflatex`, `bibtex`, and Russian Babel/Cyrillic fonts (for example MiKTeX), `build.ps1` builds both PDFs:

```powershell
powershell -File build.ps1
```

One language only:

```powershell
powershell -File build.ps1 -Targets collapse_threshold_ru
powershell -File build.ps1 -Targets collapse_threshold_en
```

## Keywords

objective collapse · objectivation · vanishing of branches · residual coherence · coherent probability · einselection · computational limit · ΛCDM cosmology · random circuit sampling · Shor's algorithm · superluminal telephone · CMB frame

## Author

Oleg Ponfilenok — independent researcher

## License

The text of the manuscript is licensed under [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/).
