boring_function(4)

boring_function

my_mean <- function(my_vector) {
  # Write your code here!
  sum(my_vector)/length(my_vector)
  # Remember: the last expression evaluated will be returned! 
}

remainder <- function(num, divisor =2) 
  {
  num%%divisor
  }

remainder(11,3)

evaluate <- function(func, dat){
  # Write your code here!
  func(dat)
  # Remember: the last expression evaluated will be returned! 
}

evaluate(sd,c(1.4, 3.6, 7.9, 8.8))

evaluate(function(x) {head(x,1)},c(8,4,0))

###########################################

#As you can see the first argument of paste() is `...` which is referred to as an
# ellipsis or simply dot-dot-dot. The ellipsis allows an indefinite number of arguments to
# be passed into a function. In the case of paste() any number of strings can be passed as
# arguments and paste() will return all of the strings combined into one string.
# paste()

#Notice that the ellipses is the first argument, and all other arguments after
# the ellipses have default values. This is a strict rule in R programming: all
# arguments after an ellipses must have default values. Take a look at the
# simon_says function below:
#
telegram <- function(...){
  
  paste("START",...,"STOP")
}

telegram("welocme","Bajorao")

## how to unpack variables

mad_libs <- function(...){
  # Do your argument unpacking here!
  args<- list(...)
  
  place <- args[1]
  adjective <- args[2]
  noun <- args[3]
  
  
  # Don't modify any code below this comment.
  # Notice the variables you'll need to create in order for the code below to
  # be functional!
  paste("News from", place, "today where", adjective, "students took to the streets in protest of the new", noun, "being installed on campus.")
}

mad_libs("Mumbai","angry","alarm")

### binary operator 

"%p%" <- function(left, right){ # Remember to add arguments!
  paste(left, right)
}

'Hello' %p% 'stud'

##############################################################################################


  





