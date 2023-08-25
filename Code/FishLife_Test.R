Require(devtools)
# Install and load package
devtools::install_github("james-thorson/FishLife")
library( FishLife )

vignette("tutorial","FishLife")

# Get basic plot for Lutjanus campechanus (in database, so prediction is informed by species-specific data)
Plot_taxa( Search_species(Genus="Lutjanus",Species="bohar")$match_taxonomy, mfrow=c(3,2))

head(FishLife::FishBase_and_RAM$beta_gv)
