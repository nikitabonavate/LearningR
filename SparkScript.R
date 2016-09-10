Sys.setenv(SPARK_HOME= "C:/spark-1.6.2-bin-hadoop2.6")
.libPaths(c(file.path(Sys.getenv("SPARK_HOME"),"R","lib"),.libPaths()))
library(SparkR)
library(sparkR,lib.loc="C:/spark-1.6.2-bin-hadoop2.6/lib")
sc <- sparkR.init(master = "local")
sqlContext <- sparkRSQL.init(sc)

DF <-createDataFrame(sqlContext,faithful)
head(DF)
help(sparkR)
??sparkR
glm()