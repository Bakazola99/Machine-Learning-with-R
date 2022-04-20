data <- read.csv("mtcars.csv")
attach(mtcars)
data<-mtcars
str(mtcars)

#bar chart
brand_table <- table(data$brand)
brand_table
barplot(brand_table)
par(las = 2)

#frame
brand_frame <- data.frame(mtcars$brand)
brand_frame
brand_frame <- arrange(mtcars, desc(brand))
brand_frame

#pie chart
pie(brand_table)

#Histogram
hist(data$mpg, main = "Histogram of mpg", xlab = "mpg", breaks = 10)

#boxplot
boxplot(data$mpg ~ data$am, main = "boxplot of mpg", ylab = "mpg", xlab = "am")

#scatter plot
plot(x= data$mpg, y = data$hp, pch = 1)
?plot
#summary statistics
descriptive<- summary(data$mpg)
descriptive