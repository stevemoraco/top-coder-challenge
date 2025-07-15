# Modeling Plan

To achieve lower error without heavy dependencies, we fit a 6th-degree polynomial regression on the public data. Ridge regularization with alpha=100 mitigates overfitting. The coefficients are embedded directly in `run.sh` and evaluated using a custom polynomial feature generator.

Future work considers ensembles (random forests, gradient boosting) and hybrid rules + ML. These might better capture non‑linear behavior noted in interviews.
