
##MATRICES AND DATA FRAMES

my_vector <- 1:20

dim(my_vector)
#NULL

dim(my_vector) <- c(4, 5)
dim(my_vector)
#[1] 4 5

attributes(my_vector)
#$dim
#[1] 4 5

my_vector

#      [,1] [,2] [,3] [,4] [,5]
#[1,]    1    5    9   13   17
#[2,]    2    6   10   14   18
#[3,]    3    7   11   15   19
#[4,]    4    8   12   16   20

my_matrix <- my_vector

##Adding names to a Matrix

patients <- c("Bill", "Gina", "Kelly", "Sean")

cbind(patients, my_matrix) #Use the cbind() function to 'combine columns'

#[1,] "Bill"   "1" "5" "9"  "13" "17"
#[2,] "Gina"   "2" "6" "10" "14" "18"
#[3,] "Kelly"  "3" "7" "11" "15" "19"
#[4,] "Sean"   "4" "8" "12" "16" "20"

#It appears that combining the character vector with our matrix of numbers caused everything to be enclosed in double quotes. This means we're left with a matrix of character strings.
#Matrices can only contain ONE class of data. Therefore, when we tried to combine a character vector with a numeric matrix, R was forced to 'coerce' the numbers to characters.
#This is called 'implicit coercion', because we didn't ask for it.

#How to solve this problem? USE Data Frame

my_data <- data.frame(patients, my_matrix)
my_data

# patients X1 X2 X3 X4 X5
#1     Bill  1  5  9 13 17
#2     Gina  2  6 10 14 18
#3    Kelly  3  7 11 15 19
#4     Sean  4  8 12 16 20

#Behind the scenes, the data.frame() function takes any number of arguments and returns a single object of class `data.frame` that is composed of the original objects.

#Now add columns names

cnames <- c("patient", "age","weight", "bp", "rating", "test")

colnames(my_data) <- cnames

my_data

#  patient age weight bp rating test
#1    Bill   1      5  9     13   17
#2    Gina   2      6 10     14   18
#3   Kelly   3      7 11     15   19
#4    Sean   4      8 12     16   20

