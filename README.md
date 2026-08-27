# Collapse Threshold

LaTeX source for **Threshold collapse from a computational bound** (*Пороговый коллапс из вычислительного предела*) by Oleg Ponfilenok.

The paper proposes a **threshold-collapse rule** for quantum mechanics: a branch or coherence is removed if no experiment inside the causal patch can distinguish it from absence. The distinguishability floor is \(\varepsilon = 1/I_{\mathrm{ost}}\), with \(I_{\mathrm{ost}} \approx 3.5 \times 10^{120}\) binary distinctions. Equilibrium branching and random-circuit sampling hit a wall near **400 qubits**; ordinary Shor collapses once the counting register exceeds that width, i.e. from **\(\sim 200\)-bit moduli** on. Non-unitarity of the collapse act allows energy non-conservation and superluminal information transfer on a comoving FRW layer tied to the **CMB rest frame**.

## Main results

- **Threshold:** \(\varepsilon \approx 3 \times 10^{-121}\); effective branch cap \(N_* \approx \log_2 I_{\mathrm{ost}} \approx 400\).
- **Shor limit (§8):** branches are pointer-basis strings, so the criterion is the counting-register width \(m \lesssim 400\), not the order \(r\). Standard Shor (\(m = 2L\)) collapses from \(L \approx 201\); RSA-512 is **not** protected — Ekerå–Håstad with \(s \ge 4\) needs only \(m \le 384\). Unconditional protection starts near \(L \gtrsim 800\), since \(m \ge L/2\).
- **Experiment:** local marginal test on one **404-qubit** processor ($402$ ancillas) — \(Z\)- vs \(X\)-control shifts \(P(A{=}1)\) to \(\approx 1.6\%\) while the \(X\) arm stays at \(1/2\).
- **Superluminal telephone (§10):** after confirming the local test, the same **404-qubit** scheme on a separated base; **direct controlled-\(U\)** at **\(N=402\)** ancillas (\(M \approx 7\) acts, \(d_{\mathrm{sat}} \approx 20\) layers, \(t_{\mathrm{run}} \approx 0.5\) µs per act): **\(\approx 280\) kbit/s** if Bell-pair supply keeps up (**\(R_{\mathrm{Bell}} \approx 2\times10^6\)** pairs/s per direction), minimum base **\(\approx 1.05\) km**.
- **Duplex:** symmetric **404-qubit** stations ($402$ ancillas each); each act consumes the Bell pair — **\(R_{\mathrm{Bell}} \approx 2\times10^6\)** pairs/s per active tick; **either transmit or receive** on one pair; alternating ticks on the comoving layer, not simultaneous.
- **Engineering (§12):** Bell-pair throughput is the main bottleneck; offline \(U|0\rangle\) + controlled-SWAP could reach **\(\approx 2.8\) Mbit/s** at **\(\approx 100\) m** but needs **\(\approx 2\times10^7\)** pairs/s and may be blocked by the precomputation penalty (§8).
- **Comoving layer (§11):** collapse simultaneity on constant FRW time, practically the CMB rest frame; computational synchronization for Earth/space stations.

## Structure

| § | Topic |
| --- | --- |
| 1–4 | Holographic vs computational estimates of \(\varepsilon\) |
| 5 | Collapse rule, global renormalization, effective branch count |
| 6–7 | Spatial/temporal scales and collapse duration |
| 8 | RCS wall, Shor limit by counting-register width |
| 9 | Experimental proposals (mirror circuits, pair schemes, marginal test) |
| 10 | Superluminal telephone: direct controlled-\(U\), bitrate/base, duplex |
| 11 | Comoving layer, CMB test, comoving-clock synchronization |
| 12 | Open questions (micro-model, branches, causality, offline optimization) |

## Files

| File | Role |
| --- | --- |
| `collapse_threshold_ru.tex` | Russian article source (21 pages) |
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
