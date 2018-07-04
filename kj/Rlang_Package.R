install.packages("ggplot2")
library(ggplot2)

read.csv("C:\\Users\\1027\\RWorkSpace\\kj\\2013.CSV")

##sample
x<-c("2","2","3","1")
x
qplot(x)
rm(x)
##data=mpg,x축에 변수 지정해 그래프 생성
qplot(data=mpg,x=hwy)
##x축 cty
qplot(data = mpg, x=cty)

# manufacturer
# model
# model name
# 
# displ
# engine displacement, in litres
# 
# year
# year of manufacture
# 
# cyl
# number of cylinders
# 
# trans
# type of transmission
# 
# drv
# f = front-wheel drive, r = rear wheel drive, 4 = 4wd
# 
# cty
# city miles per gallon
# 
# hwy
# highway miles per gallon
# 
# fl
# fuel type
# 
# class
# "type" of car


# mpg 데이터 파악하기
# 내가 모르는 빅데이터를 분석하는 방법
# mpg데이터를 데이터 프레임으로 만든다
mpg<-as.data.frame(ggplot2::mpg)
# 위에 다섯놈
head(mpg)
# 아래 다섯놈
tail(mpg)
## 행 / 열 보여줌 
dim(mpg)
# 몇가지의 변수가있는지 아려줌
str(mpg)
#데이터 정
summary(mpg)
#통합 연비 변수 생
mpg$total <- (mpg$cty + mpg$hwy)/2

mean(mpg$total)
summary(mpg$total)
hist(mpg$total)
#total 연비의 평균과 중앙값이 약 20이다
#total 연비 20~25 사이에 해당하는 자동차 모델이 가장 많다 
#대부분 25 이하이고, 25를 넘기는 자동차는 많지않다

#total 이 20이상이면 pass , 미만이면 fail 을 부여하는 test 라는 변수를 생성합니다.
mpg$test <- ifelse(mpg$total >=20,"pass","fail")
head(mpg,20)
#합격 판정을 받은 자동차 수 살펴보기
table(mpg$test)


qplot(data=mpg,x=mpg$test)
# 중첩조건문
# total 30 이상이면 A
# total 20 ~ 29 면 B
# total 20미만 C

mpg$grade<- ifelse(mpg$total>=30,"A",
                   ifelse(mpg$total>=20,"B","C"))
head(mpg,20)
table(mpg$grade)
qplot(mpg$grade)
mpg$grade<- ifelse(mpg$total>=30,"A",
                   ifelse(mpg$total>=20,"B",
                          ifelse(mpg>=10,"C","D")))

mpg<-rename(mpg,company=manufacture)


midwest<-as.data.frame(ggplot2::midwest)
head(midwest)
midwest$total <-midwest$poptotal
midwest$asian <-midwest$popasian 
midwest$ahffk<-(midwest$asian/midwest$total)*100
head(midwest)
midwest$mean<-mean(midwest$ahffk)

midwest$b<- ifelse(midwest$mean<midwest$ahffk,"large","smail")

qplot(midwest$b)

plot(table(midwest$b),type = "o")

save.csv(midwest, file = "update_midwest.csv")