# MechaCar_Statistical_Analysis
## Overview

## Linear Regression to Predict MPG
![lmsummary](https://user-images.githubusercontent.com/83738699/136271695-586b5f07-2aee-4b85-abd8-859f32b9393a.PNG)

Looking at the above lm summary output you can see the following;

 1. The **Intercept**, **Vehicle_length**, and **Ground_clearance** are all statistically unlikely to produce random amounts of variance meaning they have a significant impact on mpg on the MechaCar prototype. While on the other hand **Vehicle_weight**, **Spoiler_angle**, and **AWD** all have a p value greater that the significance level of 0.05% indicating a random amount of variance in the dataset. 
 2. With the p value being **5.35e-11**, which is much smaller than our significance level of 0.05%, we would reject our null hypothesis, indicating that our slop does not equal **Zero**.
 3. Looking at the Multiple R-squared being 0.7149, 71% of all mpg prediction can be determined by this model.  This means the multiple regression will predict mpg when using **Vehicle_weight**, **Spoiler_angle**, and **AWD**.

## Summary Statistics on Suspension Coils
The design specifications of the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 PSI.
![Total_Summary](https://user-images.githubusercontent.com/83738699/136277435-7c1246d1-16ca-47cb-94bb-a4de714261d5.PNG)

When you look at the Total_Summary you can see that the variance of the suspension coils is under the specifications with a variance PSI of 62.29356. 
![Lot_Summary](https://user-images.githubusercontent.com/83738699/136277636-54b0a24b-2320-4384-9e8a-bf7df9bd8c0b.PNG)

But if you were to look at each lot and their  summary. It is clear that lot 3 is not under the design specifications of 100 PSI and is causing the variance with Total_Summary to be off. 

## T-Tests on Suspension Coils
![ttest](https://user-images.githubusercontent.com/83738699/136302993-2d95625b-be6a-4b59-9447-26a99fad63df.PNG)

Looking at the t-test results on suspension coils, you can see that the p-value is 0.06028% which is higher than the significance level of 0.05%. Given this value the mean of all three lots together are statistically similar to the population mean of 1500. 

If you look at the t-test for each lot on the other hand, the p-values tell you a different story.
![lot_one](https://user-images.githubusercontent.com/83738699/136303445-4bd5ff35-5ed3-4c64-b10d-bd9040e890d5.PNG)

Lot1 has a p-value of one which means it has a true sample mean of 1500 and that we can not reject our null hypothesis.
![lot_two](https://user-images.githubusercontent.com/83738699/136303475-e2860f58-2654-4d2d-a89d-1dbc50ac68d6.PNG)

Lot2 says the same thing, with a p-value of 0.6072 which is higher than the significance level of 0.05%. Thus we cannot reject our null hypothesis.
![lot_three](https://user-images.githubusercontent.com/83738699/136303488-aac007f8-cfb1-485a-8c96-7aea599fef0a.PNG)

Lot3 on the other hand has a p-value of 0.04168 which is lower than the significance level and looking at the confidence interval of 1492.431. Tells us to reject the hypothesis on this sample lot3 and that it is not statistically different. 

## Study Design: MechaCar vs Competition
Using the following metrics measured over a 4 year span and compared to the competitions metrics;
 - Cost
 - City efficiency
 - Highway efficiency
 - Maintenance cost
 - Safety rating
 - Horse power
 - Engine

### Null and alternative hypothesis
Upon determining the key factors for the prototype car, the following hypothesis can me asked;

 - Null Hypothesis- The prototype is priced appropriately based on the key factors.
 - Alternative Hypothesis- The prototype is not priced appropriately based on the key factors.

 #### Statistical test
 A multiple linear regression could be used to determine the factors that affect the selling price of the prototype, and what is the biggest feature that customers are looking for. The data needed for this test is comparable data from other companies based on the same features used in the prototype. 

> Written with [StackEdit](https://stackedit.io/).
