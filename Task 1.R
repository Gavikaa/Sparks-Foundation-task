data = read.csv("https://raw.githubusercontent.com/AdiPersonalWorks/Random/master/student_scores%20-%20student_scores.csv")
data
model1 <- lm(Scores~Hours,data)
summary(model1)
graph=plot(data$Hours, data$Scores)
abline(model1)
predict(model1)
2.4837+9.7758*9.25
p = as.data.frame(9.25)
colnames(p)<- "Hours"
predict(model1, newdata = p)