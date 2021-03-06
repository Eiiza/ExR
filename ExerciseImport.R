install.packages("XML")
library(XML)

#XML匯入
xpathSApply(waterQ,"//code_name",xmlValue)[1:10]

#XML實作
StationExit <-xmlParse("http://data.tycg.gov.tw/opendata/datalist/datasetMeta/download?id=b2653545-9425-46df-9a50-74ade59ab0cf&rid=f6362ce8-719b-4752-bec6-7fd995b623fd")
xpathSApply(StationExit,"//LocationDescription",xmlValue)
xpathSApply(StationExit,"//PositionLon",xmlValue)
xpathSApply(StationExit,"//PositionLat",xmlValue)


install.packages("jsonlite")
library(jsonlite)
install.packages('curl')
library(curl)
APIData<-fromJSON("http://data.tycg.gov.tw/api/v1/rest/datastore/a1b4714b-3b75-4ff8-a8f2-cc377e4eaa0f?format=json")

str(APIData)
View(table(APIData$result$records$sarea))

#JSON匯入
TpiData<-fromJSON("https://data.taipei/opendata/datalist/apiAccess?scope=resourceAquire&rid=201d8ae8-dffc-4d17-ae1f-e58d8a95b162")
str(TpiData$result$results)
nrow(TpiData$result$results)
ncol(TpiData$result$results)


install.packages("rvest")
library(rvest)


#DCard實作
DcardCGU <-read_html("https://www.dcard.tw/f/cgu")
DcardNode <-html_nodes(DcardCGU,".PostEntry_title_H5o4dj")
DcardText <-html_text()


#PTT匯入實作
library(rvest)
#擷取任意的網頁資料
PttHtml <-"https://www.ptt.cc/bbs/Tech_Job/index.html"
PttTitle <-read_html(PttHtml) %>% html_nodes(".title a") %>% html_text()
PttTitle[4]

PttUrl <- read_html(PttHtml) %>% html_nodes(".title a") %>%html_attr("href")
PttUrl[4]


PttContent <-read_html("https://www.ptt.cc/bbs/Tech_Job/index.html")
PttNode <-html_nodes(PttContent,".title a")
PttTitle <-html_text(PttNode)
PttTitle[4]


#in class exercise

TYbike<-fromJSON("http://data.tycg.gov.tw/api/v1/rest/datastore/a1b4714b-3b75-4ff8-a8f2-cc377e4eaa0f?format=json")
TYbikeF <-data.frame(TYbike$result$records$sna)
TYbikeF$BikePlace <- TYbike$result$records$sbi
dim(TYbike$result$records)

TPsk<-fromJSON("http://data.taipei/opendata/datalist/apiAccess?scope=resourceAquire&rid=201d8ae8-dffc-4d17-ae1f-e58d8a95b162")
View(TPsk$result$results)
nrow(TPsk$result$results)

BooksHtml <-"https://activity.books.com.tw/books66/?loc=activity_BK_001"
BooksTitle <-read_html(BooksHtml) %>% html_nodes("h4") %>% html_text()
BooksPrice <-read_html(BooksHtml) %>% html_nodes("b+ b") %>% html_text()
bp<-c(0,0,0,0,0,0,BooksPrice)
BooksWeb<-data.frame(title=BooksTitle,price=bp)
View(BooksWeb)













