# A script to visualize NEON data on litterfall
# Alexia Ford
# February 8, 2018

# read in the data
litter_data <- read.csv("data/ltr_massdata.csv",
                        header = TRUE)

#subset out data from the University of Notre Dame Environmental Research Center
unde_data <- subset(litter_data,
                    siteID == "UNDE")

# let's first look at just leaves mass data
unde_leaves_data <- subset(unde_data,
                           functionalGroup == "Leaves")

# make a scatterplot of flower mass by date
pdf("output/BART_flower_mass_over_time_scatterplot.pdf")   #this u do after plot
plot(x = as.POSIXct(bart_flower_data$collectDate),
     y = bart_flower_data$dryMass,
     main = "Dry mass of flowers fallen in the Bartlett Experimental Forest",
     xlab = "Date",
     ylab = "Dry mass of flowers in grams",
     pch = 16)
dev.off()

