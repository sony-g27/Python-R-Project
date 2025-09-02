# R Example: Clinical Dataset Analysis
library(ggplot2)
library(dplyr)

# Load dataset (replace with actual path)
df <- read.csv("diabetes.csv")

# Summary stats
summary(df)

# Correlation plot (numeric variables)
cor_matrix <- cor(df[sapply(df, is.numeric)])
print(cor_matrix)

# Logistic regression example
model <- glm(Outcome ~ ., data=df, family=binomial)
summary(model)

# Visualization
ggplot(df, aes(x=Age, fill=factor(Outcome))) +
  geom_histogram(binwidth=5, position="dodge") +
  labs(title="Age Distribution by Outcome", x="Age", y="Count")
