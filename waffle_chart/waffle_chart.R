# devtools::install_github("hrbrmstr/waffle")
library(waffle)
library(ggpubr)
library(extrafont)
library(ggplot2)

###################################################################################################
financial <- c(`Unpaid only (35.1%)`=78, `A mix, but mostly paid (23.0%)`=51, 
               `A mix, but mostly unpaid (17.1%)`=38 , `Paid work only (16.7%)`=37, 
               `An equal mix of paid and unpaid (8.1%)`=18)

###222

financial_waffle<-waffle(financial/4, rows=10, size=0.5, equal = TRUE,
       colors=c("#c5dbfc", "#82b6ff", "#618cc7", "#374c91", "#042657"), 
       title="Compensation", 
       xlab="1 square == 4 people")+
  theme(text=element_text(family="Times New Roman", face="bold", size=12)) 

financial_waffle


###################################################################################################
gender <- c(`Man (95.1%)`=3328, `Woman (4.9%)`=163)

###175


gender_waffle<-waffle(gender/100, rows=10, size=0.5, equal = TRUE,
                            colors=c("#c5dbfc", "#BBECDA"), 
                            title="Gender", 
                            xlab="1 square == 100 people")+
  theme(text=element_text(family="Times New Roman", face="bold", size=12)) 

gender_waffle


###################################################################################################

education <- c(`Master's degree (46.2%)`=103, `Undergraduate degree (32.7%)`=73, 
               `Ph.D (9.4%)`=21, `Technical training (6.3%)`=14, 
               `High school/No formal (5.4%)`=12)
###223

education_waffle<-waffle(education/4, rows=10, size=0.5, equal = TRUE,
                         colors=c("#c5dbfc", "#82b6ff", "#618cc7", "#374c91", "#042657"), 
                         title="Education", 
                         xlab="1 square == 4 people")+
  theme(text=element_text(family="Times New Roman", face="bold", size=12)) 

education_waffle


###################################################################################################
####blue

English <- c(`Very confident (55.7%)`=123, `Confident (22.2%)`=49, 
             `Average (14.9%)`=33, 
             `Not confident/Uncomfortable (7.2%)`=16)

###222

English_waffle<-waffle(English/4, rows=10, size=0.5, equal = TRUE,
                         colors=c("#b0d0ff", "#6a9ade", "#385d94", "#042657", "#f2f2f0"), 
                         title="English proficiency", 
                         xlab="1 square == 4 people")+
  theme(text=element_text(family="Times New Roman", face="bold", size=12)) 

English_waffle


###################################################################

seniority <- c(`Over 10 years (26.9%)`=60, `6 to 10 years (25.6%)`=57, 
               `3 to 5 years (24.7%)`=55,  `1 to 2 years (14.8%)`=33, `< 1 year (8.0%)`=18)

###223

seniority_waffle<-waffle(seniority/4, rows=10, size=0.5, equal = TRUE,
                       colors=c("#c5dbfc", "#82b6ff", "#618cc7", "#374c91", "#042657", "#f2f2f0"), 
                       title="Seniority", 
                       xlab="1 square == 2 people")+
  theme(text=element_text(family="Times New Roman", face="bold", size=12)) 

seniority_waffle