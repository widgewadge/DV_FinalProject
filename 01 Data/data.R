setwd("~/Desktop")

file_path_caps <- "caps.csv"
file_path_gills <- "gills.csv"
file_path_other <- "other.csv"
file_path_rings <- "rings.csv"
file_path_stalks <- "stalks.csv"
file_path_veils <- "veils.csv"

# read csv and join
df <- read.csv(file_path_other, stringsAsFactors = FALSE) %>% full_join(., read.csv(file_path_caps, stringsAsFactors = FALSE), by = "ID") %>% full_join(., read.csv(file_path_gills, stringsAsFactors = FALSE), by = "ID") %>% full_join(., read.csv(file_path_rings, stringsAsFactors = FALSE), by = "ID") %>% full_join(., read.csv(file_path_stalks, stringsAsFactors = FALSE), by = "ID") %>% full_join(., read.csv(file_path_veils, stringsAsFactors = FALSE), by = "ID")
