#Clean 2018 data
data.2018 <- read_excel("2018.xlsx")

voters.2018 <- data.2018

voters.2018 <- voters.2018[-c(1,2,3),]
colnames(voters.2018)[1:3] <- c(voters.2018[1,1:3])  
colnames(voters.2018)[4:13] <- c(voters.2018[2,4:13])
voters.2018 <- voters.2018[-c(1,2,55:61),]

percentages.2018 <- voters.2018[c(2:52),c(1,12)]
colnames(percentages.2018)[2] <- c("2018") 
percentages.2018$`2018` <- as.numeric(percentages.2018$`2018`)


#Clean 2016 data
data.2016 <- read_excel("2016.xlsx")

voters.2016 <- data.2016

voters.2016 <- voters.2016[-c(1,2),]
colnames(voters.2016)[1:3] <- c(voters.2016[1,1:3])  
colnames(voters.2016)[4:13] <- c(voters.2016[2,4:13])
voters.2016 <- voters.2016[-c(1,2,55:57),] 

percentages.2016 <- voters.2016[c(2:52),c(1,12)]
colnames(percentages.2016)[2] <- c("2016") 
percentages.2016$`2016` <- as.numeric(percentages.2016$`2016`)

#Clean 2014 data
data.2014 <- read_excel("2014.xls")

voters.2014 <- data.2014

voters.2014 <- voters.2014[-c(1,2),]
colnames(voters.2014)[1:3] <- c(voters.2014[1,1:3])
colnames(voters.2014)[4:13] <- c(voters.2014[2,4:13])
voters.2014 <- voters.2014[-c(1,2,55:57),]

percentages.2014 <- voters.2014[c(2:52),c(1,12)]
colnames(percentages.2014)[2] <- c("2014") 
percentages.2014$`2014` <- as.numeric(percentages.2014$`2014`)

#Clean 2012 data
data.2012 <- read_excel("2012.xls")

voters.2012 <- data.2012

voters.2012 <- voters.2012[-c(1,2),]
colnames(voters.2012)[1:3] <- c(voters.2012[1,1:3])
colnames(voters.2012)[4:13] <- c(voters.2012[2,4:13])
voters.2012 <- voters.2012[-c(1,2,55:57),]

percentages.2012 <- voters.2012[c(2:52),c(1,12)]
colnames(percentages.2012)[2] <- c("2012") 
percentages.2012$`2012` <- as.numeric(percentages.2012$`2012`)

#Clean 2010 data
data.2010 <- read_excel("2010.xls")

voters.2010 <- data.2010

voters.2010 <- voters.2010[-c(1),]
colnames(voters.2010)[1:3] <- c(voters.2010[1,1:3])
colnames(voters.2010)[4:13] <- c(voters.2010[2,4:13])
voters.2010 <- voters.2010[-c(1,2,55:58),]

percentages.2010 <- voters.2010[c(2:52),c(1,12)]
colnames(percentages.2010)[2] <- c("2010") 
percentages.2010$`2010` <- as.numeric(percentages.2010$`2010`)

#Clean 2008 data
data.2008 <- read_excel("2008.xls")

voters.2008 <- data.2008

voters.2008 <- voters.2008[-c(1:3),]
colnames(voters.2008)[1] <- c("STATE")
colnames(voters.2008)[2:3] <- c(voters.2008[1,2:3])
colnames(voters.2008)[4:13] <- c(voters.2008[2,4:13])
voters.2008 <- voters.2008[-c(1,2,55:59),]

percentages.2008 <- voters.2008[c(2:52),c(1,12)]
colnames(percentages.2008)[2] <- c("2008") 
percentages.2008$`2008` <- as.numeric(percentages.2008$`2008`)

#Clean 2006 data
data.2006 <- read_excel("2006.xls")

voters.2006 <- data.2006

voters.2006 <- voters.2006[-c(1:3),]
colnames(voters.2006)[1] <- c("STATE")
colnames(voters.2006)[2:3] <- c(voters.2006[1,2:3])
colnames(voters.2006)[4:13] <- c(voters.2006[2,4:13])
voters.2006 <- voters.2006[-c(1,2,55:60),]

percentages.2006 <- voters.2006[c(2:52),c(1,12)]
colnames(percentages.2006)[2] <- c("2006") 
percentages.2006$`2006` <- as.numeric(percentages.2006$`2006`)

#Clean 2004 data
data.2004 <- read_excel("2004.xls")

voters.2004 <- data.2004

voters.2004 <- voters.2004[-c(1:3),]
colnames(voters.2004)[1:2] <- c(voters.2004[1,1:2])
colnames(voters.2004)[3:10] <- c(voters.2004[2,3:10])
voters.2004 <- voters.2004[-c(1,2,55:60),]

percentages.2004 <- voters.2004[c(2:52),c(1,9)]
colnames(percentages.2004)[2] <- c("2004") 
percentages.2004$`2004` <- as.numeric(percentages.2004$`2004`)

#Clean 2002 data
data.2002 <- read_excel("2002.xls")

voters.2002 <- data.2002

voters.2002 <- voters.2002[-c(1:3),]
colnames(voters.2002)[1:3] <- c(voters.2002[1,1:3])
colnames(voters.2002)[4:11] <- c(voters.2002[2,4:11])
voters.2002 <- voters.2002[-c(1,2,55:57),]

percentages.2002 <- voters.2002[c(2:52),c(1,10)]
colnames(percentages.2002)[2] <- c("2002") 
percentages.2002$`2002` <- as.numeric(percentages.2002$`2002`)

#Clean 2000 data
data.2000 <- read_excel("2000.xls")

voters.2000 <- data.2000

voters.2000 <- voters.2000[-c(1:3),]
colnames(voters.2000)[1:3] <- c(voters.2000[1,1:3])
colnames(voters.2000)[4:11] <- c(voters.2000[2,4:11])
voters.2000 <- voters.2000[-c(1,2,55:58),]

percentages.2000 <- voters.2000[c(2:52),c(1,10)]
colnames(percentages.2000)[2] <- c("2000") 
percentages.2000$`2000` <- as.numeric(percentages.2000$`2000`)

#Aggregate all of the years' voter turnout data
joined.data <- left_join(percentages.2000,
                                percentages.2002,
                                by = "STATE")
joined.data <- left_join(joined.data,
                         percentages.2004,
                         by = "STATE")
joined.data <- left_join(joined.data,
                         percentages.2006,
                         by = "STATE")
joined.data <- left_join(joined.data,
                         percentages.2008,
                         by = "STATE")
joined.data <- left_join(joined.data,
                         percentages.2010,
                         by = "STATE")
joined.data <- left_join(joined.data,
                         percentages.2012,
                         by = "STATE")
joined.data <- left_join(joined.data,
                         percentages.2014,
                         by = "STATE")
joined.data <- left_join(joined.data,
                         percentages.2016,
                         by = "STATE")
joined.data <- left_join(joined.data,
                         percentages.2018,
                         by = "STATE")

#Gather into long format
joined.data <- gather(joined.data,
                      key = "Year",
                      value = "Percentage",
                      -STATE)

write_csv(joined.data,
          "turnout.csv")
