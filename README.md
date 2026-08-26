# Collapse Threshold

LaTeX source for **Threshold collapse from a computational bound** by Oleg Ponfilenok.

The paper proposes a threshold-collapse rule for quantum mechanics: a branch or coherence is removed if no experiment inside the causal patch can distinguish it from absence. The distinguishability floor is \(\varepsilon = 1/I_{\mathrm{ost}}\), with \(I_{\mathrm{ost}} \approx 3.5 \times 10^{120}\). Equilibrium branching and random-circuit sampling hit a wall near 400 qubits; ordinary Shor factoring of RSA-512 fails in the model. Non-unitarity allows energy non-conservation of thermal scale \(k_B T\). A superluminal-telephone scheme is estimated at \(\approx 13\) kbit/s.

## Files

| File | Role |
| --- | --- |
| `collapse_threshold_ru.tex` | Russian article source |
| `refs.bib` | Bibliography |
| `collapse_threshold_ru.pdf` | Compiled PDF |
| `build.ps1` | Build script (`pdflatex` + `bibtex`) |

## Build

Needs a TeX distribution with `pdflatex`, `bibtex`, and Russian Babel/Cyrillic fonts (for example MiKTeX):

```powershell
powershell -File build.ps1
```

## Author

Oleg Ponfilenok, independent researcher
