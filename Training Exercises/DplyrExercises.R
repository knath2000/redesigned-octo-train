library(dplyr)
head(mtcars)

#Ex 1: Return rows of cars that have an mpg value greater than 20 and 6 cylinders
result <- filter(mtcars, mpg > 20, cyl == 6)
print(result)

#Ex 2: Reorder the Data Frame by cyl first, then by descending wt.
result <- arrange(mtcars, cyl, desc(wt))
print(head(result))

#Ex 3: Select the columns mpg and hp
result <-select(mtcars, mpg, hp)
print(head(result))

#Ex 4: Select the distinct value of the gear column
result <- distinct(mtcars, gear)
print(result)

#Ex 5: Create a new column called "Performance" which is calculated by hp divided by wt.
result <- mutate(mtcars, Performance = hp / wt)
print(head(result))

#Ex 6: Find the mean mpg value using dplyr.
result <- summarise(mtcars, mean(mpg), na.rm = TRUE)
print(result)

#Ex 7: Use pipe operators to get the mean hp value for cars with 6 cylinders.
result <- mtcars %>% filter(cyl == 6) %>% summarise(mean(hp), na.rm = TRUE)
print(result)