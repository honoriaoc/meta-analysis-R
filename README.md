# Meta-analysis in R — Fixed and random effects

Hands-on teaching materials for a practical session on **fixed- and
random-effects meta-analysis** in R, built around a real example: the effect of
**phytoestrogen supplementation on total cholesterol** in postmenopausal women.

By the end you will be able to pool trial results, fit and compare the two
models, read a forest plot, and quantify heterogeneity.

## What's in here

```
.
├── guide/        # the practical guide (walk-through): meta_analysis.Rmd
├── slides/       # the lecture slides (.pptx)
├── data/         # datasets (.xlsx)
│   ├── MA exercise.xlsx     # 25 trials  — used in the guide
│   └── MA exercise2.xlsx    # 39 trials  — used in the exercise
├── exercise/     # self-study exercise
│   ├── exercise.md          # the assignment + questions
│   └── exercise.R           # starter script with blanks to fill in
└── solutions/    # solution.Rmd (released after the session)
```

## Setup (do this before the session)

1. Install **R** → <https://cran.r-project.org>
2. Install **RStudio** → <https://posit.co/download/rstudio-desktop/>
3. Download this repository: green **Code ▸ Download ZIP**, then unzip it.
   *(No Git needed.)*
4. Open the project by double-clicking **`meta-analysis-R.Rproj`**.
   This sets the working directory automatically, so every `data/...` path
   just works.
5. In the RStudio console, install the packages **once**:

```r
   install.packages(c("meta", "metafor", "tidyverse", "readxl"))
```

> You're ready when `library(meta)` runs without errors.

---

## How to use it

- **Guide:** open `guide/meta_analysis.Rmd` and run it chunk by chunk
  (or click *Knit* for the full report).
- **Exercise:** open `exercise/exercise.R`, read `exercise/exercise.md`,
  fill in the blanks (`____`) and answer the questions.

## Getting the files

Click the green **Code → Download ZIP** button, unzip, and open the `.Rproj`.
(You don't need to know Git to use these materials.)

---

## During the session

**Guided part — the guide**
Open `guide/meta_analysis.Rmd` and run it **chunk by chunk** (the green ▶ button),
reading the comments as you go. Click **Knit** at the end to produce the full
HTML report.

**Your turn — the exercise**
Open `exercise/exercise.Rmd`, read `exercise/exercise.md`, fill in the blanks
(`__`) and answer the questions in the "Your answer" boxes. Then **Knit** it:
that knitted file *is* your submission.

---

## Troubleshooting

- **`Error: path does not exist`** → you didn't open the project via the
  `.Rproj`. Close everything and double-click `meta-analysis-R.Rproj`, then
  re-run.
- **`could not find function "metacont"`** → run `library(meta)` first.
- **`there is no package called …`** → run the `install.packages(...)` line above.

---

## Data source & citation

The datasets are derived from a published meta-analysis of randomized controlled
trials on phytoestrogen supplementation and cardiovascular risk factors in
postmenopausal women (*Menopause*, 2020). Please cite the original article when
reusing the data.

