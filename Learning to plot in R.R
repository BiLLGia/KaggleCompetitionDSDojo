####Plots and Graphs design
##For the needs of the exercise I will use some prepared datasets from R
##Loading the graphics library
library(ggplot2)

##I will use data from the Shell People database for the example
SP<-read.csv("C:\\Apps\\HR analytics\\Global_Data Set_28022014_1sheet.csv")
names(SP)
##For simplicity, I am selecting the first 300 rows from the SP
SP_short<-data.frame(SP[1:100,])
countries_host<-data.frame(unique(SP_short$Host.country))













####Bar plots
ggplot(SP_short,aes(x=Host.country))+

#Simple bar
#geom_bar()

#Flipping the bars
#geom_bar()+coord_flip()

#Changing colours and width of the bars
#geom_bar(fill="blue", colour="darkgreen", width=.7)

#Stacked bars
ggplot(SP_short,aes(Host.country,fill=Job.group))+geom_bar(width=.5)

####Histograms
ggplot(SP_short,aes(x=Host.country))+geom_histogram()

####Density plots
ggplot(SP_short,aes(x=Host.country))+geom_density()

####Dot plots
ggplot(SP_short,aes(x=Host.country))+geom_dotplot(binwidth=.5)