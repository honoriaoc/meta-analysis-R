# =====================================================================
#  EXERCISE  —  Fixed- and random-effects meta-analysis in R
#  Phytoestrogens and total cholesterol  —  39 randomized clinical trials
#
#  This repeats the steps of the practical guide, but on the larger
#  dataset "MA exercise2" (39 trials). Fill in every blank marked  ____
#  and run the script top to bottom, then answer the questions in
#  exercise.md.
# =====================================================================

# --- packages (install once, then keep commented out) ---------------
# install.packages(c("meta", "tidyverse", "readxl"))
library(meta)        # meta-analysis functions: metacont, forest, ...
library(tidyverse)   # dplyr / readr / tibble: rename, mutate, the |> pipe
library(readxl)      # read_excel(): read the .xlsx data file


# --- 1) Load the data ------------------------------------------------
# The file lives in the data/ folder of this project.
dat <- read_excel("data/MA_exercise2.xlsx",
                  sheet = "Total cholesterol")

glimpse(dat)                                   # check the columns and their types

# Tidy the study label (rename the long column to "study")
dat <- dat |> rename(study = `Author, Year of Publication`)


# --- 2) Fixed-effects model ------------------------------------------
# TODO: choose TRUE / FALSE so that ONLY the fixed (common) effect model is fitted.
m_fixed <- metacont(
  n.e     = n_int,           # intervention group size
  mean.e  = int_mean_diff,   # mean change, intervention arm
  sd.e    = int_sd_diff,     # SD of the change, intervention arm
  n.c     = n_control,       # control group size
  mean.c  = cont_mean_diff,  # mean change, control arm
  sd.c    = cont_sd_diff,    # SD of the change, control arm
  studlab = study,
  data    = dat,
  sm      = "MD",            # summary measure = raw Mean Difference
  common  = ____,            # <- fixed model: TRUE or FALSE ?
  random  = _____             # <- fixed model: TRUE or FALSE ?
)
summary(m_fixed)             # read off the pooled MD, its 95% CI and I^2


# --- 3) Random-effects model -----------------------------------------
# TODO: switch the model to RANDOM, and use the DerSimonian-Laird estimator.
m_random <- metacont(
  n.e     = n_int,
  mean.e  = int_mean_diff,
  sd.e    = int_sd_diff,
  n.c     = n_control,
  mean.c  = cont_mean_diff,
  sd.c    = cont_sd_diff,
  studlab = study,
  data    = dat,
  sm      = "MD",
  common     = ____,         # <- random model: TRUE or FALSE ?
  random     = ____,         # <- random model: TRUE or FALSE ?
  method.tau = "____"        # <- DerSimonian-Laird estimator (two-letter code)
)
summary(m_random)


# --- 4) Heterogeneity ------------------------------------------------
# Look at I^2, tau^2 and Cochran's Q in the summaries above.
# TODO (on paper): is I^2 low (0-25%), moderate (25-50%),
#                  substantial (50-75%) or considerable (>75%) ?


# --- 5) Forest plots (optional) --------------------------------------
forest(m_fixed,  common = TRUE)
forest(m_random, random = TRUE)


# =====================================================================
#  Now answer the questions in exercise.md:
#   1. Which model is the right one to use here — fixed or random? Why?
#   2. Overall effect estimate (fixed) + interpretation
#   3. Overall effect estimate (random) + interpretation
#   4. Do the two models give different results? If yes, why? If not, why?
# =====================================================================
