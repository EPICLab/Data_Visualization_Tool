library(HistData)
library(ggplot2)
library(hrbrthemes)
library(GGally)
library(viridis)
library(lattice)
library(gridExtra)
library(plyr)
library(ggpubr)
library(ggridges)
library(maps)
library(shiny)
library(plotly)
library(grid)
library(gridExtra)
library(scales)
library(usethis)



data<-read.csv("~/Desktop/covid.csv")
covid_data<-data.frame(area=data$location, 
                       cases=data$total_cases, 
                       death=data$total_deaths,
                       population=data$population,
                       IR=data$total_cases/data$population)

new<-covid_data[order(covid_data$cases, decreasing = TRUE),]
occurrenceClean <- new[!duplicated(new$area),]
occurrenceClean<-subset(occurrenceClean, area %in% c("Europe", "Asia", "North America", "South America", "Africa", "Austria"))

area<-occurrenceClean$area
data<-occurrenceClean$population
data2<-occurrenceClean$cases
data<-append(data,data2)
cata<-c("population","population","population","population","population","population",
        "Confirmed","Confirmed","Confirmed","Confirmed","Confirmed","Confirmed")
bar_data<-data.frame(area, data, cata)

data<-read.csv("~/Desktop/ST537/assignment4/covid.csv")
covid_data<-data.frame(country=data$location, 
                       cases=data$total_cases, 
                       death=data$total_deaths,
                       age=data$median_age)
vc<-c("Europe", "Asia", "North America", "South America", "Africa", "Austria")
covid_data1<-data.frame(covid_data[is.element(covid_data$country, vc),])
Asia<-covid_data1[is.element(covid_data1$country, 'Asia'),]
Asia$index<-1:nrow(Asia)
Europe<-covid_data1[is.element(covid_data1$country, 'Europe'),]
Europe$index<-1:nrow(Europe)
NorthAmerica<-covid_data1[is.element(covid_data1$country, 'North America'),]
NorthAmerica$index<-1:nrow(NorthAmerica)
EuropeanUnion<-covid_data1[is.element(covid_data1$country, 'Africa'),]
EuropeanUnion$index<-1:nrow(EuropeanUnion)
SouthAmerica<-covid_data1[is.element(covid_data1$country, 'South America'),]
SouthAmerica$index<-1:nrow(SouthAmerica)
UnitedStates<-covid_data1[is.element(covid_data1$country, 'Austria'),]
UnitedStates$index<-1:nrow(UnitedStates)
total_cases1 <- rbind(Asia,Europe,NorthAmerica,EuropeanUnion,SouthAmerica,UnitedStates)
colnames(total_cases1) <- c("country",  "cases", "death",  "age", "date")
death_rate<-(total_cases1$death)/(total_cases1$cases)
total_cases2<-cbind(total_cases1, death_rate)


t <- list(
  family = "sans serif",
  size = 18,
  color = 'Black')


c <- plot_ly(occurrenceClean, 
             x = ~area,
             y = ~cases,
             name = "Cases",
             type = "bar",
             marker=list(color="rgba(240, 52, 52, 1)"), showlegend = T
) %>%
  add_trace(y = ~population,
            name = "population", 
            marker=list(color="rgba(191, 191, 191, 1)"))%>% 
  layout(yaxis = list(title = "Number of people (Unit: Billion)"),
         barmode = "group", font=t)


d<-plot_ly(total_cases2,y = ~death_rate, 
           color = ~country, 
           type = "box", 
           marker = list(color = colors),showlegend = F) %>% 
  layout(title = list(text=""),
         xaxis = list(title = "",
                      zeroline = FALSE),
         yaxis = list(title = "Death Rate Among the Domastic Population",
                      zeroline = FALSE), font =t)



t1 <- list(
  family = "sans serif",
  size = 20,
  color = 'Black')

t2 <- list(
  family = "sans serif",
  size = 18,
  color = 'black')

p<-subplot(
  c%>%layout(annotations = list(x=0.6, y = 1.02, text = "Real time Covid-19 Dashboard (<a href='https://coronavirus.jhu.edu/'>Data source: John Hopkins University Medicine</a>)", showarrow = F, xref='paper', yref='paper', font=t1), legend = list(x = 0.4, y = 0.9)),
  
  d%>%layout(annotations = list(x=-0.1, y = 0.98, text = "Population vs Infection Cases (Unit:Billion)                                                                                                                                                       Death Rate", showarrow = F, xref='paper', yref='paper', font=t2), legend = list(x = 0.4, y = 0.9)))
