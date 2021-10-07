# Deliverable 1

#loading dplyr package from library
library(dplyr)

# reading in the MechaCar_mpg.csv file and naming it mechacar
mechaCar <- read.csv(file='MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

# performing linear regression on all 6 columns
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= mechaCar)

# printing out the summary of lm to determine p value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= mechaCar))


#Deliverable 2

#Importing Suspension_coil csv file
suspension <- read.csv(file='Suspension_coil.csv',check.names = F,stringsAsFactors = F)

# Creating a total_summary df to get mean, median, variance, and standard deviation
total_summary <- suspension %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Var_PSI=var(PSI),
                                          Std_dev=sd(PSI), num_Coil=n(), .groups = 'keep')

# Creating a lot_summary df using group_by() and summarize() functions for manufacturing lot by mean,median,variance, 
#std dev
lot_summary <- suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),
                                                                        Median_PSI=median(PSI),
                                                                        Var_PSI=var(PSI),
                                                                        Std_dev=sd(PSI), num_Coil=n(),
                                                                        .groups = 'keep')

# Deliverable 3

# Using t.test() to determine if the PSI for each manufacturing lot is statistically different from the population
# mean of 1,500 PSI.

t.test(suspension$PSI,mu=1500)

# creating subset functions for each lot to use in t.test()

lot1 <- subset(suspension, Manufacturing_Lot=="Lot1")
lot2 <- subset(suspension, Manufacturing_Lot=="Lot2")
lot3 <- subset(suspension, Manufacturing_Lot=="Lot3")

# use t.test() 3 times, one on each lot, to compare each manufacturing lot against mean PSI of population

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)

