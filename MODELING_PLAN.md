# Modeling Plan

## Acceptable Error Threshold
After examining historical reimbursement data, we propose an average absolute error target of **under $80** on the public data set. This keeps typical predictions within roughly 5% of the typical reimbursement amounts while still being achievable with simple models.

## Approach
1. **Baseline:** A linear regression model yielded errors over $175.
2. **Polynomial Models:** Increasing degree decreased error; degree‑4 gave ~\$82 MAE.
3. **Regularized Regression:** Applying Ridge regression to degree‑4 features dropped MAE to about \$77.
4. **Degree‑5 Ridge Model:** Expanding to 5th‑degree features and refitting with a small regularization term lowered MAE further to about \$72 on the public cases.

The coefficients for this final model are baked directly into `run.sh` using an inline Python snippet so no external dependencies are required at runtime.
