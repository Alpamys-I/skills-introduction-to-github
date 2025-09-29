# Combine into a data frame
df <- data.frame(x = x, y = y, z = z)


# Set seed for reproducibility
set.seed(123)

# Create a normally distributed object with mean=50, sd=10, n=1000
x <- rnorm(1000, mean = 50, sd = 10)

# Histogram
hist(x, 
     main = "Histogram of Normally Distributed x", 
     xlab = "x values", 
     col = "skyblue", 
     border = "white")

# Summary statistics
summary(x)

# Standard deviation and variance
sd(x)
var(x)

# Create y with some linear relationship to x + noise
y <- 0.5 * x + rnorm(1000, mean = 0, sd = 5)

# Create a third variable, uncorrelated
z <- rnorm(1000, mean = 30, sd = 7)

# Scatterplot matrix
pairs(df, main = "Scatterplot Matrix")

plot(x, y, 
     main = "Scatterplot of x vs y", 
     xlab = "x", 
     ylab = "y", 
     pch = 19, 
     col = rgb(0.2, 0.4, 0.6, 0.5))
abline(lm(y ~ x), col = "red", lwd = 2)

plot(density(x), 
     main = "Density Plot of x", 
     col = "darkgreen", 
     lwd = 2)

library(ggplot2)

# Histogram with ggplot2
ggplot(df, aes(x)) +
  geom_histogram(binwidth = 2, fill = "dodgerblue", color = "white") +
  labs(title = "Histogram of x", x = "x", y = "Count")

# Scatter plot with regression line
ggplot(df, aes(x, y)) +
  geom_point(alpha = 0.5) +
  geom_smooth(method = "lm", col = "red") +
  labs(title = "Scatterplot of x vs y with Regression Line")
