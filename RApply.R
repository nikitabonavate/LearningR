#The lapply() function takes a list as input, applies a function to each element of the list, then returns a list of the
#| same length as the original one. Since a data frame is really just a list of vectors (you can see this with
 #                                                                                 | as.list(flags)), we can use lapply() to apply the class() function to each column of the flags dataset. Let's see it in
#'l' in 'lapply' stands for 'list'.

cls_list <- lapply(flags,class)

##lapply returns the list function in R

#sapply() allows you to automate this process by calling lapply() behind the scenes, but then attempting to simplify (hence
#| the 's' in 'sapply') the result for you. Use sapply() the same way you used lapply() to get the class of each column of the
#| flags dataset and store the result in cls_vect. If you need help, type ?sapply to bring up the documentation.

#sapply returns the vector function in R

# In general, if the result is a list where every element is of length one, then sapply() returns a vector. If the result is a
#| list where every element is a vector of the same length (> 1), sapply() returns a matrix. If sapply() can't figure things
#| out, then it just returns a list, no different from what lapply() would give you.

sapply(flags[,11:17],sum)

## apply function Its mainly used if you want to perform group operation on rows or columns thats margins of arrays

#this will work as rowsums()
apply(matrix,1,sum)

#this will work as colsums()
apply(matrix,2,sum)

#generally rowsums and colsums functions are faster than apply()

#you can specify any arguments of quantile function in subsequent parameters.
apply(matrix,1,quantile,probs= c(0.25,0.75))

### mapply() is multivariate function which applies a function in parallel over a set of arguments.

str(mapply)
list(rep(1,4),rep(2,3),rep(3,2),rep(4,1))

mapply(rep,1:4,4:1)

#### tapply()

#Whereas sapply() tries to 'guess' the correct format of the result, vapply() allows you to specify it explicitly. If the
#| result doesn't match the format you specify, vapply() will throw an error, causing the operation to stop. This can prevent
#| significant problems in your code that might be caused by getting unexpected return values from sapply().


vapply(flags,class,character(1))
# vapply() is faster than sapply()

#If you take the arithmetic mean of a bunch of 0s and 1s, you get the proportion of 1s. Use
#| tapply(flags$animate, flags$landmass, mean) to apply the mean function to the 'animate'
#| variable separately for each of the six landmass groups, thus giving us the proportion of
#| flags containing an animate image WITHIN each landmass group.

#tapply acts as group by function

tapply(flags$animate,flags$landmass,mean)

tapply(flags$population,flags$red,summary)


#In this lesson, you learned how to use vapply() as a safer alternative to sapply(), which is most helpful when writing
#| your own functions. You also learned how to use tapply() to split your data into groups based on the value of some
#| variable, then apply a function to each group. These functions will come in handy on your quest to become a better data
#| analyst.
