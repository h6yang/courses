## test run on data.table package
library(data.table)
dim(input_data)
input.data <-data.table(input_data)

# first three rows
input.data[1:3]
input.data[c(1:3]
input.data[c(1:3),]
input.data[sort(c(1:3,SSI == 1))]
input.data[order(c(1:3,SSI == 1))]

# first three columns
input.data[,c(1:3)]
input.data[,UC]
input.data[,list(UC)]
input.data[,.(UC,SSI)]
input.data[,.(UC.school = UC,phenotype = SSI)]
# first three columns and first three rows
input.data[c(1:3),c(1:3)]
# select three school and only five columns
input.data[UC %in% c("UCD","UCSD","UCLA"),c(1:5)]
input.data[UC %in% c("UCD","UCSD","UCLA") & SSI == 1,c(1:5,SSI)]

# if not specify column number, it still run with all column 
input.data[UC %in% c("UCD","UCSD","UCLA")]
# create table
DT = data.table(ID = c("b","b","b","a","a","c"), a = 1:6, b = 7:12, c = 13:18)

# compute or do in j
input.data[,sum(SSI)]
input.data[SSI == 1, .N]

# table
xtabs(~ Ed + proc_Code + UC, data = data_range2014_2016)

input.data[,.N, by = .(Ed, procCode,UC)]
input.data[,.N, keyby = .(Ed, procCode,UC)]
