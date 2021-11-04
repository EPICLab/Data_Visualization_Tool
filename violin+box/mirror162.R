library(ggplot2)
library(ggpubr)
library(Hmisc)
library(extrafont)
library(RColorBrewer)
library(plotly)

d1<-C162
p1<-ggplot(d1, aes(x=Question, y=Score, fill=Question))+
  geom_violin(trim=TRUE, na.rm=TRUE, show.legend = FALSE, fill = "steelblue2")

p1<-p1+xlab("\nQuestion") + ylab("Score\n")+
  theme_minimal()+
  theme(text=element_text(family="Times", face="bold", size=20))+
  theme(axis.text =element_text(family="Times", face="bold", color="black",size=20))+
  geom_boxplot(fatten=NULL,size=1,width=0.1, fill='white', colour="black")+
  stat_summary(fun.y=mean, geom="point", size=3, color="red", show.legend = FALSE)+
  ggtitle("CS162")

#####################################M254################################
d2<-M254
p2<-ggplot(d2, aes(x=Questions, y=Scores, fill=Questions))+
  geom_violin(trim=TRUE, na.rm=TRUE, show.legend = FALSE, fill = "steelblue2")

p2<-p2+xlab("\nQuestion") + ylab("Score\n")+
  theme_minimal()+
  theme(text=element_text(family="Times", face="bold", size=20))+
  theme(axis.text =element_text(family="Times", face="bold", color="black",size=20))+
  geom_boxplot(fatten=NULL,size=1,width=0.1, fill='white', colour="black")+
  stat_summary(fun.y=mean, geom="point", size=3, color="red", show.legend = FALSE)+
  ggtitle("MTH254")

#############################M492#############################
d3<-M492
p3<-ggplot(d3, aes(x=Questions, y=Scores, fill=Questions))+
  geom_violin(trim=TRUE, na.rm=TRUE, show.legend = FALSE, fill = "steelblue2")

p3<-p3+xlab("\nQuestion") + ylab("Score\n")+
  theme_minimal()+
  theme(text=element_text(family="Times", face="bold", size=20))+
  theme(axis.text =element_text(family="Times", face="bold", color="black",size=20))+
  geom_boxplot(fatten=NULL,size=1,width=0.1, fill='white', colour="black")+
  stat_summary(fun.y=mean, geom="point", size=3, color="red", show.legend = FALSE)+
  ggtitle("MTH492")

############################M532###################################

d4<-M532
p4<-ggplot(d4, aes(x=Question, y=Score, fill=Question))+
  geom_violin(trim=TRUE, na.rm=TRUE, show.legend = FALSE, fill = "steelblue2")

p4<-p4+xlab("\nQuestion") + ylab("Score\n")+
  theme_minimal()+
  theme(text=element_text(family="Times", face="bold", size=20))+
  theme(axis.text =element_text(family="Times", face="bold", color="black",size=20))+
  geom_boxplot(fatten=NULL,size=1,width=0.1, fill='white', colour="black")+
  stat_summary(fun.y=mean, geom="point", size=3, color="red", show.legend = FALSE)+
  ggtitle("MTH532")


###############################CS492#########################################

d6<-C492
p6<-ggplot(d6, aes(x=Question, y=Score, fill=Question))+
  geom_violin(trim=TRUE, na.rm=TRUE, show.legend = FALSE, fill = "steelblue2")

p6<-p6+xlab("\nQuestion") + ylab("Score\n")+
  theme_minimal()+
  theme(text=element_text(family="Times", face="bold", size=20))+
  theme(axis.text =element_text(family="Times", face="bold", color="black",size=20))+
  geom_boxplot(fatten=NULL,size=1,width=0.1, fill='white', colour="black")+
  stat_summary(fun.y=mean, geom="point", size=3, color="red", show.legend = FALSE)+
  ggtitle("CS492")

###############################Total#########################################
d7<-TT
TT<-ggplot(d7, aes(x=Question, y=Score, fill=Question))+
  geom_violin(trim=TRUE, na.rm=TRUE, show.legend = FALSE, fill = "steelblue2")

TT<-TT+xlab("\nQuestion") + ylab("Score\n")+
  theme_light()+
  theme(text=element_text(family="Times", face="bold", size=20))+
  theme(axis.text =element_text(family="Times", face="bold", color="black",size=20))+
  geom_boxplot(fatten=NULL,size=0.5,width=0.05, fill='white', colour="black", outlier.shape = NA)+
  stat_summary(fun.y=mean, geom="point", size=4, color="red", show.legend = FALSE)+
  ggtitle("Total")

cairo_pdf("Total.pdf",
          antialias = "gray",
          width = 10, height = 7,)
TT
dev.off()

###############################HS#########################################

d5<-HS
p5<-ggplot(d5, aes(x=Question, y=Score, fill=Question))+
  geom_violin(trim=TRUE, na.rm=TRUE, show.legend = FALSE, fill = "steelblue2")+
  ylim(1, 5)

p5<-p5+xlab("\nQuestion") + ylab("Score\n")+
  theme_light()+
  theme(text=element_text(family="Times", face="bold", size=20))+
  theme(axis.text =element_text(family="Times", face="bold", color="black",size=20))+
  geom_boxplot(fatten=NULL,size=0.5,width=0.05, fill='white', colour="black", outlier.shape = NA)+
  stat_summary(fun.y=mean, geom="point", size=4, color="red", show.legend = FALSE)+
  ggtitle("Highschool")

cairo_pdf("HS.pdf",
          antialias = "gray",
          width = 10, height = 7,)
p5
dev.off()


#####################Senior################################################
d8<-Senior
p8<-ggplot(d8, aes(x=Question, y=Score, fill=Question))+
  geom_violin(trim=TRUE, na.rm=TRUE, show.legend = FALSE, fill = "steelblue2")

p8<-p8+xlab("\nQuestion") + ylab("Score\n")+
  theme_light()+
  theme(text=element_text(family="Times", face="bold", size=20))+
  theme(axis.text =element_text(family="Times", face="bold", color="black",size=20))+
  geom_boxplot(fatten=NULL,size=0.5,width=0.05, fill='white', colour="black", outlier.shape = NA)+
  stat_summary(fun.y=mean, geom="point", size=4, color="red", show.legend = FALSE)+
  ggtitle("Senior Student")

cairo_pdf("Senior.pdf",
          antialias = "gray",
          width = 10, height = 7,)
p8
dev.off()


#################################Small#####################################
d9<-Small
p9<-ggplot(d9, aes(x=Question, y=Score, fill=Question))+
  geom_violin(trim=TRUE, na.rm=TRUE, show.legend = FALSE, fill = "steelblue2")

p9<-p9+xlab("\nQuestion") + ylab("Score\n")+
  theme_light()+
  theme(text=element_text(family="Times", face="bold", size=20))+
  theme(axis.text =element_text(family="Times", face="bold", color="black",size=20))+
  geom_boxplot(fatten=NULL,size=0.5,width=0.05, fill='white', colour="black", outlier.shape = NA)+
  stat_summary(fun.y=mean, geom="point", size=4, color="red", show.legend = FALSE)+
  ggtitle("Small Classes")

cairo_pdf("Small.pdf",
          antialias = "gray",
          width = 10, height = 7,)
p9
dev.off()


###################################Large#####################################
d10<-Large
p10<-ggplot(d10, aes(x=Question, y=Score, fill=Question))+
  geom_violin(trim=TRUE, na.rm=TRUE, show.legend = FALSE, fill = "steelblue2")

p10<-p10+xlab("\nQuestion") + ylab("Score\n")+
  theme_light()+
  theme(text=element_text(family="Times", face="bold", size=20))+
  theme(axis.text =element_text(family="Times", face="bold", color="black",size=20))+
  geom_boxplot(fatten=NULL,size=0.5,width=0.05, fill='white', colour="black", outlier.shape = NA)+
  stat_summary(fun.y=mean, geom="point", size=4, color="red", show.legend = FALSE)+
  ggtitle("Large Classes")

cairo_pdf("Large.pdf",
          antialias = "gray",
          width = 10, height = 7,)
p10
dev.off()

####################################MTH####################################

d11<-MTH
p11<-ggplot(d11, aes(x=Questions, y=Scores, fill=Questions))+
  geom_violin(trim=TRUE, na.rm=TRUE, show.legend = FALSE, fill = "steelblue2")+
  ylim(1, 5)

p11<-p11+xlab("\nQuestion") + ylab("Score\n")+
  theme_light()+
  theme(text=element_text(family="Times", face="bold", size=20))+
  theme(axis.text =element_text(family="Times", face="bold", color="black",size=20))+
  geom_boxplot(fatten=NULL,size=0.5,width=0.05, fill='white', colour="black", outlier.shape = NA)+
  stat_summary(fun.y=mean, geom="point", size=4, color="red", show.legend = FALSE)+
  ggtitle("Math Student")

cairo_pdf("Math.pdf",
          antialias = "gray",
          width = 10, height = 7,)
p11
dev.off()

################################CS######################################


d12<-CS

p12<-ggplot(d12, aes(x=Question, y=Score, fill=Question))+
  geom_violin(trim=TRUE, na.rm=TRUE, show.legend = FALSE, fill = "steelblue2")

p12<-p12+xlab("\nQuestion") + ylab("Score\n")+
  theme_light()+
  theme(text=element_text(family="Times", face="bold", size=20))+
  theme(axis.text =element_text(family="Times", face="bold", color="black",size=20))+
  geom_boxplot(fatten=NULL,size=0.5,width=0.05, fill='white', colour="black", outlier.shape = NA)+
  stat_summary(fun.y=mean, geom="point", size=4, color="red", show.legend = FALSE)+
  ggtitle("CS Student")

cairo_pdf("CS.pdf",
          antialias = "gray",
          width = 10, height = 7,)
p12
dev.off()


