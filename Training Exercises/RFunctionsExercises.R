#Ex 1: Create a function that will return the product of two integers
prod <- function(num1, num2){
  return (num1 * num2)
}
prod(3,4)

#Ex 2: Create a function that accepts two arguments, and integer and a vector of integers. It return TRUE if the integer
#is present in the vector, otherwise it returns FALSE. Make sure you pay careful attentino to your placement of the 
#return(FALSE) line in your function!
num_check <- function(num1, vec1){
  return (num1 %in% vec1)
}
num_check(2,c(1,2,3))

#Ex 3: Create a function that accepts two arguments, an integer and avector of integers. It return the count of the
#number of occurences of the integer in the input vector.
num_count <- function(num1, vec1){
  return (length(vec1[vec1 == num1]))
}
num_count(2, c(1, 1, 2, 2, 3, 3))
num_count(1, c(1, 1, 2, 2, 3, 1, 4, 5, 5, 2, 2, 1, 3))

#Ex 4: We want to ship bars of aluminum. We will create a function that accepts an integer representing the requested
#kilograms of aluminum for the package to be shipped. To fulfill these order, we have small bars (1 kilograms each) and
#big bars (5 kilograms each). Return the least number of bars needed.
bar_count <- function(weight){
  heavy <- as.integer(weight / 5)
  light <- weight - (heavy * 5)
  return (heavy + light)
  
}
bar_count(6)
bar_count(17)

#Ex 5: Create a function that accepts 3 integer values and returns their sum. However, if an integer value is evenly
#divisible by 3, then it does not count towards the sum. Return zero if all numbers are evenly divisible by 3. Hint: You
#may want to use the append() function.
summer <- function(num1, num2, num3) {
  list <- c(num1, num2, num3)
  sum <- 0
  for (num in list){
    if (num %% 3 != 0){
      sum <- sum + num
    }
  }
  return (sum)
}
summer(7, 2, 3)
summer(3, 6, 9)
summer(9, 11, 12)

#Ex 6: Create a function that will return TRUE if an input integer is prime. Otherwise, return FALSE. You may want to
#look into the any() function. In this case I used the "matlab" package which has a built in prime number checker
prime_check <- function(num){
  return (as.logical(isprime(num)))
}
prime_check(2)
