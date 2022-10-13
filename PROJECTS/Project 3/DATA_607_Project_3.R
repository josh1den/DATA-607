library(RMariaDB)
library(tidyverse)

# store password
pw <- 'guestpass'
hostname <- 'cunyspsds.c5iiratvieki.us-east-1.rds.amazonaws.com'

projectDb <- dbConnect(MariaDB(), user='guest', password=pw, 
                      dbname='Project3', host=hostname)

# preview the tables
dbListTables(projectDb)

# query1: import education_in_demand table
query1 <- "SELECT * FROM EDUCATION_IN_DEMAND;"
# store the results as a dataframe
results1 <- dbSendQuery(projectDb,query1)
education <- dbFetch(results1)
dbClearResult(results1)

head(education)

# query2: import skill_in_demand table
query2 <- "SELECT * FROM SKILL_IN_DEMAND;"
# store the results as a dataframe
results2 <- dbSendQuery(projectDb,query2)
skills <- dbFetch(results2)
dbClearResult(results2)

head(skills)

dbDisconnect(projectDb)

education
skills
head(education)

education |>
  group_by(EDUCATION = EDUCATION_KEYWORD) |>
  summarize(TOTAL=sum(COUNT)) |>
  arrange(desc(TOTAL))

education |>
  group_by(SOURCE = SOURCE_NAME) |>
  summarize(TOTAL=sum(COUNT)) |>
  arrange(desc(TOTAL))

skills |> 
  group_by(SKILL = SKILL_KEYWORD) |>
  summarize(TOTAL=sum(COUNT)) |>
  arrange(desc(TOTAL))

skills |>
  group_by(SOURCE = SOURCE_NAME) |>
  summarize(TOTAL=sum(COUNT)) |>
  arrange(desc(TOTAL))
