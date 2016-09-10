# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# Give names to both 'poker_vector' and 'roulette_vector'
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(roulette_vector) <- days_vector
names(poker_vector) <- days_vector

# What days of the week did you make money on poker?
selection_vector <- poker_vector > 0

# Select from poker_vector these days
poker_winning_days <- poker_vector[selection_vector]

########################### MATRICES ##################################3

#Just like every cbind() has a rbind(), every colSums() has a rowSums().
# Matrix that contains the first trilogy box office
star_wars_matrix  

# Matrix that contains the second trilogy box office
star_wars_matrix2 

# Combine both Star Wars trilogies in one matrix
all_wars_matrix <- rbind(star_wars_matrix,star_wars_matrix2)

## we use square brackets to select elements

# Box office Star Wars: In Millions (!) 
# Construct matrix 
box_office_all <- c(461, 314.4, 290.5, 247.9, 309.3, 165.8)
movie_names <- c("A New Hope","The Empire Strikes Back","Return of the Jedi")
col_titles <- c("US","non-US")
star_wars_matrix <- matrix(box_office_all, nrow = 3, byrow = TRUE, dimnames = list(movie_names, col_titles))

# Print the star_wars_matrix to the console
star_wars_matrix 

# Average non-US revenue per movie
non_us_all  <- mean(star_wars_matrix[,2])  

# Average non-US revenue of first two movies
non_us_some <- mean(star_wars_matrix[1:2,2])  

#################################################################


# Box office Star Wars: In Millions (!) 
# Construct matrix 
box_office_all <- c(461, 314.4, 290.5, 247.9, 309.3, 165.8)
movie_names <- c("A New Hope","The Empire Strikes Back","Return of the Jedi")
col_titles <- c("US","non-US")
star_wars_matrix <- matrix(box_office_all, nrow = 3, byrow = TRUE, dimnames = list(movie_names, col_titles))

# Print the star_wars_matrix to the console
star_wars_matrix 

# Average non-US revenue per movie
non_us_all  <- mean(star_wars_matrix[,2])  

# Average non-US revenue of first two movies
non_us_some <- mean(star_wars_matrix[1:2,2])  

################################################################################

# Box office Star Wars: In Millions (!) 
# Construct matrix 
box_office_all <- c(461, 314.4, 290.5, 247.9, 309.3, 165.8)
movie_names <- c("A New Hope","The Empire Strikes Back","Return of the Jedi")
col_titles <- c("US","non-US")
star_wars_matrix <- matrix(box_office_all, nrow = 3, byrow = TRUE, dimnames = list(movie_names, col_titles))
ticket_prices_matrix <- matrix(c(5, 5, 6, 6, 7, 7), nrow=3, byrow = TRUE, dimnames = list(movie_names,col_titles))

# Estimated number of visitors
visitors <- star_wars_matrix / ticket_prices_matrix

# Average number of US visitors
average_us_visitors <- mean(visitors[ ,1])

# Average number of non-US visitors
average_non_us_visitors <- mean(visitors[ ,2])

#############################Factors#########################################################

animals_vector <- c("Elephant", "Giraffe", "Donkey", "Horse")
temperature_vector <- c("High", "Low", "High","Low", "Medium")

factor_animals_vector <- factor(animals_vector)
factor_animals_vector
factor_temperature_vector <- factor(temperature_vector, order = TRUE, levels = c("Low", "Medium", "High"))
factor_temperature_vector

#Watch out: the order with which you assign the levels is important. If you type levels(factor_survey_vector), you'll see that it outputs [1] "F" "M". If you don't specify the levels of the factor when creating the vector, R will automatically assign them alphabetically. To correctly map "F" to "Female" and "M" to "Male", the levels should be set to c("Female", "Male"), in that order.

survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)
levels(factor_survey_vector) <- c("Female", "Male")
factor_survey_vector

# Type your code here for 'survey_vector'
summary(survey_vector)

# Type your code here for 'factor_survey_vector'
summary(factor_survey_vector)

##########################################################################3
speed_vector <- c("Fast", "Slow", "Slow", "Fast", "Ultra-fast") 

# Add your code below
factor_speed_vector <-  factor(speed_vector,ordered= TRUE,levels= c("Slow","Fast","Ultra-fast"))

# Print
factor_speed_vector

# R prints automagically in the right order
summary(factor_speed_vector) 

small_planets_df  <- subset(planets_df, subset= diameter<1)

planet_df[order(planet_df)]

### sorting 

# 'planets_df' is pre-loaded in your workspace

# What is the correct ordering based on the planets_df$diameter variable?
positions <- order(planets_df$diameter, decreasing = TRUE)

# Create new "ordered" data frame:
largest_first_df <- planets_df[positions, ]

###############################################################################################

# Vector with numerics from 1 up to 10
my_vector <- 1:10 
# Matrix with numerics from 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)
# First 10 elements of the built-in data frame 'mtcars'
my_df <- mtcars[1:10,]

# Construct 'my_list' with these different elements:
my_list <- list(my_vector, my_matrix, my_df)
names(my_list) <- c("vec","mat","df")
# Print 'my_list' to the console
my_list
######################################################

# 'shining_list' is already pre-loaded in the workspace

shining_list[[2]][5]
# Define 'last_actor'
last_actor <- shining_list[[2]][5]

# Define 'second_review'
second_review <- shining_list[["reviews"]][2]


##############Intermediate R##########################################
# using relational operator for comparisons

# The social data has been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)
views <- matrix(c(linkedin, facebook), nrow = 2, byrow = TRUE)

# When does views equal 13?
views == 13

# When is views less than or equal to 14?
views <= 14

# How often does facebook equal or exceed linkedin times two?
sum(facebook >= linkedin * 2)


#Logical operators

# The linkedin and last variable are already defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
last <- tail(linkedin, 1)

# Is last under 5 or above 10?
last <5 | last>10

# Is last between 15 (exclusive) and 20 (inclusive)?
last >15 & last <= 20

# Is last between 0 and 5 or between 10 and 15?
(last > 0 | last < 5) | (last > 10 | last < 15)


#####################################################

# li_df is pre-loaded in your workspace

li_df
# Select the second column, named day2, from li_df: second
second <- li_df[,2]

# Build a logical vector, TRUE if value in second is extreme: extremes
extremes <- (second >25 | second< 5)

# Count the number of TRUEs in extremes
sum(extremes)

############################# Data.table #################################

### here first condition -> where clause 
## second is -> select clause 
## thrid is -> group by 
attach(mtcars)
str(mtcars)
mtcars[mpg>20, .(AvgHP =mean(hp)), "MinWT(kg)"= min(wt*453.6),  by = .(cyl, under5gears= gear< 5)]

#################
library(data.table)
install.packages("data.table")
data.table(x = c("a", "b", "c", "d", "e"), y= c(1, 2, 3, 4, 5))

# The data.table package is pre-loaded

# Create my_first_data_table
my_first_data_table <- data.table(x = c("a", "b", "c", "d", "e"), 
                                  y = c(1, 2, 3, 4, 5))  

# Create a data.table using recycling
DT <- data.table(a = c(1L, 2L), b = LETTERS[1:4])

# Print the third row to the console
DT[3]

# Print the second and third row to the console, but do not commas
DT[2:3]

# DT and the data.table package are pre-loaded

# Print the penultimate row of DT using .N
DT[.N - 1]

# Print the column names of DT, and number of rows and number of columns
colnames(DT)
dim(DT)

# Select row 2 twice and row 3, returning a data.table with three rows where row 2 is a duplicate of row 1.
DT[c(2, 2, 3)]

# DT and the data.table package are pre-loaded

# Subset rows 1 and 3, and columns B and C
DT[c(1, 3), .(B, C)]

# Assign to ans the correct value
ans <- DT[, .(B, val = A * C)]

# Fill in the blanks such that ans2 equals target
target <- data.table(B = c("a", "b", "c", "d", "e", "a", "b", "c", "d", "e"), 
                     val = as.integer(c(6:10, 1:5)))
ans2 <- DT[, .(B, val = c(C, A))]


######################### GROUP BY- DATA.TABLE #############################


# iris is already available in your workspace.
str(iris)
# Convert iris to a data.table: DT

DT <- as.data.table(iris)

# For each Species, print the mean Sepal.Length
DT[, mean(Sepal.Length), by = Species]

# Print mean Sepal.Length, grouping by first letter of Species
DT[, mean(Sepal.Length), by = substr(Species,1,1)]  

############################################################


# data.table version of iris: DT
DT <- as.data.table(iris)

# Group the specimens by Sepal area (to the nearest 10 cm2) and count how many occur in each group.
DT[, .N, by = 10 * round(Sepal.Length * Sepal.Width / 10)]

# Now name the output columns `Area` and `Count`
DT[, .(Count = .N), by = .(Area = 10 * round(Sepal.Length * Sepal.Width / 10))]  

#############################################################################


# Create the data.table DT
set.seed(1L)
DT <- data.table(A=rep(letters[2:1], each=4L), B=rep(1:4, each=2L), C=sample(8))

# Create the new data.table, DT2
DT2 <- DT[, .(C=cumsum(C)), by=.(A,B)]

# Select from DT2 the last two values from C while you group by A
DT2[, .(C=tail(C,2)), by=A] 

########################## IMPORTING DATA ###############
read.delim("hotdogs.txt", stringsAsFactors = FALSE)

#Functions - > which.min and which.max

# Previous call to import hotdogs.txt
hotdogs <- read.delim("hotdogs.txt", header = FALSE, col.names = c("type", "calories", "sodium"))

# Print a vector representing the classes of the columns
sapply(hotdogs, class)

# Edit the colClasses argument to import the data correctly: hotdogs2
hotdogs2 <- read.delim("hotdogs.txt", header = FALSE, 
                       col.names = c("type", "calories", "sodium"),
                       colClasses = c("factor", "NULL", "numeric"))

# Display the structure of hotdogs2
str(hotdogs2)

### Utils package is loaded by default but it is slow. 
# readr -> read_delim() read_csv()
#You can use fread() from data.table package. fread() is fast and omits unnecessary para to specify.

# Load the readr package
library(readr)
# Import potatoes.txt using read_delim(): potatoes
potatoes <- read_delim("potatoes.txt", delim ="\t" )

# Create a subset of potatoes: potatoes_sel
potatoes_sel <- potatoes[,c("texture","flavor","moistness")]

# readr is already loaded

# Column names
properties <- c("area", "temp", "size", "storage", "method", 
                "texture", "flavor", "moistness")

# Import potatoes.csv with read_csv(): potatoes
potatoes <- read_csv("potatoes.csv", col_names= properties,)

# Create a copy of potatoes: potatoes2
potatoes2 <- potatoes

# Convert the method column of potatoes2 to a factor
potatoes2$method <- factor(potatoes2$method)


##############################################

# readr is already loaded

# Column names
properties <- c("area", "temp", "size", "storage", "method", 
                "texture", "flavor", "moistness")

# Import 5 observations from potatoes.txt: potatoes_fragment
potatoes_fragment <- read_tsv("potatoes.txt", skip= 6, n_max= 5,col_names <- properties)

# Import all data, but force all columns to be character: potatoes_char
potatoes_char <-read_tsv("potatoes.txt", col_types= "cccccccc")

# Display the structure of potatoes_char
str(potatoes_char)

################################################

# readr is already loaded

# Import without col_types
hotdogs <- read_tsv("hotdogs.txt", col_names = c("type", "calories", "sodium"))

# Display the summary of hotdogs
summary(hotdogs)

# The collectors you will need to import the data
fac <- col_factor(levels = c("Beef", "Meat", "Poultry"))
int <- col_integer()

# Edit the col_types argument to import the data correctly: hotdogs_factor
hotdogs_factor <- read_tsv("hotdogs.txt", 
                           col_names = c("type", "calories", "sodium"),
                           # Change col_types to the correct vector of collectors
                           col_types = list(fac,int,int))

# Display the summary of hotdogs_factor
summary(hotdogs_factor)

########################################################

# load the data.table package

library(data.table)

# Import potatoes.txt with fread(): potatoes
potatoes <- fread("potatoes.txt")

# Print out arranged version of potatoes
order(potatoes$moistness, decreasing= FALSE)

potatoes[order(potatoes$moistness),]

# Import 20 rows of potatoes.txt with fread(): potatoes_part
potatoes_part <- fread("potatoes.txt", nrows= 20)

###########################################################
# fread is already loaded

# Import columns 6, 7 and 8 of potatoes.txt: potatoes
potatoes <- fread("potatoes.txt", select = 6:8)

# Keep only tasty potatoes (flavor > 3): 
tasty_potatoes <- potatoes[potatoes$flavor>3]

# Plot texture (x) and moistness (y) of tasty_potatoes
potatoes[,plot(x=potatoes$texture,y=potatoes$moistness)]











