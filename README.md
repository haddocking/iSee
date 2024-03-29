# iSEE

## About iSEE
iSEE is a computational predictor of binding affinity changes upon single point mutations (∆∆G) [1]. It is based on a random forest model that makes use of **i**nterface **S**tructure, **E**volution and **E**nergy-based features.

This repository provides the iSEE predictor that you can use to do ∆∆G prediction and to identify the effects of mutations on your protein complexes. Besides, we provide all features data used in the iSEE project [1].

The HADDOCK-refined models of both wild type and mutant complexes as well as the PSSM files used to construct the features can be found in the SBGrid data repository ([doi:10.15785/SBGRID/520](https://data.sbgrid.org/dataset/520)).

Please cite the article [1] if you use iSEE.


## Requirements
1. Download and install [R](https://www.r-project.org/). After installing, type command `R` or `RScript` in your terminal, they should be available now.
2. Install R packages [randomForest](https://cran.r-project.org/web/packages/randomForest/) and [caret](https://cran.r-project.org/web/packages/caret/)
```r
# Enter R enviroment
R

# Install R packages
> install.packages(c("caret", "randomForest"))

# Quit R environment
> q()
```


## Usage
To use the iSEE ∆∆G predictor at the command line type:

	Rscript run_iSEE.R  <features data file>

- `iSEE.model` is the iSEE ∆∆G predictor, which is a binary file and executed by the script `run_iSEE.R`. Note the two files must be in the same directory.
- Users need to provide the `<features data file>` with rigorous format as shown in the example file `features_examples.tsv`. Headers must be present and a tab should be used as column separator.


#### Example:

	Rscript run_iSEE.R features_examples.tsv

## Features data

The directory `isee_features_data` contains all features data used in this work[1].

Features based on the top 1 HADDOCK refined model:
- `features_training_dataset_top1.tsv`: Features used as training dataset. The `iSEE.model` we provide here is trained on these data.
- `features_NM_test_dataset_top1.tsv`: The independent NM test dataset of Benedix et al. Nature Methods 2009.
- `features_S487_test_dataset_top1.tsv`: The independent SKEMPI2 S487 test
  dataset.
- `features_MDM2-p53_test_dataset_top1.tsv`: The independent MDM2-p53 test dataset.
- `features_MDM2-p53_full_mutations_top1.tsv`: Features used for MDM2-p53 full mutations.

Average features based on the top 4 HADDOCK refined models:
- `features_training_dataset_top4.tsv`
- `features_NM_test_dataset_top4.tsv`
- `features_S487_test_dataset_top4.tsv`
- `features_MDM2-p53_test_dataset_top4.tsv`
- `features_MDM2-p53_full_mutations_top4.tsv`


## Reference
1. C. Geng, A. Vangone, G.E. Folkers, L.C. Xue and A.M.J.J. Bonvin. [iSEE: Interface Structure, Evolution and Energy-based machine learning predictor of binding affinity changes upon mutations.](https://doi.org/10.1002/prot.25630) Proteins: Struc. Funct. & Bioinformatics Advanced Online Publication (2018).
