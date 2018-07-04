df_win_count <-dbGetQuery(conn,"SELECT 
    A.WINNER,
    COUNT(A.WINNER) Win_count
FROM(SELECT
        K.SCHE_DATE 경기날짜,
        CASE
            WHEN K.HOME_SCORE > K.AWAY_SCORE THEN HT.TEAM_NAME
            WHEN K.AWAY_SCORE > K.HOME_SCORE THEN AT.TEAM_NAME
            ELSE '무승부'
        END WINNER
     FROM SCHEDULE K
            JOIN TEAM HT
                ON K.HOMETEAM_ID LIKE HT.TEAM_ID
            JOIN TEAM AT
                ON K.AWAYTEAM_ID LIKE AT.TEAM_ID
     WHERE
        K.GUBUN LIKE 'Y'
        AND K.SCHE_DATE LIKE '2012%'
    )A
WHERE A.WINNER NOT LIKE '무승부'
GROUP BY A.WINNER
ORDER BY Win_count DESC
")
df_win_count

barplot(df_win_count[,2],names.arg=df_win_count[,1])






df_sta
df_sta<-dbGetQuery(conn, "SELECT
ROWNUM No,
                   A.STADIUM_NAME stadium,
                   A.seat_count seat
                   FROM
                   (select
                   stadium_name,
                   seat_count 
                   from 
                   stadium 
                   order by 
                   seat_count DESC)A")


pie(df_sta[,3], paste(substr(df_sta[,2],1,2),df_sta[,3]))



df_s<-dbGetQuery(conn,"SELECT ROWNUM RNUM, A.*
  FROM (  SELECT SC.SCHE_DATE,
          ABS (SC.HOME_SCORE - SC.AWAY_SCORE)     
          DSCORE,
          HT.TEAM_NAME  WTEAM,
          AT.TEAM_NAME  LTEAM
          FROM SCHEDULE SC
          JOIN TEAM HT 
          ON HT.TEAM_ID LIKE SC.HOMETEAM_ID
          JOIN TEAM AT 
          ON AT.TEAM_ID LIKE SC.AWAYTEAM_ID
          WHERE     SC.SCHE_DATE LIKE '2012%'
          AND SC.HOME_SCORE IS NOT NULL
          ORDER BY DSCORE DESC) A")



hist(df_s[,3],xlab = "Weight",col = "yellow",border = "blue",main="점수")




df_height <-dbGetQuery(conn, "SELECT
A.*
FROM
(select
    (SELECT TEAM_NAME FROM TEAM WHERE TEAM_ID LIKE T.TEAM_ID) team_name,
    ROUND(AVG(P.HEIGHT),1) avg_height
from
team t join player p on t.team_id like p.team_id    
group by
t.team_iD)A
WHERE 
(SELECT AVG(HEIGHT) FROM PLAYER WHERE TEAM_ID='K02')>A.avg_height
")


plot(df_height[,2],xlab="팀이름",ylab="평균키",type = "o")
axis(1,at=1:8,lab=df_height[,1])


df_height <-dbGetQuery(conn, "SELECT
A.*
FROM
(select
    (SELECT TEAM_NAME FROM TEAM WHERE TEAM_ID LIKE T.TEAM_ID) team_name,
    ROUND(AVG(P.HEIGHT),1) avg_height
from
team t join player p on t.team_id like p.team_id    
group by
t.team_iD)A
WHERE 
(SELECT AVG(HEIGHT) FROM PLAYER WHERE TEAM_ID='K02')>A.avg_height
")




df_c <-dbGetQuery(conn, "select
(select count(*) from schedule where sche_date like '201201%') ,
(select count(*) from schedule where sche_date like '201202%') , 
(select count(*) from schedule where sche_date like '201203%') ,
(select count(*) from schedule where sche_date like '201204%') ,
(select count(*) from schedule where sche_date like '201205%') ,
(select count(*) from schedule where sche_date like '201206%') ,
(select count(*) from schedule where sche_date like '201207%') ,
(select count(*) from schedule where sche_date like '201208%') ,
(select count(*) from schedule where sche_date like '201209%') ,
(select count(*) from schedule where sche_date like '201210%') ,
(select count(*) from schedule where sche_date like '201211%') ,
(select count(*) from schedule where sche_date like '201212%') 
from dual")




input <- df_C
print(input)
plot(x = df_c[,1],y = df_c[,1],
     xlim = c(1,12),
     ylim = c(0,40),		 
     main = "산포도"
)


df_seat <- dbGetQuery(conn,
                      "SELECT
                      ROWNUM NO,
                      A.*
                      FROM (
                      SELECT
                      S.STADIUM_NAME STADIUM,
                      S.SEAT_COUNT SEATS
                      FROM STADIUM S
                      ORDER BY
                      S.SEAT_COUNT DESC
                      ) A"        
                     )
df_seat
df_seat[,2]
df_seat[,1]
pie(df_seat[,1],df_seat[,2],col=rainbow(20),radius =2.5)
pie(df_seat$SEATS,df_seat$STADIUM,col=rainbow(20),radius =2.5
    ,density = 100,angle = 45)
