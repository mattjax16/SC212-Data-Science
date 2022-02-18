library(Lock5Data)
library(ggplot2)
data("PASeniors")
sd(PASeniors$HWHours)
delete.na <- function(DF, n=0) {
  DF[rowSums(is.na(DF)) <= n,]
}
PASeniors <- delete.na(PASeniors)

data("StudentSurvey")

StudentSurvey <-StudentSurvey[!is.na(StudentSurvey$Height),]

summary(StudentSurvey)

ggplot(StudentSurvey, aes(x=Height, fill=Sex)) + geom_boxplot() +
  facet_wrap(~Sex, ncol=1)


summary(StudentSurvey$Height[StudentSurvey$Sex == 'F'])
sd(StudentSurvey$Height[StudentSurvey$Sex == 'M'])
summary(StudentSurvey$Height[StudentSurvey$Sex == 'M'])


x <-c(3,  5,	2,	7,	6)
y <- c(	1,	2,	1.5,	3,	2.5)

cor(x,y)
plot(x,y)
