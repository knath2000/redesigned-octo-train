#Ex 1: Write a script that will print "Even Number" if the variable x is an even number, otherwise print "Not Even":
x<-3
if ((x %% 2) == 0){
  print('Even Number')
}else{
  print('Not Even')
}

#Ex 2: Write a script that will print 'Is a Matrix' if the variable x is a matrix, otherwise print "Not a Matrix". Hint: You may want to check out help(is.matrix)
print(is.matrix(x))

#Ex 3: Create a script that given a numeric vector x with a length 3, will print out the elements in order from high to low. You must use if,else if, and else statements for your logic. (This code will be relatively long)
x<-c(3,7,1)
max.value<-max(x)
min.value<-min(x)
for (index in 1:3){
  if (x[index] > min.value & x[index] < max.value){
    middle.value<-x[index]
  }
}
print(max.value)
print(middle.value)
print(min.value)

#Ex 4: Write a script that uses if,else if, and else statements to print the max element in a numeric vector with 3 elements.
max<- -1
for (index in 1:3){
  if (x[index] > max){
    max<-x[index]
  }
}
print(max)
