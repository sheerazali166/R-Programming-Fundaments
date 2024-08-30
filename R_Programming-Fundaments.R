
82374 + 1199

boxplot(decrease ~ treatment, data = OrchardSprays, log = "y", col ="bisque")

# To see where we are, type
getwd()

# You can change your working directory by typing:
setwd("~/Desktop/R Programming Fundaments")

# To type getwd()
getwd()

25 + 26

24 + 25

24 - 54

q()

36799 + 231

# When having issues with complicated path names, it is work knowing that
# you can have autocompletion on paths using the tab

# Question: Try writing setwd("/U")


# Comments on a help page.

getwd()

# If you type 2:17 then return, you will see:

2:17

2:171

# Look at what you have in your R workspace currently with
ls()

print("Maria Putrah")

# Now name your vector, we say we assign the contents to vectint by typing
vectint <- (2: 17)

# You see no output. It has been stored. In order to see the data we have
# to type its name:
vectint

# Now we create a different vector
sqrs <- vectint^2

# If you type sqrs, what will you see?
sqrs

# Now let’s take a look at the workspace again.
ls()

# On the right in the Environment pane you may have noticed, something was added,
# sqrs now exists in our R environment. We can also check that by typing:
ls()

# Upper case and lower case

# R, Mac and unix make the difference between UPPER CASE and lower case,
# so if we write:
c(45, 32, 11)

VECA <- c(45, 32, 11)

# What happens when you type:
Veca # Error: object 'Veca' not found
# block

# How can you tell what a function is?
getwd()
c()
ls()

save(sqrs, file = "sqrs.RData")
sqrs

save.image("~/Desktop/IOS App Development/Course 1/Week 1/tristan_david.jpg")

save.image()

# Options and Preferences for RStudio
# If you list the files in the directory now:
list.files()

history()
savehistory()

q()

# Question Now start RStudio again and look at what data has been loaded by typing:
ls()

rm(list =ls())

# Check using ls() that your workspace is clear.
ls()

sqrs <- (2: 17)^2
sqrs

# The Help Pane
?letters

# Question Look at the help for other R objects.

# Some functions whose help you can explore: ?log ?sqrt ?c ?q
?log
?sqrt
?c
?q

# Some data classes: ?vector ?Date
?vector
?Date

today <- Sys.Date()
today

Sys.time()

# Installing and using packages
install.packages("ggplot2")
install.packages("dplyr")

library(ggplot2)

# Go down and click on the women data set, what does it consist of?
women

# Simple plotting

# If you click on the Plots tab in the lower right hand pane, you will see
# results from plots you ask for.
vectint <- 2:17
sqrs <- vectint^2
plot(vectint,sqrs)


# Suppose that now we would like to plot the squares of all the numbers between -17 and 17.
all17 <- -17: 17
sqr17 <- all17^2

plot(all17, sqr17)

# Q: Try different options in plot:
plot(all17, sqr17, type = "l")
plot(all17, sqr17, type = "b")
plot(all17, sqr17, type = "c")

# The Data: Vectors and Matrices

# Data structures: vectors

# We have already seen examples of vectors we created using the c() that combines values:
fib <- c(0,1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987)
class(fib)

is.vector(fib)

# How many elements do you think there are in c(fib,fib) ?
fibTwo <- c(fib, fib)

# We can also combine elements in the middle:
fib5fib <- c(fib, 5, fib)
fib5fib

# Let’s try some operations on fib:
fib
fib + 10

fib
fib * 10

# Try these commands out:
fib5fib + c(1, 10, 100, 1000, 10000)

fib + c(1, 100)

## Warning in fib + c(1, 100): longer object length is not a multiple of
## shorter object length


# Question: Try out different operations on vectors: - “/”,“+”,“^2”,“log”,“exp”,“cos”,...

fib
fib / 10
fib + 10
fib^2
log10(fib)
exp(fib)
cos(fib)

# Indexing vectors

# We saw that the number [1] appears as the first index of the vector on the left. We use the
# indexing to reach certain elements of the vector. R indices start at 1.
fib[1]
fib[4]
fib[3:5]

fib[c(1, 3, 5)]

# A negative index means take out that value from the vector:
fib[-2]

# Taking a random subset of a vector
vec4 <- 4:32

length(vec4)

sample(vec4, size = 10)

sample(vec4, size = 10)

# Many variables measured on individuals: matrices

A <- matrix(
  c(4,2,0,3,1,7,2,8,4,5), # the data elements
  nrow = 2, # number of rows
  ncol = 5 # number of columns
  ) 

A

# You can check what type of object A is by asking R
class(A)

mode(A)

is.matrix(A)

is.vector(A)

is.numeric(A)

# Q: A vector also has to have homogeneous entries, it’s not always obvious, try typing
c(letters[3], 4, 6, letters[7]) # what do you notice?

matlet <- matrix(letters, ncol = 26, nrow = 5)
matlet

# sab kuch ho bewi na ho
matletTwo <- matrix(letters, ncol = 26, nrow = 5, byrow = TRUE)
matletTwo

dim(matletTwo)

nrow(matlet)

ncol(matlet)

# Now is a good time to revist the help to understand how to read the default arguments.
?matrix

# Accessing Matrix elements

# First take a look at the current values:
A[, 4]

A[, 4] <- 1
A

# Transposition
t(A)

# The transpose of the matrix A has the number of rows equal to the number of columns of A,
# so what do you think dim(t(A)) will be?
dim(A)
dim(t(A))

# Data Matrices

# In real situations matrices represent data where the rows are the observations and the columns
# are the variables.

observeNames <- c("H1", "H3", "H4", "H5", "H7", "H8", "H9")

vecHap1 <- c(14,12,4,12,3,10,8,10,1,4,15,13,0,1,1,15,13,4,13,3,9,8,10,1,4,13,12,0,1,1,
             15,11,5,11,3,10,8,10,1,4,11,14,0,1,1,17,13,4,11,3,10,7,10,1,4,14,12,0,1,1,
             13,12,5,12,3,11,8,11,1,4,14,14,0,1,1,16,11,5,12,3,10,8,10,1,4,11,15,0,1,1,
             16,11,5,11,3,10,8,10,1,4,11,14,0,1,1)


matHap <- matrix(vecHap1, nrow = 7, byrow = TRUE)

rownames(matHap) <- observeNames

# Suppose I also want to name the columns and type:

# POSnames <- c(DYS19,DXYS156Y,DYS389m,DYS389n,DYS389p,DYS389q,DYS390m,
              # DYS390n,DYS390p,DYS390q,DYS392,DYS393,YAPbcbc,SRY1532bb,92R7bb)

# sab kuch ho bewi na ho 

# Question: Why does this create an error?

POSnames <- c("DYS19","DXYS156Y","DYS389m","DYS389n","DYS389p",
              "DYS389q","DYS390m","DYS390n","DYS390p","DYS390q",
              "DYS392","DYS393","YAPbcbc","SRY1532bb","92R7bb")

colnames(matHap) <- POSnames

matHap

plot(matHap)

# Saving matrices

# We can save our data to a simple text file for later use in various ways:

# As an R object:

save(matHap, file = "matHap.RData")

# As a plain text file:
write.table(matHap, file = "matHap.txt")

# take a look at the file
file.show("matHap.txt")

# load("hatMap.RData")

# Question: Why do we need quotes within the brackets here?

# Lists

A <- matrix(c(4,2,0,3,1,7,2,8,4,5), nrow = 2, ncol = 5)

# Nothing is free
Atypical <- list(name="Susan",byDate= 1125, Amatrix=A,size=5.5,urban=FALSE)


Atypical

2024 - 30

# Addressing elements of a list

# We access the elements of the list either by the number in the order of the elements:

Atypical[[1]]

class(A[3])

is.logical(Atypical[[5]])

Atypical[[5]]

# We can also access the list elements by their label using the $ sign:
Atypical$byDate

Atypical$A

23 - 85

# We can ask to see information about a list using either summary or str

summary(Atypical)

str(Atypical)

# We see that summary describes Atypical$A with a length attribute equal to 10.
Atypical$A

# Lists as output
result <- lm(weight~height, data=women)
names(result)

result[[1]]

# Factor variables
studentTG <- c(rep(1, 13), rep(2, 11))

studentTG <- c(rep(1, 13), rep(1, 11))
studentTG <- c(rep(2, 13), rep(2, 11))

table(studentTG)

# A better solution is to encode the variable gender as a factor.
gender = factor(c(rep("M", 13), rep("F", 11)))
gender

class(gender)

table(gender)

levels(gender)

str(gender)

length(gender)

2 * 2 * 2 * 2 * 2 * 2 * 2 * 2 * 2 * 2 
2 ** 2 ** 2 ** 2 ** 2 ** 2 ** 2 ** 2 ** 2 ** 2 

library(MASS)

?UScereal

UScereal[1:4, 1:5]

table(UScereal[, 1])

summary(UScereal[, 1])

table(UScereal[, 11])

# But we could also have used the variable name:
table(UScereal$vitamins)

class(UScereal)

str(UScereal)

summary(UScereal)

dim(UScereal)

# If we only want to look at the top few observations we can use the function head
head(UScereal)

# Some functions know how to behave, whatever the data.

# Here is an example of data from the datasets package
library(datasets)

women

class(women)

dim(women)

plot(women)

# We can change the data class.

# Sometimes we may need to go back to matrices, this can be quite easy as is the reverse:
matW = as.matrix(women)

class(matW)

womenTwo = as.data.frame(matW)

class(womenTwo)

# But sometimes it can give surprising results;

# Question: Try typing
as.matrix(UScereal)

# and explain what you see.

# developmet but for that responsible not only one or some everybody is

# Data Import into R

# Example 1: From a txt file
file.show("matHap.txt")

# We can use the function read.table
hapTable = read.table("matHap.txt")
hapTable

class(hapTable)

file.show("~/Desktop/R Programming Fundaments/[LIVE] Download Data for Exercises/Haplotype.csv")

# There are many special read functions, try typing ?read then the tab key to see a few of them.
?read

hap = read.csv("~/Desktop/R Programming Fundaments/[LIVE] Download Data for Exercises/Haplotype.csv")
head(hap)

hapTwo = read.csv("~/Desktop/R Programming Fundaments/[LIVE] Download Data for Exercises/Haplotype.csv", row.names = 1)
hapTwo

hapScan <- scan("~/Desktop/R Programming Fundaments/[LIVE] Download Data for Exercises/Haplotype.csv", nlines = 5, what = "")
hapScan

# Special package for reading excel files
install.packages("readxl")

library(readxl)
?read_excel

hapAll <- read_excel("~/Desktop/R Programming Fundaments/[LIVE] Download Data for Exercises/Haplotype.xlsx")

# readxl is a recent package and creates a different type of output, similar to a data.frame,
# called a tibble. We reverse this and use the classical data.frame.
hapAll.df <- as.data.frame(hapAll)
hapAll.df[1: 3, 1: 5]

# Problem case study.
mice<-read.csv("TypicalExcelMess.xlsx")
mce.df <- as.data.frame(mice)
mice.df[1:4, 1: 15]

# Logical statements

getwd()
load("~/Desktop/R Programming Fundaments/[LIVE] Download Data for Exercises/births.RData")

head(births)

summary(births)

# I can see that the data on day of the week is not a factor but a numeric encoding,
# in fact Friday is encoded as 5.

fridays = births[which(births[, 4] == 5),]

head(fridays)


fridays11 = fridays[which(fridays[, 3] == 11),]

head(fridays11)

dim(fridays11)

# Which of the Friday births occurred on the 13th?

fridays13 = fridays[which(fridays[, 3] == 13),]

head(fridays13)

dim(fridays13)

weekendBirths = births[which(births[, 4]%in%c(6, 7)), ]

head(weekendBirths)


weekendBirthsTwo = births[which(births[, 4] < 6),]
head(weekendBirthsTwo)

# Sign Meaning              Example

# == Equals                 day_of_week == 5
# != Does not equal         year != 0

weekendBirthsThree = births[which(births[, "day_of_week"] == 5),]

head(weekendBirthsThree)

weekendBirthsFour = births[which(births[, "year"] != 0),]

head(weekendBirthsFour)


# Sign Meaning                    Example

# > Greater than                  day_of_week > 5
# >= Greater than or equal        date_of_month >= 6
# < Less than                     day_of_week < 2
# <= Less than or equal to        day_of_week <= 1
# %in% Included in                births[,4]%in%c(6,7)  
# is.na() Is a missing value      is.na(births[,4])

weekendBirthsFive = births[which(births[, "day_of_week"] > 5),]

head(weekendBirthsFive)

weekendBirthsSix = births[which(births[, "date_of_month"] >= 6),]

head(weekendBirthsSix)

weekendBirthsSeven = births[which(births[, "day_of_week"] < 2),]

head(weekendBirthsSeven)

weekendBirthsEight = births[which(births[, "day_of_week"] < 1),]

head(weekendBirthsEight)

weekendBirthsNine = births[which(births[, 4] %in%c(6, 7)),]

head(weekendBirthsNine)

weekendBirthsTen = births[which(is.na(births[, 4]))]

head(weekendBirthsTen)


# Conditions and directions

# if (condition){
# Do something
# } else {
#  Do something different
# }

if (mean(weekendBirths[, 5]) > mean(weekendBirths[, 5])) {
  cat("More weekend babbies on average")

} else {
  cat("There are less weekend babbies on average")
}


# Loops and repeats

# One may want to repeat a computation for each different element of a vector, sometimes we
# need to do this with loops and sometimes we avoid this with what is called vectorization.

# A typical loop:

set.seed(431)
mat43 = replicate(4, sample(3, 3))
mat43l = rep(0, 4)

for (j in 1:4) {
  mat43l[j] = max(mat43[, j])
} 

mat43l

# A vectorized version:
apply(mat43, 2, max)

# Why is vectorization faster, since the number of operations seems always the same?
apropos("apply")

?apply

# Actual example with larger numbers:

mat43 = replicate(5000, sample(30000, 1000))

dim(mat43)

system.time(apply(mat43, 2, max))

mat43l = rep(0, 5000)

system.time(for(j in 1: 5000) {
  mat43l[j] = max(mat43[, j])
})

# Functions in R

# R is called a functional programming language because the actions we take are done using
# functions, even quitting at the end is done using q().

# Example
library(readxl)

read_excel

# Writing our own functions

# Useful if you are execute the same set of commands on different data or with different parameters.

vec = c(1,2,3,5,7,11,13,17,19,23)

(vec^ 2) + 1

vector = c(1,2,3,5,7,9,11,13,15,17,19,21,23)

(vector ^ 2) + 1
(vector ^ 2) + 2

(vec ^ 2) + 3

(vector ^ 2) + 3

(vec ^ 3) 

(vector ^ 3) 

# We write a function

expAnd <- function(vec, exponent, addTo) {
  vec ^ exponent + addTo
}

# We will put it and edit it in the top part of our RStudio IDE and save it as a file that
# we can also source later.

expAndTwo <- function(vec, exponent, addTo) {
  out = vec ^ exponent + addTo
  return(out)
}

expAndThree <- function(vec, exponent, addTo) {
  
  ## function that takes argument vec to the power
  ## exp, adds add and then outputs the result
  out = vec ^ exponent + addTo
  
  return(out)

}

### Question What happens if you apply your function with vec = 3, exponent=4, and addto=4 ?
expAndThree(vec = 3, exponent = 4, addTo = 4) # 85

# Question What happens if you type:
expAndThree() # Error in expAndThree() : argument "vec" is missing, with no default

# Put some default values in the function:

vec=seq(4, 25, 3)
vec

expAndFour <- function(vec=seq(4, 25, 3), exponent= 2, addTo = 3) {
  
  # Function that takes argument vec to the power
  # exp, adds add and then outputs the result
  out <- vec ^ exponent + addTo
  
  return(out)
  
}
  
expAndFour()  

# Question: Try calling the function expAndFour with expAndFour(vec=seq(4,25,3),exponent=2,addto="3")

expAndFour(vec = seq(4, 25, 3), exponent = 2, addTo = "3")

# Error in vec^exponent + addTo : non-numeric argument to binary operator

# yeh bhai nahi behen hai

expAndFive <- function(vec = seq(4, 25, 3), exponent = 2, addTo = 3) {
  
  # Function that takes argument vec to the power
  # exp, adds add and then outputs the result
  if (any(!is.numeric(c(vec, exponent, addTo))))
    stop("One of the arguments is not numeric.")
  
  out <- vec ^ exponent + addTo
  
  return(out)

}

# What happens if we now type:
expAndFive(addTo = "4")

# Functions are quite robust to some changes in the input:
expAndFive(vec = matrix(c(2,3,4,1,1,2,2,7), ncol = 2), 3, 0)

# Note: Passing an unspecified number of parameters to a function

# We can pass extra, unspecified arguments to a function by using the ... notation in the
# argument list.

add20 <- function(x, ...) {
  k <- x + 20
  return(k)
}

add20(20)

add20(c(20, 10))

add20(c(20, 10, 30))

add20(c(20, 10, 30, 40))

add20(c(20, 10, 30, 40, 50))

add20(c(20, 10, 30, 40, 50, 70))

add20(c(20, 10, 30, 40, 50, 70, 80))

add20(c(20, 10, 30, 40, 50, 70, 80, 90))

add20(c(20, 10, 30, 40, 50, 70, 80, 90, 100))


# Preprocessing your data with R

# Missing data.

?is.na

example <- c("A", 1, 6, 7, NA, "B")

example

mean(example)

# Warning message:
  # In mean.default(example) : argument is not numeric or logical: returning NA

is.na(example)

exampleTwo <- c(2, 1, 6, 7, NA, 4)
exampleTwo

is.na(exampleTwo)

mean(exampleTwo)

# people don't know how to negotiate
length(exampleTwo)

mean(exampleTwo, na.rm = TRUE)

median(exampleTwo, na.rm = TRUE)

# Replacing just the missing values
exampleThree <- exampleTwo

exampleThree

exampleThree[is.na(exampleThree)] <- 0

exampleThree

length(exampleThree)

# Missing values can behave strangely

NA == NA

NA + 8

NA ^ 0

1 / NA

# Other strange values...

1 / 0

1/0 - 1/0

# Data imputation

library(mice)

data("mammalsleep")

?mammalsleep

dim(mammalsleep)

head(mammalsleep)


nic(mammalsleep)

?nic

md.pattern(mammalsleep)

?md.pattern

# Missing at random (MCAR) versus systematic patterns (MNAR).

?mice

# Outlier detection

summary(mammalsleep)

which.max(mammalsleep$bw)

mammalsleep[which.max(mammalsleep$bw), ]

# Document them, find the reason they occurred, then remove them.

# Make the data easier to look at interactively

View(pressure)

View(iris)

# Grouping Data

load("~/Desktop/R Programming Fundaments/[LIVE] Download Data for Exercises/births.RData")

head(births)

birthn <- births

save(birthn, file = "birthn.RData")

# Different ways of filtering the data

# Choosing only the Saturday births.

### Subsetting

saturday <- birthn[birthn$day_of_week == 6,]

saturday[1:5,]

library(dplyr)

saturdayOne <- filter(birthn, day_of_week == 6)

saturdayOne[1:5,]

saturdayTwo <- birthn %>% filter(day_of_week == 6)

saturdayTwo[1:5,]

# Another way of looking at data is to make them into what is called a tibble: (tbl: tibble).

# tbl s have the advantage of always showing themselves in the console optimally.

# tbl_df gives similar information as str we have been using.

tbl_df(saturdayOne)

str(saturdayOne)

# Sequences of Transformations

# The %>% operator helps when we are doing several nested operations.

# Here is an example

groupBirths <- group_by(birthn, day_of_week)

groupMeans <- summarise(groupBirths, mean(births))

sortedBirths <- arrange(groupMeans, `mean(births)`)

sortedBirths

str(sortedBirths)

birthn %>%
  group_by(day_of_week) %>%
    summarise(avg = mean(births)) %>%
      arrange(avg)

# More succintly

birthn %>%
  group_by(day_of_week) %>%
    summarise(mean(births)) %>%
      arrange()


# x %>% f(y) is equivalent to just executing f(x,y)

# If we need to execute a sequence of functions: h(g(f(x,y),z),m) can be hard to parse and read.

# x %>% f(y) %>% g(z) %>% h(m) gives the same answer.

# To find out the average of Friday 13th births:

birthn %>%
  filter(day_of_week == 5) %>%
    filter(date_of_month == 13) %>%
      summarise(mean(births))


birthn %>%
  filter(day_of_week < 5) %>%
    filter(date_of_month != 13) %>%
      summarise(mean(births))


# Bad Drivers Data

# Five Thirty Eight Article

# You need an internet connection for this to work:

drivers <- read.csv(url("https://raw.githubusercontent.com/fivethirtyeight/data/master/bad-drivers/bad-drivers.csv"))

head(drivers)

tbl_df(drivers)

glimpse(drivers)

summary(drivers)

colnames(drivers) = c("State","NperB","PrcSpeed","PrcAlco","PrcNotDist","PrcNoPrev","Premium","Loss")

sort(drivers[, 2])

drivers[1: 10, 1:3]

drivers[order(drivers[, 2]), 1:3]

arrange(drivers, NperB)

arrange(drivers, desc(PrcSpeed))

# Make new variables

driversP = mutate(drivers, prem_c=Loss/Premium)

select(arrange(driversP, prem_c), State, prem_c)

# Plotting in R

setwd("~/RWork")

library(dplyr)

# Plotting in base R

x <- c(1.9, 4.0, 4.4, 7.2, 3.8, 8.3, 8.7, 5.4, 8.8)

plot(x)

# What does this plot?

# The index as the horizontal axis and the values on the vertical.

y <- c(8, 33, 42.6, 138.1, 28.1, 199.5, 222.3, 66.8, 229.7)

plot(x, y)

# Plot y (y-axis) versus x (x-axis) in a new window

# We can make a line instead of points:

x

order(x)

plot(x[order(x)], y[order(x)], type="l")

# What happens if we do not reorder the points?

plot(x, y, type = "l")

# Extra arguments

# We have extra arguments we can add to plots using:

plot(x[order(x)], y[order(x)], type = "l", col="red", lty=3)

# type: “l”=lines, “p”=points, “n” empty, “b”, etc.

# col: color – “blue”, “red”, etc

# lty: line type – 1=solid, 2=dashed, etc.

plot(x, y, type = "p", col = "purple", pch = 16)

plot(x, y, type = "p", col = "blue", pch = 5, main = "Points")

# pch: point type – 1=circle, 2=triangle, etc.

# main: title - character string

# xlab and ylab: axis labels – character string

plot(x, y, type = "p", col = "blue", pch = 1, main = "Points")

plot(x, y, type = "p", col = "blue", pch = 2, main = "Points")

# Adding text

plot(x,y,type="n")

text(x, y, 1:9)

# A complicated example for you to decode:

require(grDevices) # for colours

x <- y <- seq(-4*pi, 4*pi, len = 27)

r <- sqrt(outer(x^2, y^2, "+"))

image(z = z <- cos(r^2)*exp(-r/6), col = gray((0:32)/32))

image(z, axes = FALSE, main = "Math quilt",
      xlab = expression(cos(r^2) * e^{-r/6}))

contour(z, add = TRUE, drawlabels = FALSE) 

# Plot is object-oriented

# Meaning it adapts to the objects in the argument (between brackets)

apropos("plot")

# Other visual summaries

# boxplot

# hist: plot histogram of the numbers in a vector

# barplot: bar plot of vector or data frame

# birthn data

load("birthn.RData")

attach(birthn)

summary(births)

# Histogram

hist(birthn$births)

hist(birthn$births[day_of_week > 5], col = "green")

summary(births)

hist(birthn$births[day_of_week > 5], breaks = seq(5000, 16000, by = 1000),
     col = rgb(1, 0, 0, 0.5), xlim = c(5700, 16000))

# Boxplot

boxplot(birthn$births)

boxplot(birthn$births~day_of_week)

# Notice the ~ sign this is useful for plotting with a formula.

# Barplot

meansPerDay <- birthn %>%
  group_by(day_of_week) %>%
    summarise(ave = mean(births)) %>%
      arrange()

vectorMeans <- meansPerDay%>%.$ave 

barplot(vectorMeans, xlab = "Day of the week")

bp <- barplot(vectorMeans, xlab = "Day of the week")

bp

axis(at = bp, labels = c("M","T","W","Th","F","Sa","Su"), side = 1)

# Simple Statistics functions in R

# Getting started

# When wanting to produce the same results with a random number generator it is important
# to set a starting point. This is important if you want to reproduce the results of a simulation
# or algorithm, and is very important in debugging.

getwd()

setwd("~/Desktop/R Programming Fundaments")

library(dplyr)

# Taking a subsample

x <- c(1.9, 4.0, 4.4, 7.2, 3.8, 8.3, 8.7, 5.4, 8.8)

sample(x, 3)

sample(x, 3)

sample(x, 3)

# Question Why doesn’t this always give the same answer?

# Randomly generate 3 numbers from 1 to 9:

sample(9, 3)

sample(9, 3)

# Underneath the box: a RNG (random number generator)

runif(3)

runif(3)

tenK <- runif(10000)

hist(tenK)

# Now try:

set.seed(198911)

vecu = runif(100)

mean(vecu)


set.seed(198911)

vecu = runif(100)

mean(vecu)

u1 = runif(1000)

hist(u1)

hist(u1, freq = FALSE)

u1Two = runif(100000)

hist(u1Two, freq = FALSE)

vals = seq(0, 1, length = 51)

head(vals)

?punif

punif(vals)

punif(vals)

punif(vals)

?qunif

qunif(vals)

# For a uniform, the distribution function is

# P(X <= a) = a

# This is a special property of the Uniform and is not generally true.

# We call the value q25 such that

# P(X <= q25) = 0.25

# the 25th percentile or the first quartile.

# Question Do you know what we call the value such that

# P(X <= m) = 0.5

# An aside about efficiency: using the apply function

# In general, we want to avoid for loops in R since that is slower than working with functions
# such as apply().

# We will generate 5 samples from a uniform and sum them together. This is sum(runif(n=nuni)).

# The function replicate() allows us to do this many times with very little code. Here,
# we do this sum 50,000 times to get an idea of the distribution.

reps <- 50000

nuni <- 5

set.seed(0)

system.time(
  sum5 <- replicate(reps, sum(runif(nuni)))
) # replicate

head(sum5)

# Efficiency can be measured

# There are different ways to do these simulations.

# Look at the help(replicate) and you can see that there are various functions sapply(),
# lapply(), and vapply(). These are related to the functions apply() and tapply().

# Here is how you might do the same thing with sapply(). You can plot this using the same
# commands above.

set.seed(0)

reps <- 10000

system.time(x1 <- sapply(
  1: reps, function(i) { sum(runif(n = nuni))})) # a simple apply 

head(x1)

set.seed(0)

system.time(x1 <- lapply(1: reps, function(i) { sum(runif(n = nuni))})) # list apply

head(x1)

# When we apply a very simple function (e.g., a sum), the fastest way is often to just make a
# matrix of all the simulations and then apply that function to the matrix appropriately.

# The functions rowSums() and colSums() are particularly efficient at this.

set.seed(0)

system.time(sum5 <- apply(matrix(runif(n = nuni*reps), nrow = nuni), 2, sum)) # apply on a matrix

head(sum5)

set.seed(0)

system.time(sum5 <- colSums(matrix(runif(n = nuni * reps), nrow = nuni))) # using colSums

head(sum5)

# Question What is the range of Sum5 ?

summary(sum5)

# Question Do you think all the values in the range are equally likely?

# We can make a histogram of the simulation and compare it to other distributions.

# A ggplot histogram

# Look up ggplot cookbook

# Find how to call a histogram in ggplot.

install.packages(ggplot2)

library(ggplot2)

data(ggplot2)

load(ggplot2)

library(ggplot2)

require(ggplot2)

d5 <- data.frame(sum5)

ggplot(d5, aes(sum5)) +
  geom_histogram(binwidth=0.1)

ggplot(d5, aes(sum5)) + 
  geom_histogram(aes(y=..density..), binwidth = 0.1)

ggplot(d5, aes(sum5)) +
  geom_histogram(aes(y=..density..), binwidth = 0.1, color = "red")

ggplot(d5, aes(sum5)) +
  geom_histogram(aes(y=..density..), binwidth = 0.1, fill = "red")

# Question

# Let all come from a uniform(0,1) distribution. Let M = max(U1, U2, U3) Estimate (to 3
# significant digits) the probability P(M > 0.75). Do not use a for loop for any of
# this question.


# Computing a probability by Monte Carlo

# Estimate (to 3 significant digits) the probability P(max(U1, U2, U3) > 0.75)

B <- 1000000

m3 <- matrix(runif(3000000), ncol = 1000000, nrow = 3)

sum(apply(m3, 2, max) > 0.75) / 1000000

# Many random variable distributions

?distribution

# Generating normal random variables

norm10K <- rnorm(100000)

mean(norm10K)

?sd

sd(norm10K)

hist(norm10K)

ggplot(data.frame(norm10K), aes(x = norm10K)) +
  geom_histogram(aes(y=..density..), binwidth = 0.1)

?qnorm

qnorm(0.25)

qnorm(0)

qnorm(0.75)

# Quantiles versus quantiles

# A useful way of comparing distributions:

qqnorm(norm10K)

normTwo = rnorm(50000, 2.5, 0.66)

ggplot(data.frame(normTwo), aes(x = normTwo)) +
  geom_histogram(aes(y=..density..), binwidth = 0.1)


ggplot(data.frame(sum5), aes(x = sum5)) +
  geom_histogram(aes(y=..density..), binwidth = 0.1) +
    stat_function(fun = function(x) dnorm(x, mean = 2.5, 0.66), color = "red", size = 1)

# Making a quantile-quantile plot with ggplot.

df5 = data.frame(sum5)

ggplot(df5, aes(sample = sum5)) +
  geom_point(stat = "qq")

ggplot(df5, aes(sample = sum5)) +
  stat_qq(distribution = qnorm, dparams = list(mean(sum5), sd(sum5)))

# Question

# Let Z(n) be maximum of standard normal observations. Estimate what should be so that 
# P(Z(n) > 4) = 0.25.

n <- 100

mat10K <- matrix(rnorm(1000*n), ncol = n)

maxs = apply(mat10K, 1, max)

summary(maxs)

n <- 200

mat10K = matrix(rnorm(1000*n), ncol = n)

maxs = apply(mat10K, 1, max)

summary(maxs)

n <- 1000

mat10K = matrix(rnorm(1000*n), ncol = n)

maxs = apply(mat10K, 1, max)

summary(maxs)

n <- 8800

mat10K = matrix(rnorm(1000*n), ncol = n)

maxs = apply(mat10K, 1, max)

summary(maxs)

# Question

# X1, ... ,Xn Let be Poisson random variables with parameter lambda = 0.5 and where n = 21.
# Estimate the probability that the sample mean is greater than the sample median.

resp = matrix(rpois(100000*21, lambda = 0.25), nrow = 100000)

means = apply(resp, 2, mean)

median = apply(resp, 2, median) 

# Testing

# How do we test the difference between two samples?

?t.test

sleep

?sleep

attach(sleep)

sleepOne <- extra[group == 2] - extra[group == 1]

sleepOne

boxplot(sleepOne, horizontal = TRUE)

# Let’s do a t.test for this data.

t.test(sleepOne)

res = t.test(sleepOne)

res$p.value

t.test(extra~group, paired = TRUE)

t.test(extra~group,paired=FALSE)

# Question What is the difference?

# Testing multiple groups

load("birthn.RData")

birthn[1:4,]

library(dplyr)

sumsPerDay <- birthn %>%
  group_by(day_of_week) %>%
    summarise(sum = sum(births)) %>%
      arrange()

sumsPerDay

?chisq.test

chisq.test(sumsPerDay$sum)

# Regression

library(HistData)

?Galton

attach(Galton)

plot(parent, child)

hist(parent)

hist(child, breaks = 50)

hist(parent, breaks = 50)

plot(jitter(parent, 3), jitter(child, 3), pch = 19, col = "orange")

?cor

cor(parent, child)

?lm

lm(child~parent)

reslm <- lm(child ~ parent)

plot(jitter(parent, 3), jitter(child, 3), pch = 19, col = "orange")

lines(parent, reslm$fitted, col = "red", lwd = 3)

# Complex objects returned by many statistical functions

str(reslm)

plot(reslm)

























































































































































































































































































































































































































































































































































































































































































































































































































