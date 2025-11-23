PUD-Anxiety-Analysis-R

R-based statistical analysis exploring the association between anxiety levels and peptic ulcer disease (PUD).

🚀 Overview

This project investigates how psychological, demographic, and lifestyle factors—especially anxiety—are associated with the presence of Peptic Ulcer Disease (PUD).
Using a fully reproducible R workflow, the analysis includes:

Data cleaning & preprocessing

Missing value imputation

Logistic regression modeling

Visualization of anxiety trends

Interpretation using odds ratios

Validation using ROC–AUC, F1 score, and confusion matrices

This repository includes the full academic report, R scripts, HTML outputs, and a clear analysis pipeline diagram.

🧠 Key Highlights

Examines the relationship between anxiety levels and PUD occurrence

Uses logistic regression for interpretable modeling

Full preprocessing: missing values, encoding, variable transformation

Rich data visualizations (distribution, correlations, anxiety levels)

Includes RMarkdown notebook for reproducibility

📄 Project Files (located in /docs/)
File	Description
HDS_FINAL_report.docx	Full academic paper with introduction, methodology, results, and discussion
visualizations.R	Script used to generate plots
PUD_PIPELINE.png	Full analysis pipeline diagram

All key documents are stored in the docs/ directory.

🔍 Methodology Summary
![R Analysis Pipeline](docs/PUD_PIPELINE.png)

📚 Dataset

Type: De-identified health & survey dataset

Outcome variable: PUD →

0 = No PUD

1 = PUD present

Primary predictor: Anxiety Score

Additional variables:

Age

Sex

Smoking

Alcohol consumption

Stress level

Lifestyle habits

🧼 Missing Value Handling

Numeric: Mean/median imputation

Categorical: Mode/category replacement

Removed: Non-informative or redundant columns

🔧 Preprocessing Steps

✔ Missing value detection
✔ Factor encoding
✔ Derived variable creation
✔ Outlier checks
✔ Data normalization where necessary

🔢 Modeling Approach
Logistic Regression (main model)

Used for interpretability, odds ratios, and clinical relevance.

glm(PUD ~ Anxiety + Age + Sex + Smoking + Alcohol + Stress,
    family = binomial,
    data = dataset)

Outputs generated

Odds Ratios

95% Confidence Intervals

P-values

Significance indicators

Model summary statistics

🎯 Evaluation Metrics

Accuracy

Precision

Recall

F1 Score

ROC–AUC

Confusion Matrix

📈 Key Results
✔ 1. Higher anxiety levels significantly increase the odds of PUD

Every unit increase in anxiety score → higher likelihood of PUD

Statistical significance confirmed via p-values & confidence intervals

Supports the hypothesis: psychological stress contributes to ulcer formation

✔ 2. Smoking and Alcohol are major modifying risk factors

Smokers show elevated baseline ulcer risk

Alcohol amplifies the anxiety–PUD effect

Combined lifestyle + psychological risk explains clinical patterns

✔ 3. Logistic Regression provided interpretable and clinically meaningful insights

Odds ratios clearly identified which factors matter most

The model performed well on classification metrics

ROC–AUC confirmed good discriminative ability

🧪 Conclusion

This project demonstrates a strong, data-supported relationship between psychological anxiety and the presence of Peptic Ulcer Disease (PUD).

Key takeaways:

Anxiety is not only a psychological concern but also a meaningful predictor of digestive health outcomes.

Lifestyle behaviors such as smoking and alcohol consumption further magnify ulcer risk.

Logistic regression enabled clear, interpretable results suitable for healthcare decision-making.

The analysis pipeline provides a reproducible and extensible framework for future clinical research or machine-learning-based health studies.

📂 Repository Structure
PUD-anxiety-analysis-R/
│
├── docs/
│   ├── HDS_FINAL_report.docx
│   ├── visualizations.R
│   ├── PUD_PIPELINE.png
│
├── scripts/
│   ├── analysis.R
│   ├── Group7_code_file.Rmd
│   ├── Group7_code_file.nb.html
│
└── README.md

🛠️ Technologies Used

R

tidyverse

dplyr

ggplot2

broom

rmarkdown

🤝 Contact

For questions or collaboration:
Chaitali Chaudhari

GitHub Repo:
🔗 https://github.com/chaitali6213/PUD-anxiety-analysis-R
