

con <- url("http://im.cgu.edu.tw/bin/home.php")
htmlCode <-readLines(con)
close(con)
htmlCode[3:5]

#Twitter practice

install.packages("rtweet")
library(rtweet)
create_token(
  app = "teach0309",
  consumer_key = "Wbba6ysyPKGstGAqohmtyWZOE",
  consumer_secret = "GJweDzVvXGrbjz26bHTr3d6dFI7q9gFCH98f3Ct2yk3APPWigc",
  access_token = "216362944-VbXiYOjGtENwSI6eJ9AoDK5OVvoQWlj7yIeXraGt",
  access_secret = "jnfDCvuMdxdmxswUUPPi3gomxIWZq3BTdumykLJb7GW5A")

ts_timeline<-get_timelines("iingwen",n=50)
View(ts_timeline)
ts_timeline$retweet_count[1]
ts_timeline$favourites_count[2]


#YouTube practice

#install packagd for YouTube

install.packages("devtools")
devtools::install_github("soodoku/tuber")
library(tuber)

#get Google API

clientID<-"176440734384-77rp8s949ecmqj7r01p8u2nr50toccej.apps.googleusercontent.com"
clientKey<-"O_FKnfoS_uxukkrtJUGlWESY"
yt_oauth(clientID, clientKey,token = "")

#get video info. 

stat<-get_stats(video_id = "Oa49Nym7wJk")
data.frame(stat)

detail<-get_video_details(video_id = "Oa49Nym7wJk")
str(detail$items[[1]]$snippet)

#get video comments

comm<-get_all_comments(video_id = "Oa49Nym7wJk")
View(comm)
comm$likeCount<-as.numeric(comm$likeCount)

#get channel info.
str(Sunday)
Sunday <- list_channel_resources(filter = c(channel_id = "UCi03YKYu4YWv-cFu0D6CFug"))
playlist_id<-Sunday$items[[1]]$contentDetails$relatedPlaylists$uploads
vids <- get_playlist_items(filter= c(playlist_id=playlist_id)) 
vid_ids <- vids$contentDetails.videoId

install.packages("purrr")
library(purrr)
vid_ids<-as.character(vid_ids)
res<-map_df(vid_ids,get_stats)
res$likeCount<-as.numeric(res$likeCount)
res$viewCount<-as.numeric(res$viewCount)
res$commentCount<-as.numeric(res$commentCount)
res$dislikeCount<-as.numeric(res$dislikeCount)

SundayComm<-get_all_comments(video_id = "0Y_gH0moQ5A")

write.table(SundayComm,file = "SundayComm.txt",sep = " ",row.names = F,col.names = T)
saveRDS(SundayComm,"SundayComm.rds")

#standford exercise in class

statR<-get_stats(video_id = "wki0BqlztCo")
detailR<-get_video_details(video_id = "wki0BqlztCo")
str(detailR$items[[1]]$snippet$publishedAt)


standfordonline<-get_channel_stats(channel_id="UCBa5G_ESCn8Yd4vw5U-gIcg")
data.frame(standfordonline)


#uniqlo exercise in class 

UniHtml <-"http://www.uniqlo.com/tw/store/list/limited-offer/women/"
UniTitle <-read_html(UniHtml) %>% html_nodes(".name a") %>% html_text()
UniiHtml <- read_html(UniHtml) %>% html_nodes(".name a") %>% html_attr('href')
UniPrise <-read_html(UniHtml) %>% html_nodes(".price") %>% html_text()

ListUni<-list("Title"=c(UniTitle),
              "Html"=c(UniiHtml),
              "Prise"=c(UniPrise))
View(data.frame(ListUni))

#取代
#gsub(" ","",)

paste("Hello","World",sep="")












 