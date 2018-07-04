help("solve")
?solve
?system
alternative
objects("hello world!!")
a=3
a<-"3"
a
b<-4
c<-a+b
a<-3

a<-c(1,2,3,4)
a
a<-c(1,"2",3,"4")
a
arr<-c(1,2,3)
x<-c(1,2,3,4,5)
my<-sum<-sum(x)
e<-c(1,2,3,4,5,6,7,8,9,10)
d<-c(1~10)
sum<-sum(d)
sum(e)
sum<-sum(e)
sum((e-mean(e))^2)/(length(e)-1)

?seq

sum(x)
sum(x)<-x=seq(length=100,from=1,by=1)
x
?sample



#가위 1 바위2 보3
#if else 

com<-sample(1:3,1,replace=TRUE) 
my<-1
if(my-com==0)print("비김") else if((my-com)==-1 || (my-com)==2) print("패배") else 
  print("승리")


#switch

my<-1
print( switch (
  toString(my-sample(1:3,1,replace=TRUE) ),
  '0' ="비김",
  '-1' ="패배",
  '2' ="패배",
  '1'  ="승리",
  '-2'  ="승리"
))
height<-sample(150:190,1,replace=TRUE)
weight<-sample(50:80,1,replace=TRUE)
bmi<-weight/(height*height/10000)
if(bmi<18.5)print("저체중") else if (18.5<=bmi && bmi<23)print("정상")else 
  if (23<=bmi && bmi <25)print("비만 전단계") else if ( 25<=bmi && bmi<30) print("1단계")else
   if ( 30<=bmi && bmi<35) print("2단계") else print("3단계")


print(c(1:10)) # 1~10
print(seq(from=1,to=10,by=2)) #1 3 5 7 9
print(seq(from=1,length=10,by=2)) #  1  3  5  7  9 11 13 15 17 19
print(seq(1,10,2))#1 3 5 7 9
print(rep(1:5)) # 1 2 3 4 5 
print(rep(1:5,each=2)) # 1 1 2 2 3 3 4 4 5 5 
print(rep(1:5,times=2)) # 12345 12345
print(rep(1:5,each=2,times=3)) 11 22 33 44 55 x3
print(rep(1:5,time=3,each=2))
print(rep(1:5,each=2,len=5)) #1 1 2 2 3
print(rep(1:5,each=2,times=3,len=5))# 1 1 2 2 3
print(rep(1:5,each=2,time=3,len=5)) 11 2 2 3



a<-12
b<-5
opcode<-'-'
 cat(a,opcode,b,'=',switch(
    opcode,
    '+'=toString(a+b),
    '-'=toString(a-b),
    '*'=toString(a*b),
    '/'=toString(a/b),
    '%'=toString(a%%b)
    ))

 res<-sum(seq(2,10,2))
 print(res)

w<-c(1:5)
for(i in w){
  if (i==5)cat(i,"=",sum(w)) else cat(i,"+")
}


res<-0
for(i in c(1:100)){
  if(i%%2==0) res<-res-i else res<-res+i
}
print(res)

for (i in 1:100){
  if (i==100)
    cat(i,"=",sum(seq(1,99,2))-sum(seq(2,100,2)))
    else if(i%%2==0)
    cat(i,"+")
  else
    cat(i,"-")
}


res<-""
switch(toString((mean(kor,mat,eng)/10)),
 '9'='A',
 '8'='B',
 '7'='C',
 '6'='D'
)

##간단히 만든것 stmt를 합치면 function 이 된다.
##4가지 반드시 있어야 function 이 된다..R syntax
grade <- function(name,kor,mat,eng){
  x<-sum(kor,mat,eng)
  y<-x/3

 
   return ( res<-c(name,x,y,switch(toString(y%/%10),
                                   '9'='A',
                                   '8'='B',
                                   '7'='C')))
}

res<-grade("김모씨",90,80,80)
cat(res)
name<-"김모씨"
kor<-70
mat<-90
eng<-80
x<-sum(kor,mat,eng)
y<-x/3
cat(name,x,y,switch(toString(y/10),
                    '9'='A',
                    '8'='B',
                    '7'='C'))


