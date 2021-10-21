

#Example 1:
n=5
N=60
obs=c(5,9,11,16,19)
Theo=60/n
Theo
FO_xi=cumsum(obs/N)
FT_xi=cumsum(Theo/N)
Theo=rep(60/n,5)

Theo
FO_xi=cumsum(obs/N) 
FT_xi=cumsum(Theo/N)
dc1=abs(FO_xi-FT_xi) 
Table1=data.frame(obs,Theo,FO_xi,FT_xi,dc1)
Table1
D=max(dc1)
D
#D0.05=1.36/vn=1.36/v60=0.175
#Since the calculated value is greater than the critical value, hence we reject the null hypothesis 
#ie 0.1833> 0.175 
#conclude that there is a difference among students of different streams in their intention of joining the Club.

#Example 2:

#Ho: Random no. are not uniform   V/S   H1: Not Ho        
N=5
i=c(1:5)
Ri=c(0.54, 0.73, 0.98, 0.11, 0.68)
Ri=sort(Ri)
D_plus=(i/N-Ri)
D_mins=(Ri-(i-1)/N)
Table2=data.frame(i,Ri,D_plus,D_mins)
Table2
max(D_plus)
max(D_mins)
D=max(D_plus,D_mins)
D



#Da=0.565  (using KS Table)   0.34< 0.565
#D < D a
#we do not reject Ho    
#Conclusion:  Random numbers are not uniform.







#-------------------------------------------------------------------------------------------------------------#
#Example 3


#H??? : given sample comes from normal distribution with µ=100 and s=10 i.e  X~N (µ=100 , s=10)
v/s
#H1: given sample does not come from normal distribution with  µ=100 and s=10    

xi=c(110,102,98,95,108,105,103,90,92,100)
x_bar=100 
sd=10
N=10

xi_new=sort(xi)
i=c(1,2,3,4,5,6,7,8,9,10)
Fn_xi=i/N
z=(xi_new-x_bar)/sd
F0_xi=pnorm(z)
dc=abs(Fn_xi-F0_xi)
dc
Table3=data.frame(xi_new,Fn_xi,z,F0_xi,dc)
table
max(dc)
#Decision: As  Dn = 0.15866<0.410,  Dn is calculated form Table a=D10‚0·05=0.410
#accept H??? at 5 % level of significance.
#Conclusion: given sample may have come from normal distribution with parameter(µ=100 , s=10)

