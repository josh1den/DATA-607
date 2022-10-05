#general skills
gs <- "https://raw.githubusercontent.com/himalayahall/DATA607-PROJECT3/main/general_skills.csv"
# software skills
ss <- "https://raw.githubusercontent.com/himalayahall/DATA607-PROJECT3/main/software_skills.csv"

#read into R
general_skills <- read.csv(gs)
software_skills <- read.csv(ss)

#union the dataframes
skills_in_demand <- rbind(general_skills, software_skills)

#write to csv
path <- "/Users/joshiden/Documents/Classes/CUNY SPS/Fall 2022/DATA 607/Projects/skills_in_demand.csv"
write.csv(skills_in_demand, path)