print(matrix(c(1:25), nrow = 5, byrow = TRUE))
print(matrix(c(1:25), nrow = 5, byrow = FALSE))

x<-c(1,2)
cat(x)
x<-append(x,3)
cat(x)
n<-1
for(i in 1:8){
  n<-n*2
}
cat(n)

x=c()
x[1]=1
cat(x)
for(i in 2:5){
  x[i]=i
}
cat(x)

x=c(1,2,3,4,5)
y=c(10,9,8,7,6)
z=append(x,y)
cat(z)

tri <- matrix(c(1,2,3,4,5))
rbind(tri,c(10,9,8,7,6))
rbind(tri[1:2, ],c(11,12,13,14,15),tri[3,])
rbind(tri[1:3],c(20,19,18,17,16),tri[4,])
rbind(tri,c(7,8,9,10,0))
rbind(tri,c(11,12,13,14,15))





##삼각형
rbind(matrix(c(1,0,0,0,0),ncol=5),matrix(c(2,3,0,0,0),ncol=5),matrix(c(4,5,6,0,0),ncol=5),
      matrix(c(7,8,9,10,0),ncol=5),matrix(c(11,12,13,14,15),ncol=5))
##ㄹ자
rbind(matrix(c(1,2,3,4,5),ncol=5),matrix(c(10,9,8,7,6),ncol=5),
matrix(c(11,12,13,14,15),ncol=5),matrix(c(20,19,18,17,16),ncol=5),matrix(c(21,22,23,24,25),ncol=5))

arr=function(search){
  switch(
    toString(search),
    '1'=res<-rbind(matrix(c(1,0,0,0,0),ncol=5),matrix(c(2,3,0,0,0),ncol=5),matrix(c(4,5,6,0,0),ncol=5),
                   matrix(c(7,8,9,10,0),ncol=5),matrix(c(11,12,13,14,15),ncol=5)),
    
    '2'=res<-rbind(matrix(c(1,2,3,4,5),ncol=5),matrix(c(10,9,8,7,6),ncol=5),
                   matrix(c(11,12,13,14,15),ncol=5),matrix(c(20,19,18,17,16),ncol=5),matrix(c(21,22,23,24,25),ncol=5))
    
    
    
    )
  return(res)
  
}
arr(2)
