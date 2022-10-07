library(tidyverse)
library(stringr) 
library(readxl)

file <- "https://raw.githubusercontent.com/josh1den/DATA-607/Projects/Project%202/jhalak_das_untidy.csv"
df <- read.csv(file)
head(df)

# split up sex and age
# test column to single int
# pivot term columns to single column, term, column: grade

df_clean <- df |>
  separate(col=sex.and.age, into=c("sex","age"), sep="_", convert=TRUE) |>
  rename(test = test.number) |>
  mutate(test = as.integer(str_extract_all(test, "([0-3])"))) |>
  pivot_longer(cols=c("term.1","term.2", "term.3"), names_to="term",
               names_pattern="([0-3])", values_to = "grade") |>
  arrange(name)

df_clean

# average test score by area code

area_code <- df_clean |>
  group_by(name, phone) |>
  summarize(avg_test_score = mean(grade)) |> 
  arrange(desc(avg_test_score))

area_code

#############

# read file in from local machine
filepath <- "/Users/joshiden/Documents/Classes/CUNY SPS/Fall 2022/DATA 607/DATA-607/Project 2/Table1aArtistProfile.xlsx"
# read sheet names
sheets <- excel_sheets(filepath)
df2 <- read_excel(filepath, sheet=sheets[1], skip=1)

# get the desired column names
colnames <- colnames(df2)

# create the list of desired column names 
cols <- toupper(colnames(df2)) |>
  replace(1, "DEMOGRAPHIC")

# re-read the sheet
df2 <- read_excel(filepath, sheet=sheets[1], skip=3, col_names=cols)

# extract desired rows
df2_transformed <- df2[17:20,]
head(df2_transformed)
