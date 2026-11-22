# Collapse Threshold

Source for **Collapse Threshold from a Computational Limit** (*Пороговый коллапс из вычислительного предела*) by Oleg Ponfilenok.

The paper proposes a **Threshold Rule** for quantum mechanics. The Born weight of a branch is quantized in steps no smaller than $\varepsilon = 1/I_{\mathrm{ost}}$, $I_{\mathrm{ost}} \approx 3.5 \times 10^{120}$: a branch that no experiment inside the causal patch can distinguish from absence does not exist, and outcome probabilities are counted among the existing branches. The vanishing of invisible branches is not yet a single outcome. A single outcome occurs when residual coherence $C$ of the full density matrix falls below $\varepsilon$—either after truncation to one branch, or after branch-dependent proper-time dephasing (BDPT). Equiprobable branching and random-circuit sampling hit a wall at or below about **400 qubits**: 400 is the upper bound from the Lloyd limit, and the actual position is for experiment to determine. Shor's algorithm stops working once the counting register is wider than the wall: for known schemes this means RSA moduli longer than about **800 bits**. Non-unitarity of truncation and selection allows energy non-conservation and superluminal information transfer on a preferred layer tied to the **CMB frame**, and selects the correct candidate of a search up to 400 bits wide in a single run.

## Main results

- **Threshold:** ε ≈ 3 × 10⁻¹²¹ is the lower bound of the weight quantum; N* ≈ log₂ Iₒₛₜ ≈ 400 is the upper bound on the position of the wall. Existing RCS experiments (67 and 83 qubits) show no wall; the numbers below are for the upper bound.
- **Shor limit (§10):** the algorithm fails once the number of values held in superposition exceeds the wall, min(m, log₂ r) > 400, for an order r that is not a power of two. Standard Shor certainly collapses for moduli longer than about 400 bits, whatever the layout of the counting register (and from L ≈ 201 if the strings of both registers are counted); the fate of RSA-512 depends on where the wall lies — Ekerå–Håstad with s ≥ 4 needs m ≤ 384. Period finding is blocked from L ≳ 800 (m ≥ L/2). This is a limit on the algorithm, not on the factoring problem. Grover search, amplitude estimation and QPE on an eigenvector stay close to product states and are not affected. The same rule gives search with verification: scrambling about 409 ancillas on the wrong candidates makes that arm vanish, so a key of up to 400 bits with a known check (for example AES-256) is found in a single run, and RSA-1024 falls to a 256-bit search via Coppersmith's theorem (up to L ≈ 1600). RSA-2048 is out of reach of this route, which does not make it secure.
- **Experiment:** local marginal test on one processor, for which **410 qubits** are certainly sufficient — Z- vs X-control shifts P(A=1) to ≈ 1.6% at 402 ancillas while the X arm stays at 1/2. A scheme without conditional gates (an excitation-conserving scrambler after a conditional flip of half of 408 ancillas) and a control with a block scrambler, for which the model predicts no shift, are given in §9.
- **Superluminal telephone (§8):** after confirming the local test, the same **404-qubit** scheme on a separated base; **direct controlled-U** at **N = 402** ancillas (M ≈ 7 acts, dₛₐₜ ≈ 20 layers, tᵣᵤₙ ~ 0.5 µs per act): of the order of **hundreds of kbit/s** if Bell-pair supply keeps up (**R_Bell ~ 10⁶** pairs/s per direction), minimum base of the order of **a kilometer**. These are order-of-magnitude estimates and an upper bound on the rate: they do not include the cost of conditional control.
- **Two-way communication:** symmetric **404-qubit** stations (402 ancillas each); each act consumes the Bell pair — **R_Bell ~ 10⁶** pairs/s per active tick; **either transmit or receive** on one pair; alternating ticks on the CMB layer, not simultaneous.
- **Engineering (§11):** Bell-pair throughput is the main bottleneck; offline U|0⟩ + controlled-SWAP could reach **a few Mbit/s** at about **a hundred meters** but needs **~ 10⁷** pairs/s and works only if the threshold does not fire while the prefabricated state is prepared and stored.
- **CMB frame (§9):** collapse simultaneity on constant FRW time, practically the CMB rest frame; conversion of laboratory clocks to t_FRW for Earth/space stations.

## Structure

| § | Topic |
| --- | --- |
| 1–3 | Cosmological computational limit and the estimate of ε |
| 4 | Branches and their weight, coherent and combinatorial probability, counting rule |
| 5 | Threshold rule, residual coherence $C$, BDPT, objectivation, front of the wall for a random circuit |
| 6 | Energy non-conservation at truncation and selection |
| 7 | Experimental test: mirror circuit, paired circuits, local marginal test, search on a small register |
| 8 | Superluminal telephone: direct controlled-U, bitrate/base, two-way communication |
| 9 | CMB frame, preferred-layer test, clock conversion to t_FRW |
| 10 | Predictions for quantum computers: Shor limit, other algorithms, search with verification |
| 11 | Discussion and open questions (existing experiments, micro-model, branches, causality, offline optimization) |
| A | Existing experiments in which the action of the rule is imperceptible |

## Files

| File | Role |
| --- | --- |
| `collapse_threshold_ru.tex` | Russian article source |
| `collapse_threshold_en.tex` | English article source |
| `refs.bib` | Shared bibliography |
| `collapse_threshold_ru.pdf` | Compiled Russian PDF (30 pages) |
| `collapse_threshold_en.pdf` | Compiled English PDF (29 pages) |
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

objective collapse · objectivation · operationalism · vanishing of branches · residual coherence · einselection · computational limit · Shor's algorithm · superluminal telephone · CMB frame

## Author

Oleg Ponfilenok — independent researcher

## License

The text of the manuscript is licensed under [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/).
