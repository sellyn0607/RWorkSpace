my<-1
print( switch (
  toString(my-sample(1:3,1,replace=TRUE) ),
  '0' ="비김",
  '-1' ="패배",
  '2' ="패배",
  '1'  ="승리",
  '-2'  ="승리"
))

rps<-function(my){
  return(switch (
    toString(my-sample(1:3,1,replace=TRUE) ),
    '0' ="비김",
    '-1' ="패배",
    '2' ="패배",
    '1'  ="승리",
    '-2'  ="승리"
  ))
}
cat(rps(1))

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


calr = function(a,opcode,b){
  return(cat(a,opcode,b,'=',switch(
    opcode,
    '+'=toString(a+b),
    '-'=toString(a-b),
    '*'=toString(a*b),
    '/'=toString(a/b),
    '%'=toString(a%%b)
  )))
}
cat(calr(10,"/",5))




height<-sample(150:190,1,replace=TRUE)
weight<-sample(50:80,1,replace=TRUE)
bmi<-weight/(height*height/10000)
if(bmi<18.5)print("저체중") else if (18.5<=bmi && bmi<23)print("정상")else 
  if (23<=bmi && bmi <25)print("비만 전단계") else if ( 25<=bmi && bmi<30) print("1단계")else
    if ( 30<=bmi && bmi<35) print("2단계") else print("3단계")

bmi <- function(height,weight){
  bmi<-weight/(height*height/10000)
  return(if(bmi<18.5)print("저체중") else if (18.5<=bmi && bmi<23)print("정상")else 
    if (23<=bmi && bmi <25)print("비만 전단계") else if ( 25<=bmi && bmi<30) print("1단계")else
      if ( 30<=bmi && bmi<35) print("2단계") else print("3단계"))
}

cat(bmi(180,70))