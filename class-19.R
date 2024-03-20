Manager<-c(1:5)
Manager
Date<-c("10/15/18","01/11/18","10/21/18","10/28/18","05/01/18")
Date
country<-c('US','US','IRL','IRL','IRL')
country
Gender<-c('M','F','F','M','F')
Gender
Age<-c(32,45,25,39,99)
Age
q1<-c(5,3,3,3,2)
q1
q2<-c(4,5,5,3,2)
q2
q3<-c(5,2,5,4,1)
q3
q4<-c(5,5,5,NA,2)
q4
q5<-c(5,5,2,NA,1)
q5

Trial <-data.frame(Manager,Date,country,Gender,Age,q1,q2,q3,q4,q5)

View(Trial)

#drop the column
Trial <-subset(Trial, select= -Manager)
Trial 


#print first 3 rows
Trial[1:3,]

#print only first column
Trial[1:3,1]

#print first 3 rows with first 3 columns
Trial[1:3,1:3]

#print only 1, 3 
Trial[c(1,3),1:3]

#print rows(1,3,5) and columns(2,4)
Trial[c(1,3,5),c(2,4)]


#structure of a data frame
str(Trial)

#adding the new column
Trial$age_cat[Trial$Age >=45] <-"Elder"
Trial$age_cat[Trial$Age <=25] <-"Young"
Trial$age_cat[Trial$Age >=26 & Trial$Age <=44] <-"Middle aged"


Trial <- subset(Trial, select= -age_cat)
View(Trial)

#ordinal and factored
Trial$age_cat <- factor(Trial$age_cat,
                        order = TRUE,
                        levels = c("Young","Middle aged","Elder"))


str(Trial)

