#!/usr/bin/env Rscript

args <- commandArgs(TRUE)

check_args <- function(x){
    if (length(x) != 1){
        stop("Need feature data as input.\nUsage: run_iSEE_prediction.R <feature data file>")
    }
}

check_args(args)
dat <- read.delim(args[1], header = TRUE, sep = "\t")
load("./iSEE.model")

pred <- predict(model, dat)
pred_ddG <- data.frame(dat$mutationID, pred)
colnames(pred_ddG) <- c("mutationID", "iSEE_ddGpred(kcal/mol)")

print(pred_ddG)
