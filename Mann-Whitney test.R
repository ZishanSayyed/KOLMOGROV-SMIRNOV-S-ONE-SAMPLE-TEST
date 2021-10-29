---------------------------#Mann-Whitney test-----------------------

#Ex 1 

#H0: there is no significant difference between reaction time of male and female.
#H1: Not H0


Gender=c('Female','Female','Female','Female','Female','Female','Male','Male','Male','Male','Male')
Reaction_time=c(34,36,41,43,44,37,45,33,35,39,42)
Data=data.frame(Gender,Reaction_time)
View(Data)
str(Data)
wilcox.test(Reaction_time~Gender,data = Data,mu=0,alt="two.sided",conf.int=T,conf.level=0.95,exact=F)

#DC:Null Hypothesis is  rejected 
#There is Significant difference between recation time of Male and Female 

#Ex2:

#H0:- Brand X and Brand Y are not significant (equal)
#H1: Brand X and Brand Y are significant (not equal)


Brand=c(rep("X",6),rep("Y",6))
Brand
Rating=c(3,4,2,6,2,5,9,7,5,10,6,8)
BData=data.frame(Brand,Rating)
head(BData)
wilcox.test(Rating~Brand,data =BData,mu=0,alt="two.sided",conf.int=T,conf.level=0.95,exact=F)
#DC:	We can say that there is a highly significant difference between the ratings 
# given to each brand in terms of the likelihood of buying the product.


#Ex3 
#H0: There is no significant difference between public bank and private bank employee
#H1: Not H0.


Bank=c(rep("PublicBank",10),rep("PrivateBank",13))
score=c(10,12,21,23,34,45,32,23,34,23,34,54,56,43,32,23,34,32,33,44,32,34,32)
SData=data.frame(Bank,score)        
head(SData)
wilcox.test(score~Bank,data =SData,mu=0,alt="two.sided",conf.int=T,conf.level=0.95,exact=F)

#DC:Null Hypothesis is rejected 
#There is Significant difference between the public bank and Private bank employee 
