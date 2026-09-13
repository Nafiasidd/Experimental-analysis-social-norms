# Experimental Analysis of Social Norms

## Overview

This project analyses data from the study **"Overcoming pluralistic ignorance: Brief exposure to positive thoughts and actions of others can enhance social norms related to climate action and support for climate policy."**
The analysis examines whether exposure to different forms of social norm information influences:
- Climate norms
- Psychological distance from climate change
- Support for climate policy

The analysis was conducted using **Stata**.

---

## Dataset

The dataset used in this project comes from the publicly available study dataset:

**Dataset DOI:** https://doi.org/10.5061/dryad.7h44j107q

The repository includes:

- `DataForOvercomingPluralisticIgnorance.csv` — Raw de-identified dataset
- `MetadataForOvercomingPluralisticIgnorance.csv` — Variable descriptions and value labels
- `DATASET_README.md` — Original dataset documentation

---

## Analysis

The analysis compares the three exposure groups using appropriate statistical procedures.

The analytical workflow included:

1. Importing and preparing the data
2. Creating outcome variables
3. Descriptive statistics
4. Testing assumptions
   - Normality
   - Homogeneity of variance
5. One-way ANOVA
6. Robust ANOVA where assumptions were violated
7. Post-hoc pairwise comparisons
8. Effect size estimation
9. Kruskal-Wallis tests as robustness checks

The three main outcome variables were:

- **Climate norms**
- **Psychological distance**
- **Policy support**

---

## Key Findings

### Climate Norms

Exposure group had a statistically significant effect on climate norms.

- One-way ANOVA: *F*(2, 891) = 15.06, *p* < .001
- Eta-squared = .0327

Post-hoc comparisons indicated significant differences between:

- Exposure Group 1 and Group 0
- Exposure Group 2 and Group 0

The difference between Groups 2 and 1 was not statistically significant.

The Kruskal-Wallis test also indicated significant differences between groups.

---

### Psychological Distance

Exposure group had a statistically significant effect on psychological distance.

- One-way ANOVA: *F*(2, 891) = 7.65, *p* = .0005
- Eta-squared = .0169

Post-hoc comparisons indicated a significant difference between Group 1 and Group 0.

The Kruskal-Wallis test also indicated significant differences between groups.

---

### Policy Support

The homogeneity of variance assumption was violated for policy support. Therefore, robust ANOVA procedures and Games-Howell pairwise comparisons were used.

Robust ANOVA results indicated statistically significant differences between exposure groups.

- Brown-Forsythe: *p* = .0095
- Fisher: *p* = .0093
- Welch: *p* = .0052
- R-squared = .01044

However, the Games-Howell pairwise comparisons did not identify statistically significant differences between individual pairs of exposure groups.

The Kruskal-Wallis test was also not statistically significant.

---

## Repository Files

- `analysis.do` — Stata analysis script
- `DataForOvercomingPluralisticIgnorance.csv` — Raw dataset
- `MetadataForOvercomingPluralisticIgnorance.csv` — Dataset metadata
- `DATASET_README.md` — Original dataset documentation
- `Experimental analysis of social norms.docx` — Written analysis report
- `boxplot outcomes.gph` — Boxplot of the outcome variables

---

## Software

- **Stata 14.2**

---

## Author

**Nafia Siddiqui**

This project was completed as part of my independent statistical analysis and research portfolio.
