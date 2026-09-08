# ============================================================
# ET0models Package - Build and Submit Instructions
# ============================================================
#
# Follow these steps to prepare the package for CRAN submission.
# Run each section in order from the package root directory.
#
# Prerequisites:
#   install.packages(c("devtools", "roxygen2", "testthat", "knitr",
#                       "rmarkdown", "usethis"))
# ============================================================

# --- STEP 1: Set working directory to the package folder ---
# setwd("path/to/ET0models")

# --- STEP 2: Create the sample dataset (.rda file) ---
# Read the CSV and save as .rda
jhansi_weather <- read.csv("data-raw/jhansi_weather.csv",
                           stringsAsFactors = FALSE)
jhansi_weather$Date <- as.Date(jhansi_weather$Date)
jhansi_weather$RH_morning <- as.integer(jhansi_weather$RH_morning)
jhansi_weather$RH_evening <- as.integer(jhansi_weather$RH_evening)

# Remove old CSV from data/ if present
if (file.exists("data/jhansi_weather.csv")) {
  file.remove("data/jhansi_weather.csv")
}

# Save as compressed .rda
save(jhansi_weather, file = "data/jhansi_weather.rda", compress = "xz")
cat("Dataset saved:", nrow(jhansi_weather), "rows\n")

# --- STEP 3: Generate documentation ---
devtools::document()

# --- STEP 4: Run tests ---
devtools::test()

# --- STEP 5: Build vignettes ---
devtools::build_vignettes()

# --- STEP 6: Run R CMD check (CRAN-level) ---
devtools::check(cran = TRUE)
# Fix any ERRORs, WARNINGs, or NOTEs before submitting

# --- STEP 7: Build the package tarball ---
devtools::build()

# --- STEP 8: Submit to CRAN ---
# Option A: Via devtools
# devtools::release()
#
# Option B: Manual upload
# 1. Go to https://cran.r-project.org/submit.html
# 2. Upload the .tar.gz file from Step 7
# 3. Fill in the submission form
# 4. Confirm via email
#
# --- STEP 9: Upload to GitHub (for development version) ---
# git init
# git add .
# git commit -m "Initial release of ET0models v1.0.0"
# git remote add origin https://github.com/ajaysatpute/ET0models.git
# git push -u origin main
