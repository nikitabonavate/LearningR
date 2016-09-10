###Manipulating data with dplyr 

#It's important that you have dplyr version 0.4.0 or later. To confirm this, type packageVersion("dplyr").

#he main advantage to using a tbl_df over a regular data frame is the printing: tbl objects only print a few rows and all the columns that fit on one screen, describing the rest of it as text.

#"The dplyr
#| philosophy is to have small functions that each do one thing well." Specifically, dplyr
#| supplies five 'verbs' that cover most fundamental data manipulation tasks: 
#select(),- it keeps only variables that you mention also it can drop specific columns using - sign
#filter(),-- select specific rows as per given conditions
#| arrange(), -- order the rows in specific manner
#mutate(), ---- create a new variable based on existing variables.
#summarize().

read.csv(path2csv,stringsAsFactors = FASLE)
mydf <- read.csv(path2csv,stringsAsFactors = FALSE)
dim()
dim(mydf)
head(mydf,5)
head(mydf)
library(dplyr)
package_version("dplyr")
packageVersion("dplyr")
cran <- tbl_df(mydf)
?tbl_df
rm(mydf)
rm("mydf")
cran
select(cran,ip_id,package,country)
5:20
select(cran,r_arch:country)
select(cran,country:r_arch)
cran
select(cran,-time)
-5:20
-(5:20)
select(cran,-(1:size))
select(cran,-(X:size))
filter(cran,package == "swirl")
filter(cran,package== "swirl", r_version=="3.1.1", country== "US")
filter(cran, r_version=="3.1.1", country == "US")
?Comparison
filter(cran, r_version <= "3.0.2", country == "IN")
filter(cran,  country == "IN" | country == "US")
filter(cran, r_os == "linux-gnu",size > 100500)
is.na(c(3,5,NA,10))
!is.na(c(3,5,NA,10))
filter(cran,! is.na(r_version))
cran2 <- select(cran, size: ip_id)
arrange(cran2,ip_id)
arrange(cran2,desc(ip_id))
arrange(cran2,desc(ip_id))
arrange(cran2,package,ip_id)
arrange(cran2,country,desc(r_version),ip_id)
cran3 <- select(cran,ip_id,package,size)
cran3
mutate(cran3, size_mb = size / 2^20)
mutate(cran3, size_gb = size_mb / 2^10)
mutate(cran3, size_mb = size / 2^20)
mutate(cran3, size_mb = size / 2^20)
mutate(cran3, size_mb = size / 2^20, size_gb =size_mb/ 2^10)
mutate(cran3, correct_size = size+1000)
summarise(cran,avg_bytes=mean(size))
summarize(cran,avg_bytes=mean(size))

library(xlsx)
gas <-read.xlsx("C:/Users/Nikita/Documents/R-DATA/DataCleaning/getdata-data-DATA.gov_NGAP.xlsx", header = TRUE, sheetIndex = 1, colIndex= 7:15, rowIndex = 18:23)

library(XML)
fileUrl <- "http://d396qusza40orc.cloudfront.net/getdata/data/restaurants.xml"
doc <- xmlTreeParse(fileUrl,useInternal =TRUE)
rootNode <- xmlRoot(doc)
xmlName(rootNode)
names(rootNode)
rootNode[[1]][[1]]
zipcode <- xpathApply(rootNode,"//zipcode",xmlValue)
length(zipcode[zipcode == 21231])


library(data.table)

DT <- fread(input="fsspid.csv", sep=",")


###################################################################
#Assignment No. 3 : Cleaning and grouping data using dplyr,plyr 

my_df <-read.csv("C:/Users/Nikita/Documents/R-DATA/DataCleaning/getdata-data-ss06hid.csv")

nnewmydf <- tbl_df(my_df)

my_df <-mutate(my_df,agri =factor((ACR==3 & AGS==6), levels= c(TRUE,FALSE)))

head(row.names(my_df[which(my_df$agri == TRUE),]), 3)

             
###reading JPEG files 

download.file(url = "https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg", 
              destfile = "q2.jpg", 
              method = "curl")

install.packages("jpeg")
library(jpeg)

q2 <- readJPEG("q2.jpg", native = TRUE)

quantile(q2, c(0.3, 0.8))

library(xlsx)
library()
 q3_1 <-read.csv("getdata-data-GDP.csv", header = TRUE, skip = 3)
 q3_2 <-read.csv("Country.csv", header = TRUE)
 
 q3_1 <- q3_1[2:191, c(1,2,4,5)]
 rownames(q3_1) <- NULL 
 q3_1 <- rename(q3_1, CountryCode = X)
 
 
 q3_3 <- merge(q3_1,q3_2, by.x="X",by.y = "CountryCode")

 sum(!is.na(unique(q3_merge$Ranking)))

 
 q3_merge$Ranking <- as.numeric(as.character(q3_merge$Ranking))
 
 q3_merge <- arrange(q3_merge, desc(Ranking))  

 q3_merge[13,3] 
 
 q3_merge$Income.Group <- as.factor(q3_merge$Income.Group)
 
 income_group <- group_by(q3_merge,Income.Group)
 
 summarise(income_group,avg = mean(Ranking, na.rm= TRUE))
 
 q3_merge$RankingGroup <- cut(q3_merge$Ranking, breaks = 5)
 
 table(q3_merge$RankingGroup, q3_merge$Income.Group)
 
 

###############GITHUB ######################

library(httr)
library(httpuv)
myapp <- oauth_app("github", 
                   key = "9ac78a3b36b3862ed435",
                   secret = "e1c3be242976383cc5f28dae177d41eef5445e3f")

github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)

gtoken <- config(token = github_token)
req <- GET("https://api.github.com/users/jtleek/repos", gtoken)
stop_for_status(req)

# convert unstructured json to structured json
install.packages("jsonlite")
library(jsonlite)
jsondata <- fromJSON(toJSON(content(req)))

# find out the created time of datasharing repo
subset(jsondata, name == "datasharing", select = c(created_at))

# Question 2
# download file from server
download.file(url = "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv", 
              destfile = "q2.csv", 
              method = "curl")



################# SQL Commands in R##################

install.packages("sqldf")
acs <- fread(input="getdata-data-ss06pid.csv", sep=",")
library(sqldf)
sqldf("select pwgtp1 from acs where AGEP < 50")


############### HTML #########################


q4 <- url("http://biostat.jhsph.edu/~jleek/contact.html")
htmlCode <- readLines(q4, n = 100)

nchar(htmlCode[10])
nchar(htmlCode[20])
nchar(htmlCode[30])
nchar(htmlCode[100])

############## Fixed width File format ##############

file_name <- "getdata-wksst8110.for.for"
q5 <- read.fwf(file = file_name, 
               skip = 4, 
               widths = c(12, 7,4, 9,4, 9,4, 9,4))

########################################################

pack_sum <- summarize(by_package,
                      count = n(),
                      unique = n_distinct(ip_id),
                      countries = n_distinct(country),
                      avg_bytes = mean(size))





