# SC212 Spring 2022 -  Intro Stats/Data Science Prof. Zeldow - HW04
# Matthew Bass
# 02/09/2022


###############################################################################
#    Part 1           Gettysburg Data
###############################################################################


# clean all variables 
rm(list=ls(all=TRUE))

word_lens <- c(6,5,6,11,11,5,3,7,10,6)
word_len_mean <- mean(word_lens)

prop_words_over_4 = length(word_lens[word_lens> 4])/length(word_lens)

# Loading the entire Gettysburg address in
GB.data = read.csv("Data/gettysburg.csv")

# getting avg length for all the words in the csv
mean(GB.data$Length)


# Getting the classes mean word lengths of their samples
classdata <- c(7,4,8,7,5.2,7.7,6.5,4.4,5.7,8,6.5,6.4,
               6.2,6.1,5.5,4.9,6.8,4.9,7.5,6.9,7,5.9)



classdata_mean = mean(classdata)


# getting truly random sample
rand_word_samp = sample(GB.data$Word, size = 10)


# making random sample based off of class
my.sample <- sample(GB.data$Length, 10)
mean(my.sample)


###############################################################################
#    Part 2         Survey Data
###############################################################################

# Loading the entire Gettysburg address in
Survey.data = read.csv("Data/surveydata.csv")

# WILL RESULT IN NA BECAUSE DATA NOT CLEANED
mean(Survey.data$salary)

# this gives proper results removing the NA
mean(Survey.data$salary, na.rm = TRUE)


# getting summary
summary(Survey.data)




# To make these work better going to replace NA
hist(Survey.data$salary, main= "Colby StudentSurvey Expected Anual Salaries 10+
     years (hist)",  ylab="Expected Salraries") 



# Boxplot of salary data
boxplot(Survey.data$salary, main= "Colby StudentSurvey Expected Anual Salaries 10+
     years (box)",  xlab="Expected Salraries") 



# factoring the dinging data
Survey.data$dining = factor(Survey.data$dining)

# getting levels of the dining factor
levels(Survey.data$dining)

# Translating the levels
levels(Survey.data$dining) <- c("Dana","Foss","Bobs")

table(Survey.data$dining)

dining_proprtion <- table(Survey.data$dining)/sum(table(Survey.data$dining))

table(Survey.data$dining, Survey.data$sex)


#converting sex to male and female 
Survey.data$sex = factor(Survey.data$sex)
# Translating the levels
levels(Survey.data$sex) <- c("Female","Male")



boxplot(Survey.data$politics ~ Survey.data$dining,
        main="Distribution of Politics by Dining Hall Preference", xlab = 
          "Dining Hall", ylab = "Liberal -- Moderate -- Conservative")

