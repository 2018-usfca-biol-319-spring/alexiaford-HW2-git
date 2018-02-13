# A script to visualize NEON data on litterfall
# Alexia Ford
# February 12, 2018

# read in the data
litter_data <- read.csv("data/ltr_massdata.csv",
                        header = TRUE)

#subset out data from the University of Notre Dame Environmental Research Center
unde_data <- subset(litter_data,
                    siteID == "UNDE")

# let's first look at just leaves mass data
unde_leaves_data <- subset(unde_data,
                           functionalGroup == "Leaves")

# make a scatterplot of leaves mass by date
pdf("output/UNDE_leaves_mass_over_time_scatterplot.pdf")   #this u do after plot
plot(x = as.POSIXct(unde_leaves_data$collectDate),
     y = unde_leaves_data$dryMass,
     main = "Dry mass of leaves fallen in the University of Notre Dame Experimental Forest",
     xlab = "Date",
     ylab = "Dry mass of leaves in grams",
     pch = 16)
dev.off()

# A script to visualize NEON data on litterfall
# Alexia Ford
# February 12, 2018

# read in the data
litter_data <- read.csv("data/ltr_massdata.csv",
                        header = TRUE)

#subset out data from the University of Wisconsin Environmental Research Center
tree_data <- subset(litter_data,
                    siteID == "TREE")

# let's first look at just leaves mass data
tree_leaves_data <- subset(tree_data,
                           functionalGroup == "Leaves")

#git
# make a scatterplot of leaves mass by date
pdf("output/TREE_leaves_mass_over_time_scatterplot.pdf")   #this u do after plot
plot(x = as.POSIXct(tree_leaves_data$collectDate),
     y = tree_leaves_data$dryMass,
     main = "Dry mass of leaves fallen in the University of Wisconsin Experimental Forest",
     xlab = "Date",
     ylab = "Dry mass of leaves in grams",
     pch = 16)
dev.off()
