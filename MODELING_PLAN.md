# Modeling Plan

## Acceptable Error Threshold
After examining historical reimbursement data, we propose an average absolute error target of **under $80** on the public data set. This keeps typical predictions within roughly 5% of the typical reimbursement amounts while still being achievable with simple models.

## Approach
1. **Baseline:** A linear regression model yielded errors over $175.
2. **Polynomial Models:** Increasing degree decreased error; degree-4 gave ~\$82 MAE.
3. **Regularized Regression:** Applying Ridge regression to the degree-4 features further reduced MAE to about \$77 on the public cases.

Our current implementation encodes these Ridge coefficients directly in `run.sh` so that no external dependencies are required at runtime.

Further reductions may be possible by exploring additional feature engineering or non-linear models, but this provides a reasonable trade-off between complexity and accuracy for production use.
