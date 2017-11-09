# iSEE

## About iSEE
iSEE is a computational predictor of binding affinity changes upon mutations (∆∆G), which is developed by using **i**nterface **S**tructure, **E**volution and **E**nergy-based features through random forest method [1].

This repository provides the iSEE predictor that you can use to do ∆∆G prediction and to identify the effects of mutations on your protein complexes. Besides, we provide all features data used in the iSEE work [1].

For the HADDOCK-refined models of wild type and mutant complexes as well as the PSSM files used to construct features, you can find them on SBGrid (doi:10.15785/SBGRID/520).

Please cite the article [1] if you use iSEE.


## Requirements
To use iSEE ∆∆G predictor, standard **R** installations and **randomForest** package must be installed.


## Usage
Using iSEE ∆∆G predictor with command line:

	Rscript run_iSEE.R  <features data file>

- `iSEE.model` is the iSEE ∆∆G predictor, which is a binary file and executed by the script `run_iSEE.R`. Note the two files must be in the same directory.
- Users need to provide the `<features data file>` with rigious format shown in the example file `features_examples.tsv`. There must exist headers and the column separator is tab.


#### Example:

	Rscript run_iSEE.R features_examples.tsv

## Features data

The directory `isee_features_data` contains all features data used in this work[1].

- `features_training_dataset.tsv`: Features used as training dataset.
- `features_NM_test_dataset.tsv`: The independent NM dataset of Benedix et al. Nature Methods 2009.
- `features_MDM2-p53_top4_test_dataset.tsv`: The independent MDM2-p53 test dataset using top 4 HADDOCK refined models.
- `features_MDM2-p53_top1_test_dataset.tsv`: The independent MDM2-p53 test dataset using top 1 HADDOCK refined model.
- `features_MDM2-p53_top4_full_mutations.tsv`: Features used for MDM2-p53 full mutations using top 4 HADDOCK refined models.
- `features_MDM2-p53_top1_full_mutations.tsv`: Features used for MDM2-p53 full mutations using top 4 HADDOCK refined model.


## Reference
1. C. Geng, A. Vangone, G.E. Folkers, L. Xue and Alexandre M.J.J. Bonvin, iSEE: Interface Structure, Evolution and Energy-based random forest predictor of binding affinity changes upon mutations. 2017. Submitted.
