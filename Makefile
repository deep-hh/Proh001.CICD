install:
\tpip install --upgrade pip && \
\tpip install -r requirements.txt

format:
\tblack *.py

train:
\tpython train.py

eval:
\techo "## Model Metrics" > report.md
\tcat ./Results/metrics.txt >> report.md
\techo '\n## Confusion Matrix Plot' >> report.md
\techo '![Confusion Matrix](./Results/model_results.png)' >> report.md
\tcml comment create report.md
