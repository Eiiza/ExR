
#Programming

mean(c(1,2,3,4,5,6))
?mean #不知道時呼喚她
seq(from=1,to=9,by=2)#每隔兩個產生一數字
seq(1,9,2)
a<-1 #a指定為1
d<-3
str(d) #可以檢查各類資料型態

#Data Type and Symbol

install.packages("bit64") #安裝packages
library(bit64) #數值大於2^53 #載入已安裝packages
char1<-"abctest"
date1<-Sys.Date()

install.packages("lubridate")
library(lubridate)
ymd('2012/3/12') #字串轉日期

num1<-200
num2<-3
num1%%num2 #餘數
num1^num2

num3<-24.342
round(num3,digits = 2) #四捨五入到小數第2位
floor(num3) #無條件捨去
ceiling(num3) #無條件進位

#help

sessionInfo() #版本資訊

#條件式if else

score<-95
if(score<60){
  print("不及格")
}else if(score>=90){
  print("優秀")
}else{
  print("及格")
}

price<-199
if(price<100){
  print("do not consider")
}else if(price>=100&&price<1000){
  print("consider")
}else{
  print("cannot afford")
}

#ifelse()函數

#for迴圈
for (n in 1:5){
  print(n)
}

for(n in 1:4){
  if(n%%2==0){
    print(n)
  }else{
    print("odd")
  }
}

for(a in 1:20){
  if(a%%3==0){
    next
  }
  print(a)
}

for(a in 1:20){
  if(a%%13==0){
    break
  }
  print(a)
}

#向量

a<-1:10
a<-seq(1,10,1)
a
b<-seq(2,20,2)
b<-a*2
b
a[4]
b[c(5,6,7)]
b[seq(5,7,1)]
b[5:7]
a<-c(1:6)
b<-c(3:5)
a+b

#列表
listSample<-list(StdName=c("tommy","jimmy","mike"),
                 Year=2019,
                 Score=c(75,80,90,85),
                 School="CGU")
str(listSample)

listSample$Score
listSample[[3]]
listSample[3]
listSample[[4]]<-"CGUST"
listSample$School<-"ST"
listSample$semester<-"上學期"

#資料框
iris
str(iris)
colnames(iris)
iris$Time<-2

iris$Sepal.Length[5]<-100 #list才需要兩個括號
class(iris$Sepal.Length)
install.packages("data.table")

#names()

islands #內建資料
head(islands)
names(islands)
colnames(islands)
rownames(islands)
dimnames(islands)
class(islands)
n(islands)
length(islands)
USArrests
head(names(USArrests))

dimnames(USArrests)
length(USArrests)
dim(USArrests)
table(USArrests$Murder)
str(USArrests)
str(listSample)

airquality
rownames(airquality)
colnames(airquality)
table(airquality$Month) #不知道這個欄位有甚麼;這個資料出現幾次

list1<-list(a=11,b=22)
list1
names(list1)[1]<-"z"

iris$Petal.Width<-round(iris$Petal.Width,0)
iris

iris$Petal.Width[c(F,T)]
iris$Petal.Width[seq(2,length(iris$Petal.Width),2)]
iris$Petal.Width[seq(2,nrow(iris),2)]

iris$Price<-sample(1:199,nrow(iris),replace=F)
names(iris)[4]<-"PW"
View(iris)

X106_student <- read_csv("C:/Users/hsuen/Downloads/106_student.csv")
ncol(X106_student)

POLIO_Incidence <- read.csv("C:/Users/hsuen/Downloads/POLIO_Incidence.csv")
View(POLIO_Incidence) #表格的形式

POLIO_Incidence <- read.delim("C:/Users/hsuen/Downloads/POLIO_Incidence.csv")
View(POLIO_Incidence) #tab的形式

install.packages("readr")
#變數<-read.delim("檔案路徑與名稱",delim="\t")
#變數<-read.csv("檔案路徑與名稱") 預設是逗號分格
install.packages("readxl")
#變數<-read.excel("檔案路徑與名稱",col_names=T/F,sheet)
library(readr)

nrow(opendata10401)
ncol(opendata10401)
length(opendata10401)

#變數<-readRDS("檔案路徑與名稱")
source("example.R") # 打開R程式碼
readLines() #讀純文字，沒有分隔、結構

#載入套件讀資料
讀檔的注意事項
讀檔時R會自動:
判斷要讀幾row
判斷每個col的類別(讀前一千行看是哪種type)
把欄位包起來的符號

#20190321控制流程

examplef<-function(...){
  names(list(...))
}

score<-80
if(score<60){
  print("回家洗洗睡")
}else if(score>=60 & score<75){
  print("低空飛過")
}else if(score>=75 & score<90){
  print("普通")
}else{
  print("挑戰學爸")}

View(iris)
iris$Type<-ifelse(iris$Sepal.Length>5.5,"長","短")

for(a in seq(1,20,2)){
  if(a%%13==0){
    break
  }
  print(a)
}

View(USArrests)
USArrests$QOL<-ifelse(USArrests$Murder>10, "不宜人居",ifelse(USArrests$Assault>100,"要非常小心",ifelse(USArrests$UrbanPop>70,"很擠","可以住")))
table(USArrests$QOL=="可以住")

table(USArrests$QOL)

for(a in 0:6){
  for(b in 0:9){
    if(b==4){
      next
    }
    print(paste0(a,b))
    if(a==6 & b==5){
      break
    }
  }
}

for(i in 1:65){
  if(i%%10==4){
    next
  }
  print(i)
}




install.packages("tuneR")


