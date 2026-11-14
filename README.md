# Collapse Threshold

Source for **Collapse Threshold from a Computational Limit** (*Пороговый коллапс из вычислительного предела*) by Oleg Ponfilenok.

The paper proposes a **Collapse Threshold Rule** for quantum mechanics. A branch is removed if no experiment inside the causal patch can distinguish it from absence ($\varepsilon = 1/I_{\mathrm{ost}}$, $I_{\mathrm{ost}} \approx 3.5 \times 10^{120}$). Removal of invisible branches is not yet a single outcome. A single outcome occurs when residual coherence $C$ of the full density matrix falls below $\varepsilon$—either after trimming to one branch, or after branch-dependent proper-time dephasing (BDPT). Equilibrium branching and random-circuit sampling hit a wall near **400 qubits**. The model forbids factorization of **RSA-2048**. Non-unitarity of trimming and selection allows energy non-conservation and superluminal information transfer on a preferred layer tied to the **CMB frame**.

## Main results

- **Threshold:** ε ≈ 3 × 10⁻¹²¹; effective branch cap N* ≈ log₂ Iₒₛₜ ≈ 400.
- **Shor limit (§8):** branches are pointer-basis strings, so the criterion is the counting-register width m ≲ 400, not the order r. Standard Shor (m = 2L) collapses from L ≈ 201; RSA-512 is **not** protected — Ekerå–Håstad with s ≥ 4 needs only m ≤ 384. Period finding is blocked from L ≳ 800 (m ≥ L/2). Coppersmith + threshold filter factors modules with L/4 ≲ 400, so RSA-1024 falls and the protection boundary shifts to L ≳ 1600; RSA-2048 (512 known bits) remains outside the window.
- **Experiment:** local marginal test on one **404-qubit** processor (402 ancillas) — Z- vs X-control shifts P(A=1) to ≈ 1.6% while the X arm stays at 1/2.
- **Superluminal telephone (§10):** after confirming the local test, the same **404-qubit** scheme on a separated base; **direct controlled-U** at **N = 402** ancillas (M ≈ 7 acts, dₛₐₜ ≈ 20 layers, tᵣᵤₙ ≈ 0.5 µs per act): **≈ 280 kbit/s** if Bell-pair supply keeps up (**R_Bell ≈ 2 × 10⁶** pairs/s per direction), minimum base **≈ 1.05 km**.
- **Two-way communication:** symmetric **404-qubit** stations (402 ancillas each); each act consumes the Bell pair — **R_Bell ≈ 2 × 10⁶** pairs/s per active tick; **either transmit or receive** on one pair; alternating ticks on the CMB layer, not simultaneous.
- **Engineering (§12):** Bell-pair throughput is the main bottleneck; offline U|0⟩ + controlled-SWAP could reach **≈ 2.8 Mbit/s** at **≈ 100 m** but needs **≈ 2 × 10⁷** pairs/s and may be blocked by the precomputation penalty (§8).
- **CMB frame (§11):** collapse simultaneity on constant FRW time, practically the CMB rest frame; conversion of laboratory clocks to t_FRW for Earth/space stations.

## Structure

| § | Topic |
| --- | --- |
| 1–4 | Holographic vs computational estimates of ε |
| 5 | Collapse rule, residual coherence $C$, BDPT, objectivation |
| 6 | Worked examples of the rule; effective number of branches $K_{\mathrm{eff}}$ |
| 7 | Jump duration and energy non-conservation |
| 8 | RCS wall, Shor limit by counting-register width |
| 9 | Experimental proposals (mirror circuits, pair schemes, marginal test) |
| 10 | Superluminal telephone: direct controlled-U, bitrate/base, two-way communication |
| 11 | CMB frame, preferred-layer test, clock conversion to t_FRW |
| 12 | Open questions (micro-model, branches, causality, offline optimization) |

## Files

| File | Role |
| --- | --- |
| `collapse_threshold_ru.tex` | Russian article source |
| `collapse_threshold_en.tex` | English article source |
| `refs.bib` | Shared bibliography |
| `collapse_threshold_ru.pdf` | Compiled Russian PDF (23 pages) |
| `collapse_threshold_en.pdf` | Compiled English PDF (21 pages) |
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

objective collapse · objectivation · operationalism · branch removal · residual coherence · einselection · computational limit · Shor's algorithm · superluminal telephone · CMB frame

## Author

Oleg Ponfilenok — independent researcher

## License

The text of the manuscript is licensed under [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/).
