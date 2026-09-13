**************************************************
* PROJECT: Experimental Analysis of Social Norms
* DATASET: Overcoming Pluralistic Ignorance
* AUTHOR: Nafia Siddiqui
* DATE: 12th September 2026 
**************************************************

**************************************************
* 1. Import data
**************************************************

import delimited "DataForOvercomingPluralisticIgnorance.csv", clear

**************************************************
* 2. Prepare variables
**************************************************

destring exposuregroup normavgscale psydavgscale polsuppavgscale, replace
codebook exposuregroup normavgscale psydavgscale polsuppavgscale


**************************************************
* 3. Descriptive statistics
**************************************************

tabstat normavgscale psydavgscale polsuppavgscale, by(exposuregroup) statistics(n mean sd min max)

**************************************************
* 4. Assumption checks
**************************************************

* Check for outliers using boxplots
graph box normavgscale psydavgscale polsuppavgscale

* Test normality within each exposure group
by exposuregroup, sort: swilk normavgscale psydavgscale polsuppavgscale

* Test homogeneity of variance
robvar normavgscale, by(exposuregroup)

robvar psydavgscale, by(exposuregroup)

robvar polsuppavgscale, by(exposuregroup)

**************************************************
* 5. Main analyses
**************************************************

* One-way ANOVA for climate norms
oneway normavgscale exposuregroup

* One-way ANOVA for psychological distance
oneway psydavgscale exposuregroup

* Install robnova if not already installed
ssc install robnova

* Robust ANOVA for policy support
robnova polsuppavgscale exposuregroup

**************************************************
* 6. Post-hoc comparisons
**************************************************

* Tukey-adjusted pairwise comparisons for climate norms
pwmean normavgscale, over(exposuregroup) mcompare(tukey)

* Tukey-adjusted pairwise comparisons for psychological distance
pwmean psydavgscale, over(exposuregroup) mcompare(tukey)

* Install pwmc package if not already installed
ssc install pwmc

* Games-Howell pairwise comparisons for policy support
pwmc polsuppavgscale, over(exposuregroup)

**************************************************
* 7. Effect sizes
**************************************************

* Effect size for climate norms
anova normavgscale exposuregroup
estat esize

* Effect size for psychological distance
anova psydavgscale exposuregroup
estat esize

* Policy support effect size interpreted using R-squared
* from the ANOVA output

**************************************************
* 8. Robustness checks
**************************************************

* Kruskal-Wallis test for climate norms
kwallis normavgscale, by(exposuregroup)

* Kruskal-Wallis test for psychological distance
kwallis psydavgscale, by(exposuregroup)

* Kruskal-Wallis test for policy support
kwallis polsuppavgscale, by(exposuregroup)
