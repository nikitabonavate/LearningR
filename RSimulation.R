swirl()
?sample
sample(1:6,4,replace = TRUE)
sample(1:6,4,replace = TRUE)
sample(1:20,10)
LETTERS
sample(LETTERS)
sample(LETTERS, 10, replace= FALSE)
sample(c(0,1),100,replace = TRUE, prob= c(0.3,0.7))
flips <- sample(c(0,1),100,replace = TRUE, prob= c(0.3,0.7))
head(flip)
head(flips)
hflips
flips
sum(flips)
?rbinom()
?rbinom
rbinom(1,size=100,prob=0.7)
flips2 <- rbinom(1,size=100,prob=0.7)
flips2 <- rbinom(100,size=1,prob=0.7)
flips2
sum(flips2)
rnorm?
rnorm()
rnorm?
?rnorm()
?rnorm
rnorm(4,mean = 0,sd=1)
rnorm(10)
rnorm(4,mean = 100,sd=25)
rnorm(10,mean = 100,sd=25)
?rpois
rpois(5,10)
my_pois <- replicate(100,rpois(5,10))
my_pois
cm <-colMeans(my_pois)
hist(cm)
