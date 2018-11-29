
# Q1 ----------------------------------------------------------------------

?rank
typeof("rank")
typeof("net_worth")
typeof("age")


forbes <-read.csv(file.choose(),header = TRUE)

forbes
is.numeric(forbes$rank)
forbes$rank=as.numeric(forbes$rank)
is.numeric(forbes$rank)
forbes$net_worth=as.numeric(forbes$net_worth)
forbes$age=as.numeric(forbes$age)

# Q2 ----------------------------------------------------------------------

forbes <- forbes[which(forbes$net_worth < 1),]
forbes
forbes <-read.csv(file.choose(),header = TRUE)
forbes
forbes<-forbes[-c(1572,1573,1574,1575,1576,1577,1578),]
View(forbes)


# Q3 ----------------------------------------------------------------------

library(tidyverse)

ggplot(data=forbes)+
  geom_point(mapping=aes(x= lognet_worth,y=age))
net_worth1<-log(net_worth,base = exp(1))
ggplot(x=net_worth,data =)
log(net_worth)
net_worth
typeof(net_worth)
is.numeric(forbes$net_worth1)
as.numeric(forbes$net_worth)
forbes$net_worth=as.numeric(forbes$net_worth)
is.numeric(forbes$age)
forbes$age=as.numeric(forbes$age)
is.numeric(forbes$rank)
forbes$rank=as.numeric(forbes$rank)

ggplot(data=forbes)+
  geom_point(mapping=aes(x= net_worth,y=age))

# there is no pattern or corelation between age and net_worth n forbes data

ggplot(data=forbes)+
  geom_point(mapping=aes(x= log(net_worth),y=age))
# No still i can not see a clear pattern between age and Log net_worth.

# Q4 ----------------------------------------------------------------------

forbes <-read.csv(file.choose(),header = TRUE)
View(forbes)
forbes<-forbes[-c(1572,1573,1574,1575,1576,1577,1578),]
forbes$net_worth=as.numeric(forbes$net_worth)
forbesf<-forbes %>%
  filter(as.integer(country)>6)%>%
  mutate(difference=max(net_worth,na.rm=FALSE)-min(net_worth,na.rm=FALSE))

# Q5 ----------------------------------------------------------------------

ggplot(data=forbesf,aes(x=country,fill=difference))+
  geom_bar()

# Q6 ----------------------------------------------------------------------


ggplot(data=forbesf,aes(x=difference,fill=country))+
  geom_bar()

# Q7 ----------------------------------------------------------------------

#yes rank6,27,160,192,301 and 404

# Q8 ----------------------------------------------------------------------

avarge_rank=mean(rank)
is.numeric(forbesf$rank)
forbesf$rank=as.numeric(forbesf$rank)
forbesf%>%
  mutate(avarge_rank=mean(forbesf$rank,na.rm=FALSE))

# Q9 ----------------------------------------------------------------------

library(viridis)
install.packages("viridis")
install.packages("data.table")

forbesf<- forbesf%>%
mutate(country,sum_networth= sum(net_worth,na.rm=FALSE))
install.packages("maps")
map.world <- map_data('world')
ggplot(data = forbesf, aes(x = lon, y = lat,group = group )) +
  geom_polygon(aes(fill = `log(sum_networth)`)) + 
  scale_fill_viridis_c(option ='plasma')
1+1

