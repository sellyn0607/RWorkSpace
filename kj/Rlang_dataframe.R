grade <- function(name,kor,mat,eng){
  x<-sum(kor,mat,eng)
  y<-x/3
  res<-c(kor,mat,eng)
  return ( list(name=name,sum=sum(res),mean=mean(res),grade=switch(toString(mean(res)%/%10),
                                  '9'='A',
                                  '8'='B',
                                  '7'='C')))
}

res<-grade("레모씨",90,80,80)
park<- grade('박지성',70,70,70)
kim<- grade('김모씨',80,70,90)
sim<- grade('심모씨',60,80,80)
oh<- grade('오모씨',90,80,80)
park[2]
park
class(park$name)
class(park$sum)
class(park$mean)
class(park$grade)

# Create the data frame.
grade.data <- data.frame(
  
  name = c(res$name,park$name,kim$name,sim$name,oh$name),
  sum=c(res$sum,park$sum,kim$sum,sim$sum,oh$sum), 
  mean=c(res$mean,park$mean,kim$mean,sim$mean,oh$mean),
  grade=c(res$grade,park$grade,kim$grade,sim$grade,oh$grade),
  stringsAsFactors = FALSE
)
# Print the data frame.			
print(grade.data) 

result <- data.frame(grade.data$name,grade.data$grade)
print(result)

##파이차트
x <- c(res$sum,park$sum,kim$sum,sim$sum,oh$sum)
labels <- c("res", "park", "kim", "sim","??")
pie(x,labels)
##바차트
barplot(c(7,12,28,3,41))
barplot(grade.data$mean)
barplot(grade.data$sum, 
        names.arg = grade.data$name)
##히스토그램
hist(c(9,13,21,8,36,22,12,41,31,33,19),xlab = "Weight",col = "yellow",border = "blue")
hist(grade.data$sum,xlab = "Weight",col = "yellow",border = "blue")
##산포도
input <- mtcars[,c('wt','mpg')]
print(input)
plot(x = input$wt,y = input$mpg,
     xlab = "Weight",
     ylab = "Milage",
     xlim = c(2.5,5),
     ylim = c(15,30),		 
     main = "Weight vs Milage"
)
##주식차트
input <- mtcars[,c('mpg','cyl')]
print(head(input))
boxplot(mpg ~ cyl, data = mtcars, xlab = "Number of Cylinders",
        ylab = "Miles Per Gallon", main = "Mileage Data")
##라이차트
plot(c(7,12,28,3,41),type = "o")


labels <- c("A", "B", "C", "D", "E")
pie(class.data$sum,labels)

y <- grade.data$mean
labels <- grade.data$name
pie(y,labels)


x <- grade.data$mean
pct <- round(x / sum(x) * 100)
labels <- paste(grade.data$name, pct,"%",sep="")
pie(x,labels)