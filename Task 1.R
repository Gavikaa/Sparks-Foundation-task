data = read.csv("https://raw.githubusercontent.com/AdiPersonalWorks/Random/master/student_scores%20-%20student_scores.csv")
> data
Hours Scores
1    2.5     21
2    5.1     47
3    3.2     27
4    8.5     75
5    3.5     30
6    1.5     20
7    9.2     88
8    5.5     60
9    8.3     81
10   2.7     25
11   7.7     85
12   5.9     62
13   4.5     41
14   3.3     42
15   1.1     17
16   8.9     95
17   2.5     30
18   1.9     24
19   6.1     67
20   7.4     69
21   2.7     30
22   4.8     54
23   3.8     35
24   6.9     76
25   7.8     86
> model1 <- lm(Scores~Hours,data)
> summary(model1)

Call:
  lm(formula = Scores ~ Hours, data = data)

Residuals:
  Min      1Q  Median      3Q     Max 
-10.578  -5.340   1.839   4.593   7.265 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept)   2.4837     2.5317   0.981    0.337    
Hours         9.7758     0.4529  21.583   <2e-16 ***
  ---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 5.603 on 23 degrees of freedom
Multiple R-squared:  0.9529,	Adjusted R-squared:  0.9509 
F-statistic: 465.8 on 1 and 23 DF,  p-value: < 2.2e-16

> graph=plot(data$Hours, data$Scores)
> abline(model1)
> predict(model1)
1        2        3        4        5        6        7        8 
26.92318 52.34027 33.76624 85.57800 36.69899 17.14738 92.42106 56.25059 
9       10       11       12       13       14       15       16 
83.62284 28.87834 77.75736 60.16091 46.47479 34.74382 13.23706 89.48832 
17       18       19       20       21       22       23       24 
26.92318 21.05770 62.11607 74.82462 28.87834 49.40753 39.63173 69.93672 
25 
78.73494 
> 2.4837+9.7758*9.25
[1] 92.90985
> p = as.data.frame(9.25)
> colnames(p)<- "Hours"
> predict(model1, newdata = p)
1 
92.90985 
