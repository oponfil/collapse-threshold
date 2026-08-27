# Collapse Threshold

LaTeX source for **Threshold collapse from a computational bound** (*Пороговый коллапс из вычислительного предела*) by Oleg Ponfilenok.

The paper proposes a **threshold-collapse rule** for quantum mechanics: a branch or coherence is removed if no experiment inside the causal patch can distinguish it from absence. The distinguishability floor is \(\varepsilon = 1/I_{\mathrm{ost}}\), with \(I_{\mathrm{ost}} \approx 3.5 \times 10^{120}\) binary distinctions. Equilibrium branching and random-circuit sampling hit a wall near **400 qubits**; ordinary Shor factoring of **RSA-512** fails in the model. Non-unitarity of the collapse act allows energy non-conservation and superluminal information transfer on a comoving FRW layer tied to the **CMB rest frame**.

## Main results

- **Threshold:** \(\varepsilon \approx 3 \times 10^{-121}\); effective branch cap \(N_* \approx \log_2 I_{\mathrm{ost}} \approx 400\).
- **Experiment:** local marginal test on one **403-qubit** processor — \(Z\)- vs \(X\)-control shifts \(P(A{=}1)\) while the \(X\) arm stays at \(1/2\).
- **Superluminal telephone (§10):** after confirming the local test, the same scheme on a separated base; **direct controlled-\(U\)** at **\(N=402\)** ancillas (\(M \approx 7\) acts, \(d_{\mathrm{sat}} \approx 20\) layers, \(t_{\mathrm{run}} \approx 0.5\) µs per act): **\(\approx 280\) kbit/s**, minimum base **\(\approx 1.05\) km**.
- **Duplex:** symmetric **403-qubit** stations; each act consumes the Bell pair — fresh entanglement per bit; **either transmit or receive** on one pair; alternating ticks on the comoving layer, not simultaneous.
- **Engineering (§12):** offline \(U|0\rangle\) preparation with controlled-SWAP could reach **\(\approx 2.8\) Mbit/s** at **\(\approx 100\) m** if compatible with the nonlinear collapse rule; open questions on buffer prep, pair refresh, and synchronization.
- **Comoving layer (§11):** collapse simultaneity on constant FRW time, practically the CMB rest frame; computational synchronization for Earth/space stations.

## Structure

| § | Topic |
| --- | --- |
| 1–4 | Holographic vs computational estimates of \(\varepsilon\) |
| 5 | Collapse rule, global renormalization, effective branch count |
| 6–7 | Spatial/temporal scales and collapse duration |
| 8 | RCS wall, Shor limit, RSA-512 |
| 9 | Experimental proposals (mirror circuits, pair schemes, marginal test) |
| 10 | Superluminal telephone: direct controlled-\(U\), bitrate/base, duplex |
| 11 | Comoving layer, CMB test, comoving-clock synchronization |
| 12 | Open questions (micro-model, branches, causality, offline optimization) |

## Files

| File | Role |
| --- | --- |
| `collapse_threshold_ru.tex` | Russian article source (20 pages) |
| `refs.bib` | Bibliography |
| `collapse_threshold_ru.pdf` | Compiled PDF |
| `build.ps1` | Build script (`pdflatex` + `bibtex`) |

## Build

Needs a TeX distribution with `pdflatex`, `bibtex`, and Russian Babel/Cyrillic fonts (for example MiKTeX):

```powershell
powershell -File build.ps1
```

## Author

Oleg Ponfilenok — independent researcher — [ponfil@gmail.com](mailto:ponfil@gmail.com)
