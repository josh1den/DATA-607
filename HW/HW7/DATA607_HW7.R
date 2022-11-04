library(tidyverse)

### READ HTML ###
library(htmltab)

file <- "https://raw.githubusercontent.com/josh1den/DATA-607/main/HW/HW7/DATA607_HW7.html"
html <- htmltab(file, which = 1) |>
  as.data.frame()
print(html)

### READ XML ###
library(XML)
library(xml2)
file <- "https://raw.githubusercontent.com/josh1den/DATA-607/main/HW/HW7/DATA607_HW7.xml"

xml <- xml2::read_xml(file) |>
  XML::xmlParse() |>
  XML::xmlToDataFrame()

print(xml)

### READ JSON ###
library(rjson)
json_file <- "https://raw.githubusercontent.com/josh1den/DATA-607/main/HW/HW7/DATA607_HW7.json"
json <- fromJSON(file=json_file) |>
        as.data.frame()
print(json)

json_v2_file <- "https://raw.githubusercontent.com/josh1den/DATA-607/main/HW/HW7/DATA607_HW7_V2.json"
json_v2 <- fromJSON(file=json_v2_file) |>
           as.data.frame()
print(json_v2)

library(arsenal)
comparedf(xml, json_v2)

xml == json_v2

dplyr::all_equal(xml, json_v2)
dplyr::all_equal(html, xml, json_v2)
