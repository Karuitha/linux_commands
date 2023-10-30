## Load packages manager ----
if(!require("pacman")){
  install.packages("pacman")
}

# Load R packages ----
p_load(tidyverse, tidymodels,
       skimr, GGally, naniar,
       Amelia, janitor, 
       remotes, devtools,
       flextable, kableExtra,
       ggthemes)

# Install the pseudo-package from this Github repository ----
devtools::install_github("max-alletsee/rstudio-themes")

library(rstudiothemes) # ... then load the library ----

# Example 1: bulk-install all light themes
install_rstudio_themes(theme = "all_light")

# Example 1: bulk-install all dark themes
install_rstudio_themes(theme = "all_dark")
