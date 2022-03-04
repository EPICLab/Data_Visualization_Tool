library(waffle)
library(ggpubr)
library(extrafont)
library(ggplot2)
library(HH)

data<-mentee_benefits
likert(Question~. | type, data, ReferenceZero=3, main = list("Being an implicit mentee can help in...", x=unit(.2, "npc")), layout=c(1,4), auto.key = list(columns = 2, reverse.rows = T),
          scales=list(y=list(relation="free")), between=list(y=1), strip.left=TRUE, strip = FALSE,
          as.percent=TRUE,positive.order=TRUE,
          par.strip.text=list(cex=1.1, lines=2), ylab="Question")

data<-mentor_benefits
likert(Question~. | type, data, ReferenceZero=3, main = list("Being an implicit mentor can help in...", x=unit(.2, "npc")), layout=c(1,4), auto.key = list(columns = 2, reverse.rows = T),
       scales=list(y=list(relation="free")), between=list(y=1), strip.left=TRUE, strip = FALSE,
       as.percent=TRUE,positive.order=TRUE,
       par.strip.text=list(cex=1.1, lines=2), ylab="Question")
