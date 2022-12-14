#Ex 1: Recreate the following dataframe by creating vectors and using the data.frame function:
names<-c('Sam','Frank','Amy')
age<-c(22,25,26)
weight<-c(150,165,120)
sex<-c('M','M','F')
df<-data.frame(row.names = names,age,weight,sex)
print(df)

#Ex 2: Check if mtcars is a dataframe using is.data.frame()
print(is.data.frame(mtcars))

#Ex 3: Use as.data.frame() to convert a matrix into a dataframe:
dftemp<-as.data.frame(names)
print(dftemp)

#Ex 4: Set the built-in data frame mtcars as a variable df. We'll use this df variable for the rest of the exercises.
df<-mtcars

#Ex 5: Display the first 6 rows of df
head(df,6)

#Ex 6: What is the average mpg value for all the cars?
print(mean(df$mpg))

#Ex 7: Select the rows where all cars have 6 cylinders (cyl column)
print(df[mtcars$cyl == 6,])

#Ex 8: Select the columns am,gear, and carb.
print(df[,c('am','gear','carb')])

#Ex 9: Create a new column called performance, which is calculated by hp/wt.
df$performance<-(df$hp / df$wt)
print(head(df))

#Ex 10: Your performance column will have several decimal place precision. Figure out how to use round() (check help(round)) to reduce this accuracy to only 2 decimal places.
df$performance<-round(df$performance, 2)
print(head(df))

#Ex 11: What is the average mpg for cars that have more than 100 hp AND a wt value of more than 2.5.
dftemp<-subset(df,hp>100 & wt > 2.5)
print(dftemp)

#Ex 11: What is the mpg of the Hornet Sportabout?
print(df['Hornet Sportabout',c('mpg')])