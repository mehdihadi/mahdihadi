
########### Part1 
# History, applications, resources and packages

#The Comprehensive R Archive Network     https://cran.r-project.org

########### Part2 : RGUI
# Access, download, installation

########### Part3
# Rgui and common interfaces
 
########### Part4: RStudio
# Access, download, installation, RStudio environment

########### Part5:

# tilde (“~”)
# () are parenthesis 
# [] are square brackets 
# {} are called curly brackets
# &  ampersand 
# |  vertical bar 

# simple math in R
2+2
5-1
3*5
4/4

# vector is the smallest data structure in R
#  combine function c() is the most used and common way to create a vector in R
2
FALSE
TRUE
'Ali'
c(5,4,2,8,9,6,NA)

a<-c(5,4,2,8,9,6,NA)
b<-c(1,2,3,NA,5,6,NA)

mean()
c()

a+b
a-b
a*b
a/b

# na.omit is a function to exclude NA
na.omit(a/b)

# general Structure of functions in R
function(arg_1, arg_2, ...) 

mean(x=a)
mean(a, trim = 0.4, na.rm = T) #trim: the fraction (0 to 0.5) of observations to be trimmed from each end of x

?mean

class(a)
c<-c("ali","reza", "hasan" ,NA)
d<-c(F,T,F)

class(c)
class(d)

########### Part6:  
# Workspace and script concept, set working directory, open and load project
 
getwd() #List the current working directory.
setwd("Drive:/ADDRESS/") # use / or \\

save.image() #Save the workspace to myfile (default = .RData).
save.image("E:/IER-CWQR/Kerman/R workshop 1401/R/R/wd.RData") # use / or \\

P<-c(4,5)

save(P,file="E:/IER-CWQR/Kerman/R workshop 1401/R/R/wd.RData")	#Save all objects to a workspace file.

setwd("I:/WORKSHOP R-Bahman 97/R workshop 17-18-19-95/R 28-29 Bahman97/R")  

load("E:/IER-CWQR/Kerman/R workshop 1401/R/R/wd.RData")#Load a workspace into the current session (default =.RData).


ls() #List the objects in the current workspace.
rm(P)
rm(list=ls())
ls()
 
rm(ls())
rm(list=setdiff(ls(), "c")) #remove all exept c
ls()

#ctrl+L  # clear Console
cat("\014") # Clear console in Rstudio
cat("\f")


########### Part7:
#------------setting options
options()#View or set current options.
options(prompt=">")
options(max.print=1000000)
options(device = "windows") #in windows os
options(device = "quartz")  #in windows os
print(airquality)

dev.new()

air<-airquality

q()   #Quit R. You'll be prompted to save the workspace.



#------------- R citation, and license-------------
license()

# GNU is a Unix-like operating system. GNU stands for "Gnu's Not Unix"
# GNU is an operating system that is developed by the GNU project. 
# The GNU project is part of the Free Software movement and aims 
# to build a free (as in freedom) operating system. 
# The project consists in gathering people around the world
# to develop software that is freely available and can be 
# modified and distributed without restrictions. To license GNU,
# Richard Stallman created the GPL (General Public License) that
# is widely used today to license all sorts of Free Software. 
# contributors()

 
#### Cite R in your publications
citation()
citation("base")
#### Cite R in your publications
citation("PACKAGE NAME")
citation("rminer")


#--------------Help in R
help(mean)
help.search("mean") # Allows for searching a given character string
help.start() #HTML version of R help
apropos("time") # return functions with a especial character
help(package="base")
help(package="rminer")
help(package= "ggplot2" )

#---------avoid typo errors or misprint 
#  In R, X ? x

10+
  
   20
10  + 20
10+20
10+2 0 

citation(
)
citation ()
citation (  ) 
citat ion()

-5
1:5
########### Part8:
#--- Operators / Matematic operators/ Statistic function

     :: :::	#access variables in a namespace
     $ @	#component / slot extraction
     [ [[	#indexing
     ^	#exponentiation (right to left)
     
       - +	#unary minus and plus      -5
     :	#sequence operator
     %any%	#special operators (including %% and %/%)
     * /	#multiply, divide
     + -	#(binary) add, subtract   3-2
     < > <= >= == !=	#ordering and comparison
     !	#negation
     & &&	#and   shorter ones are vectorized, meaning they can return a vector
     | ||	#or    but longer form evaluates left to right examining only the first element of each vector
     ~	# tilde : used in formula
     -> ->>	#rightwards assignment
     <- <<-	#assignment (right to left)
     =	# assignment (right to left)
     ?	#help (unary and binary)

     5==4
     
#--------Arithmatic calculation-----------
     3+4
     4/5
     4*5
     24-15
     2^2
     
     20%%8 # modular division, #i.e. integer-divide x by y and return the remainder. "Modulo operation"
     
     #Give the remainder of the first vector with the second
     v <- c( 2,5.5,6)
     t <- c(8, 3, 4)
     v%%t
     
     1%%8
     2%%8
     3%%8
     8%%8
     
     20%/%8 # return the integer quotient of a division
     #The result of division of first vector with second (quotient)
     v%/%t 
     
     20%*%8 # Multiplication of matrices
   
     
#-------------Associativity and Precedence----
     
     #BEDMAS rule
     #B >E > DM > AS
     
     (3 + 6) - 8 * 3 / 24^2 + 15/5    # slide 83
     9 - 8 * 3 / 576 + 15/5  
     9 - 24 / 576 + 15/5
     9 -0.04166667+ 15/5
     9 -0.04166667+ 3
     8.958333+3
     
     
     8/4/2   
     12/6/2*2+1-2  
     4^2^2/2^2^2+2/1*2 
     2+2-(3*2)^2+12/4/2   

     
#-------------Math functions--------- 
     log(10)  
     log2(8)
     log10(10) 
     sqrt(9)  
     exp(709) 

     sin(30)
     sin(30*pi/180)
     cos(30)
     cos(30*pi/180)
     cos(60*pi/180) 
     sin(60*pi/180) 
     tan(60*pi/180) 
     
     1/tan(60*pi/180)    #cotan 60
     acos(0.5)*180/pi 
     asin(0.5)*180/pi 
     
     
     atan2(2,2)      #  atan2(y,x) returns the angle between the x-axis and the vector from the origin to (x, y)
     #0.7853982      # as Radian
     atan2(2,2)*180/pi
     #[1] 45           # as degree
     
     sqrt( 225 )
     sqrt(-9)
     
     
     
     
     #NaN   (not a number)
     225 ^ 0.5
     15
     
     sqrt(-9+0i) 
     abs( 21 )
     abs( -13 )
     sqrt(1 + abs(-8))
     
#-------------Round function, round(x , digits=0)
     round( 3.8415 )
     round( 3.14165, 2 )
     round( x=3.14165, digits=2 )
     # what is argument
     round( digits = 2, x = 3.1415 )
     round(2, 3.1415)
     
#-------------------Statistic functions-------Slide 100
     x<-c(10,12,15,18,23,23,12,5,6,9,23,12,5,65)
     
     plot(x)
     hist(x)
     mean(x, trim=0.05,na.rm=FALSE)	#mean of object x
     # trimmed mean, removing any missing values and
     # 5 percent of highest and lowest scores
     
     sd(x)	#tandard deviation of object(x)
     median(x)	#mdian
     range(x)	  #range
     max(x)
     min(x)
     # Range base on statistical definition
     range(x)[2]-range(x)[1]
     
     sum(x)	#sum
     plot(cumsum(x))
     cumsum(x)
     min(x) 	#minimum
     max(x)	#maximum
     var(x)	#variance 
     mad(x)	#median absolute deviation
     
     1/0   #Inf	# infinity
    -1/0   #-Inf
     0/0   #NaN	# Not a Number
     
     # In R missing values are coded with  NA = not available
     x <- c(1,3,4,NA,7,8)
     x
     mean(x)
     mean(x,na.rm=T)
     
     x<-0:10
     sum(x)
     
########### Part9:

##### data Structures  R
     
     # Vectors
     #       All elements of one type
     #       Scalars (individual numbers) are short vectors
     #       Example: myVector <- 1:4
     # Matrices and Arrays
     #       All elements of one type
     #       Two or more dimensions
     #       Example: myMatrix <- matrix(1:8, ncol = 2)
     #       Example: myArray <- array(1:16, dim = c(4, 2, 2))
     # Dataframes
     #       A collection of vectors, all of the same length
     #       Columns (vectors) may be of different types
     #       Always has column names and row names
     #       Some dataframes may be used as matrices
     #       Example: myDataframe <- mtcars
     # Lists
     #       An ordered collection of arbitrary data structures
     #       May or may not have names
     #       Note that a dataframe is a special kind of list
     #       Example: myList <- lm(mpg ~ wt, data = mtcars) 
     
    

  #-----vector
   
  A<-1 ;  B<-"Tehran"    ;  C<-TRUE;   D<-9i
  mode(A);mode(B);mode(C); mode(D)
  length(A); length(B); length(B); length(D)
  typeof(A);typeof(B);typeof(C); typeof(D)
  class(A);class(B);class(C); class(D) 

  # making vector using c() - Combine or Concatenate 
  a <- c(1, 2 , 5, 3, 6, -2, 4)
  b <- c("one", "two", "three","one","four","one")
  
  table(b)
  
  c <- c(T , TRUE, TRUE, FALSE, TRUE, FALSE)
  
  # other methods for making vector 
  seq(2, 3, by=0.5) #2.0 2.5 3.0 A complex
  sequence
  rep(1:2, times=3) #1 2 1 2 1 2 Repeat a vector
  rep(1:2, each=3) #1 1 1 2 2 2 Repeat elements   of a vector
  
  
  #indexing
  b[2]
  b[1:3]

  length<-150 #cm
  weight<-50  #kg
  BMI<-weight/(length*10^-2)^2 *3
  BMI
  
  #B > E > DM > AS
  
  length<-c(150,100,200,176,NA,120, 188,165,190,150) #cm
  weight<-c(50,20,90,75,50,75,96,77,89,56)  #kg
  gender<-c("F","F", "M","M","F","M","M","F","M","F")
  
  
  
  BMI<-weight/(length*10^-2)^2
  BMI
  length(length)
  
  #-----Matrix------- 
  Language.Percent <- c(34,26,24,45, 56, 34)
  rnames <- c("Asia", "America")
  cnames <- c("Persian", "French","English")  
  
  #insert by row
  mymatrix <- matrix(Language.Percent, nrow=2, ncol=3, byrow=TRUE,dimnames=list(rnames, cnames))
  mymatrix
  
  #insert by column
  mymatrix <- matrix(Language.Percent, nrow=2, ncol=3, byrow=FALSE,dimnames=list(rnames, cnames))
  mymatrix 
  
  #indexing
  mymatrix[1,2]
  mymatrix[1, ]
  mymatrix[,2 ]
  
  
  #-------------Array--------- 
  Country <- c("America", "Netherlands")
  Language <- c("English", "Dutch", "Persian")
  Blood.Group <- c("A", "B", "AB" , "O")
  MI<- c(12,25,13,24,25,12,17,16,14,23,24,16,15,8,14,23,27,16,16,25,15,16,18,14)# myocardial inflammation 
  
  MyArray <- array(MI, dim=c(2, 3, 4), dimnames=list(Country, Language, Blood.Group))
  
  ?array
  MyArray
  
  
  #indexing
  MyArray[1:2,"Dutch",1:4]
  MyArray[1:2,"Dutch",1:4]
  MyArray["America","Dutch",1:4]
  MyArray["America","Dutch","AB"]
  
  #-----dataframe
   #Example 1
  DF<-data.frame(weight,gender,BMI)
  class(DF)
    # data frame indexing
  DF[,c("weight","BMI")]
  DF[,c(1,3)]
  mean(DF$weight)
  mean(length,na.rm=T)
  
  #Example 2
  patientID <- c(1, 2, 3,4)
  age <- c(25, 34, 28, 52)
  diabetes <- c("Type1", "Type2", "Type1", "Type1")
  status <- c("Poor", "Improved", "Excellent", "Poor")
  patientdata <- data.frame(patientID, age, diabetes, status)
  patientdata
  
  #indexing
  patientdata[1,]
  patientdata[ ,1:4]
  
  unique(patientdata$diabetes)
  
  patientdata$diabetes[3]<-"Type2"
  
  
  DF <- data.frame(ozone = c(20,32,40,35,45), Station =  letters[1:5] , date = seq(as.Date("2004-01-01"), by = "week", length.out = 5),
                   stringsAsFactors = TRUE)
  
  str(DF)
  class(DF)
  data.matrix(DF[1:2])
  data.matrix(DF)
  
  
  #------------List-------------------------
  MyList <- list(DFData=patientdata ,ArrayData=MyArray ,MatrixData=mymatrix )
  
  MyList$DFData
  MyList$ArrayData
  MyList$MatrixData
  
  MyList[[2]][1:2,"Dutch",1:4]
  MyList[[2]][ , ,3]
  MyList[[2]][ 1, ,]
  MyList[["DFData"]][1:2,"diabetes"]
  MyList[[3]][2,2]
  MyList[[3]]["Asia",1:3]
  
  
  
  #----------regression output reports as list 
  x<-c(90.23, 80.77, 83.64, 82.54, 82.08, 86.32, 84.08, 84.29, 83.00, 82.57, 83.67,82.35)
  y<-c(91.07, 85.36, 84.61, 87.07, 85.88, 89.40, 86.70, 90.52, 88.02, 87.10, 89.84, 86.83)
  DF<-data.frame(x,y)
  plot(x,y)
  reg<-lm(y~x,data=DF)
  str(reg)
  reg$fitted.values
  plot(DF$y,reg$fitted.values)
  reg2<-lm(DF$y~reg$fitted.values)
  abline(reg2)
  ?abline
  cor(DF$y,reg$fitted.values)^2
  summary(reg2)
  typeof(reg)
  
  reg$fitted.values; reg$residuals reg$qr$qraux
  
  #------------------------- time series structure
  TS<-ts(1:100, frequency = 12, start = c(1999, 2)) # 2nd Quarter of 1959
  class(TS)
  
  Lines <- "ID Datetime Count
1 2012-08-25-00:00:00 8
2 2012-08-25-01:00:00 2
3 2012-08-25-02:00:00 6
4 2012-08-25-03:00:00 2
5 2012-08-25-04:00:00 2
6 2012-08-25-05:00:00 2"
  
  
  #### read data 
  DF <- read.table(text = Lines, header = TRUE )
  DF$Datetime=as.POSIXct(strptime(DF$Datetime,format = "%Y-%m-%d-%H:%M"))
  
  library(xts)
    data <-xts(DF[,-2], order.by =DF$Datetime) 
    plot(data$Count)

#------------------save objects workspace------------
  getwd()
  save.image(file = "MyWS.RData") 
  #or
  save(list = ls(all.names = TRUE), file = "MyWS.RData", envir = .GlobalEnv)
  
save.image("I:\\WORKSHOP R-Bahman 97\\R workshop 17-18-19-95\\R 28-29 Bahman97\\R\\MyWS.RData")
load("I:\\WORKSHOP R-Bahman 97\\R workshop 17-18-19-95\\R 28-29 Bahman97\\R\\MyWS.RData")





########### Part10:
#--- Install and load packages-------------
install.packages("rminer")
remove.packages("rminer")
devtools::install_github("cran/rminer")
install.packages("remotes")
remotes::install_github("JohnCoene/echarts4r")

library(rminer) # load package

install.packages("waterfall")
library("waterfall")
require(waterfall)

detach(package:waterfall) #unload package

library(help="waterfall")


search() # To see the list of currently loaded packages use
find("plot") #returns where objects of a given name can be found.
apropos("plot")
lsf.str("package:rminer") #return names of functions in a package
ls("package:rminer") #To list all objects in the package
 
find("waterfallchart")


########### Part 11:
#--- interactive source code------open with File>R source code 
h <- "Hello"
yourname <- readline("What is your name?")

weight<-readline("Please enter your weight as kg?")

weight<-as.numeric(weight)

height<-readline("Please enter your height as cm?")

height<-as.numeric(height)

BMI<-weight/(height/100)^2

print(paste(h, yourname,"your BMI is", BMI))

###### paste example
month <- c("Apr", "Dec", "Jan")
day   <- c(3, 13, 23)
year  <- c(2001, 2009, 1997)

date_str <- paste(year, month, day, sep="-")
date_str
########### Part 12:

#--------make sequence in R--
5:1
1:5
seq(from=0,to=5,by=0.5)
seq(0,4,length=10)
seq(0,4,length=10000)
rep(1,5)
rep(1:2,5)
rep(1:4, 2) 
rep(1:4, each = 2)  
rep(1:4, c(2,2,2,4))  
rep(1:4, c(2,1,2,1)) 
rep(1:4, each = 2, len = 4) # first 4 only. 
rep(1:4, each = 2, len = 10) # 8 integers plus two recycled 1's. 
rep(1:4, each = 2, times = 3) # length 24, 3 complete replications
1:20

1:20-1
1:(20-1) 
vec1<-c(rep(1,5),seq(2,4,0.5),rep(1:5, each = 2))
vecMul<-vec1*2

?seq

v <- c(1,1,1,2,2,2,2,3,3,3,3,3)
#Using rep( )
v1 <- rep(1,3) # Creates a vector of three ones
v2 <- rep(2,4)
v3 <- rep(3,5)
v <- c(v1,v2,v3)
#Putting the command together:
v <- c(rep(1,3), rep(2,4), rep(3,5))





F.Temp <- c(244,123,345,321,234,233,213)

# Fahrenheit to Kelvin
K.Temp <- (F.Temp - 32) * 5 / 9 + 273.15  # Convert Celsius to Kelvin

##-------- Break down computing parts:----- 
C.Temp <- (F.Temp - 32) * 5 / 9  # Convert Fahrenheit to Celsius
K.Temp <- C.Temp + 273.15  # Convert Celsius to Kelvin


########### Part 13:

#------------------------------Functions in R ---------------------------myfunction <-

function(arg1, arg2, ... ) {
  statements
  return(object)
}


#---square root of the sum of squares of its arguments

hypot <- function(a, b) {
  sqrt(a^2+b^2)
}

hypot(3,4)
hypot(a=3,b=4)

#------returns arguments of a function
args(sd) 

# -------------convert celsius to fahrenheit 
TemConvert<-function(x) {
  y<-9/5*x+32
  Tem<-data.frame(Celsius=x, Fahrenheit=y)
  return(Tem)
}            # function closed
celsius <- 25:30
TemConvert(celsius)
#------------------calculate efficiency
Efficiency <- function(x, y){
  percent <- round(((x-y)/x) * 100, digits = 1)
  result <- paste(percent, "%", sep ="" )
  Df<-data.frame(x,y,"Efficiency"=noquote(result) )
  Df
} # function closed

Before<-c(45,20,30,70)   # Before process observations 
After<-c(35,18,26,64)   # After process observations 

Efficiency(Before,After) 


a <- c(1,2,3,4,5,6,7)
b <- c(2,4,6,8,10,12,14)

#---------------standardize function----
standardize <- function(x){
    x_mean <- mean(x)                  # Finds the mean of the input variable
    x_sd <- sd(x)                      # Finds the standard deviation
    x_standard <- ((x-x_mean) / x_sd)   # Standardizes the input variable
 
    return(x_standard)                 # Returns the new object
}

standardize(x=a) 
standardize(b) 
#---------------BMI function----- 
length<-c(150,100,200,176,NA,120, 188,165,190,150) #cm
weight<-c(50,20,90,75,50,75,96,77,89,56)  #kg
gender<-c("F","F", "M","M","F","M","M","F","M","F")
BMI<-weight/(length*10^-2)^2
BMI



#--------- datasets in R------
library(datasets)
data()
women                             

?women
women$height
class(women)

BMI.Calculator<-function(L,W){ #L:a vector of length as in, 
  L.m<-L*0.025
  W.kg<-W*0.45
  BMI<-W.kg/(L.m)^2
  DF<-data.frame(L,W,L.m,W.kg,BMI)
  return(DF)
}


BMI.Calculator(women$height,women$weight)


BMI.Calculator(W=women$weight,L=women$height)
BMI.Calculator(length,weight)
women$height

data(package=.packages(all.available=T))
data()


##### function examples
fahrenheit_to_celsius <- function(temp_F) {
  temp_C <- (temp_F - 32) * 5 / 9
  return(temp_C)
}

fahrenheit_to_celsius(32)

celsius_to_kelvin <- function(temp_C) {
  temp_K <- temp_C + 273.15
  return(temp_K)
}


# freezing point of water in Kelvin
celsius_to_kelvin(0)

fahrenheit_to_kelvin <- function(temp_F) {
  temp_C <- fahrenheit_to_celsius(temp_F)
  temp_K <- celsius_to_kelvin(temp_C)
  return(temp_K)
}



# freezing point of water in Kelvin
fahrenheit_to_kelvin(32.0)



########### within and  with function
MyWomen<-women
MyWomen<-within(MyWomen, c( H_m<-height*0.025 , W_kg<-weight*0.45, BMI<-W_kg/(H_m^2)  )   )

with(MyWomen,{
  dev.new()
  par(mfcol=c(2,2))
  boxplot(BMI)
  scatter.smooth(H_m,BMI)
  data.frame(mean(W_kg),var(BMI))
  
})




#--------set local language
oldloc <- Sys.getlocale("LC_CTYPE")
Sys.setlocale("LC_CTYPE", "persian")


#------A useful function for descriptive statistics

MeanFunc<-function(x) round(mean(x,na.rm = TRUE),digits=6 )

SEFunc<-function(x) round(qt(0.975,df=sum(!is.na(x))-1)*sd(x,na.rm = TRUE)/sqrt(sum(!is.na(x)) ),digits=5 )
SDFunc<-function(x) round(sd(x,na.rm = TRUE),digits=5 )
LeftFunc<-function(x)  round(mean(x,na.rm = TRUE)-SEFunc(x),digits=5) 
RightFunc<-function(x) round(mean(x,na.rm = TRUE)+SEFunc(x),digits=5)  
MaxFunc<-function(x) round(max(x,na.rm = TRUE) ,digits=5)  
MinFunc<-function(x) round(min(x,na.rm = TRUE) ,digits=5) 

multi.fun <- function(x) {
  c(Mean = MeanFunc(x), SE = SEFunc(x), SD = SDFunc(x), Left=LeftFunc(x),Right=RightFunc(x),Max=MaxFunc(x),Min=MinFunc(x))
}

apply(women,2, multi.fun)
t(apply(women,2, multi.fun))
t(apply(airquality,2, multi.fun))


################# using psych package for returning descriptive statistic
library(dplyr)
install.packages("psych")
library(psych)

airquality %>%
  describe

########### #----Logics in R----  Part 13:

#There are three logical values:
  
  TRUE
  FALSE
  NA (“missing”, or “unknown value”)

  help(logical) 
  help(NA)

# binary comparison operators
3>2  #Greater than
2<3  #Less than
2==3
1==1
4>=3
5<=5
2!=4 #Not equal

isTRUE(3!=3)

isTRUE(2 + 2 == 4)
2+2 == 5
3*3 + 4*4 == 5*5
sqrt( 25 ) == 5
sqrt(2)^2 ==2


print(sqrt(2)^2,18)
print(sqrt(3)^2,18)
print(sqrt(4)^2,18)
print(sqrt(5)^2,18)
print(sqrt(6)^2,18)

as.integer(sqrt(2)^2)==2


#----Logics tables------slide 87
# Or : all we need is : one of the two parts to be true.
(2+2 == 4) | (2+2 == 5)


# And: we need both parts to be true.
(2+2 == 4) & (2+2 == 5)
# Not: is claim that ?not false? is the same thing as ?true?
!(2+2 == 5)

a<- -2:2
a

# typical logical Boolean operators in R
# And,   x & y
# Or,    x | y
# Not,  !x


(a>= 0) & (a<= 0)
(a>= 0) | (a<= 0)
xor( (a>= 0) , (a<= 0) )   # xor(x,y)   ?C   (x | y) & !(x & y)
((a>= 0) | (a<= 0)) & !((a>= 0) & (a<= 0))
((a>= 0) |(a<= 0)) & !((a>= 0) & (a<= 0))
!( a>= 0 )
2 %in% a
3 %in% a
1:4 %in% a


isTRUE(4>= 0 )         #is true if and only if x is a length-one logical vector whose only element is TRUE.

mylogic<- (a>= 0) & (a<= 0)
mylogic

mylogic <- c(FALSE, FALSE,  TRUE, FALSE, FALSE )
mylogic
mylogic <- c(F , F ,  T , F , F  )
mylogic


################### an example for usage of logical comparision 
n <- 10
set.seed(455)
dat <-data.frame(id = 1:n,
             state2020 = sample(state.name[1:5], n, replace = T),
             state2021 = sample(state.name[1:5], n, replace = T))
 
####Did somebody live in either Arizona or Alaska in 2021?
   # DO NOT DO THIS 
   dat$state2021 == c("Arizona", "Alaska")
   # DO THIS 
   dat$state2021 %in% c("Arizona", "Alaska")
   # Extract rows
   dat[dat$state2021 %in% c("Arizona", "Alaska"),]
 

#-------- Comparing strings
   
b<- c("cat", "DOG", "CAT", "elephant", "COW") 
d<- c("COW", "dog", "CAT","elephant", "cat") 
b== d   
b>= d 
b> d  
(d> b)

(b==d)&(b>d) 
(b== d)|(b>d) 


####-----Testing Equality 
#There is one logical comparison that is particularly
#problematic when made by a computer: equality.
#Checking the equality of logical values, character values, and 
#integer values is straightforward, 
#but numeric values with decimal precision (stored as “doubles”) are often imprecise. 

#-----Think of the decimal representation of 1/3
# or 0.3333333, which must be truncated at some point: 0.3333… cannot continue forever.

a <- 0.5 - 0.2  # 0.3
b <- 0.4 - 0.1  # 0.3

a == b          # Probably not what you expected!

a - b           # a small difference, but not exactly zero



# An example with vectors
x <- seq(0, 0.5, by = 0.1)
y <- seq(0.1, 0.6, by=0.1)-0.1

x == y          # Not what you hoped for?  (the third element ....)

#In the special case where we want to know of all elements of
#two vectors are equivalent, we have a summary function all.equal.
#In the more general case, we test that the differences between two
#vectors are less than a numerical tolerance.

x - y

all.equal(x,y)
#The smallest precision available on your computer is given by

.Machine$double.eps
#We commonly take our maximum imprecision to be the square root of that value
tol<-sqrt(.Machine$double.eps)

x-y < tol



#---indexing --------------

x <- 1:5
x[x<5]
x[x<5 & x>2]

sum(x<5)# answer is incorrect
sum(x[x<5]) # correct format
 
#----- && and ||----------- 
x <- stats::rpois(10, lambda = 1.5) / 4-1
hist(x)
y <- 1+x
x[(x > 0) & (x < 1)]    # all x values between 0 and 1

(x > 0) | (x < 1) #perform element-wise operation 
(x > 0) || (x < 1)#examines only the first element of the operands 
(x > 0) && (x < 1) #examines only the first element of the operands 

if (any(x == 0) | any(y == 0)) "zero encountered"

#----- logical operators precenece-------- slide 93

2 >= 3 && 2 == 2 || 2 != 3
2 <= 3 && 2 == 2 || 2 == 3 | !(3<=4) > !(1==1) && 3!=3 


#--------------Book sales example--------
sales <- 350 # All sales
350 -> sales
sales = 350

royalty <- 7 # Royalty for each book
royalty

revenue <- sales * royalty  # All revenue
revenue

revenue <- revenue + 550  # (550 $ as gift)
revenue

sales.by.month <- c(0, 100, 200, 50, 0, 0, 0, 0, 0, 0, 0, 0)
sales.by.month

data.entry(sales.by.month)
sales.by.month<- edit(sales.by.month)

fix(sales.by.month)

sales.by.month
names(sales.by.month) <- month.name
sales.by.month
names(sales.by.month) <-NULL
 
sales.by.month[c(2,4)]
sales.by.month[c("February","April") ] 

sales.by.month[2]
february.sales <- sales.by.month[2]
february.sales

sales.by.month[5] <- 25
sales.by.month

length( sales.by.month ) #How many months infomation are exist

profit.per.month<- sales.by.month*7 # Profit for each book
# --calculate profit per each day of each month
days.per.month <- c(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)

profit.per.day<-profit.per.month /days.per.month 

salesDF<-cbind(sales.by.month,days.per.month,profit.per.month,profit.per.day)
class(salesDF)
SalesDF<-as.data.frame(salesDF)
salesDF<-rbind(sales.by.month,days.per.month,profit.per.month,profit.per.day)
class(salesDF)
salesDF<-data.frame(sales.by.month,days.per.month,profit.per.month,profit.per.day)
class(salesDF)


salesDF<-data.matrix(salesDF) 
class(salesDF)

#----months with atleast one book sales--
sales.by.month<- c(0 ,100 ,200 ,50 ,25 ,0 ,0 ,0 , 0 , 0 ,0, 0)

sales.by.month [ sales.by.month > 0 ]

stock.level<-c("high", "high", "low", "out", "out" ,"high" ,"high" ,"high", "high", "high","high", "high")
stock.level

names(stock.level) <- month.name

stock.level[stock.level == "out"]  # Months which book is "out"
stock.level[stock.level == "out" | stock.level == "low"]  # Months which book is "out" OR is "low"  
#or
stock.level[stock.level != "high" ]




########### Part 14:
#-------- Working with strings---------
greeting <- "hello"
greeting

months <- c("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December")
months <-month.name
months
months[1:4]
months[7]
length(months)
nchar( x = greeting )
nchar( x = months )
substr (months,1,5)        #function (x, start, stop)
substr (months,1,3)

x <- c("12:08pm", "12:10pm","12:08pm", "12:15pm")
substr(x, start=4, stop=5)
 
regexpr("08", x)

x <- c("12:08pm", "12:10pm", "1:08pm")

sub("pm", "am", x)


toupper (substr (months,1,3))
tolower(months)
date()

paste(substr (date(),5,7),substr (date(),21,24),sep="")
paste0(substr (date(),5,7),substr (date(),21,24))


x <- "MiXeD cAsE 123"
chartr("iXs", "why", x) #chartr (old, new, x)

chartr("a-cX", "D-Fw", x)


print("A title")
print(matrix(1:4,nc=2))
print(c("Hello", "there"), quote=FALSE)
print(1/1:5, digits=2)
print(c(1, NA, Inf), na.print=" ")

a <- "apple"
b <- "banana"
paste(a, b, sep=", ") # With a comma and space 
d <- c("fig", "grapefruit", "honeydew") # With a vector

# If the input is a vector, use collapse to put the elements together:
paste(d, collapse=", ")
 
length(paste(d, collapse=", "))

# If the input is a scalar and a vector, it puts the scalar with each
# element of the vector, and returns a vector:
paste(a, d)
 
e<-paste(a, d, sep="-", collapse=", " ) # Use sep and collapse
noquote(e)

class(noquote(paste(1:12)) )

as.character(1:12)


length(paste("A", 1:6, collapse=", ",sep = "") )

paste("Today is", Sys.Date() , "and Time is", Sys.time())
paste("Today is", Sys.Date() , "and Time is", substr(Sys.time(),11,19))

strtrim(month.name,2)                # strtrim(x, width)

strtrim(c("abcdef", "abcdef", "abcdef"), c(1,2,3))

#concatente and print
cat("aaa", "bbb", "\n")
cat("aaa", "bbb", "\n", sep="  ")
cat("a","b","c","d","\n",sep=" - ")
R2 = 0.7863
cat("R-squared =", R2, "\n")
cat("What is  \"R\"? \n")



########### Part 15:
#-------------Import dataset into R

### import with hand
DF<-scan(what=list(name="",Gender="",Mark=""))
DF<-cbind.data.frame(DF)
fix(DF)

### import table from folder
# comma separated
water<-read.table(file.choose(), header=T,sep=",")

# tab separated
orange<-read.table(file.choose(), header=T,sep="\t")

library(tidyverse) # required package
sleep <- read_csv("Dataset//Sleep.csv")

library(readxl) # required package
femaleData <- read_xlsx("Dataset//FemaleData.xlsx")

#Write the data frame water to Excel Spreadsheet
library ("xlsx")
write.xlsx ( water , "water.xlsx" , row.names = FALSE )






### import table from link
hsb2 <- read.table("https://stats.idre.ucla.edu/wp-content/uploads/2016/02/hsb2-2.csv", header=T, sep=",")
hsb2 <- read.csv('https://stats.idre.ucla.edu/wp-content/uploads/2016/02/hsb2-2.csv', header=T, sep=",")
hsb2 <-read.table(file.choose(), header=T,sep=",")



#A data frame with 200 observations and 11 variables.
#id 		Student ID.
#gender 	Student's gender, with levels female and male.
#race 	Student's race, with levels african american, asian, hispanic, and white.
#ses 		Socio economic status of student's family, with levels low, middle, and high.
#schtyp	Type of school, with levels public and private.
#prog		Type of program, with levels general, academic, and vocational.
#read		Standardized reading score.
#write	Standardized writing score.
#math		Standardized math score.
#science	Standardized science score.
#socst	Standardized social studies score.
# using subset function




#-----------which()function--------
values<-c(1,3,2,68,11,13,19,8,49,4) 
my_max<-max(values)
which_values<-which(values==my_max)
cat("Val.",which_values,"is max and equal to" ,my_max,  "\n") 
values[which(values<my_max)]
#----------------------------------


hsb2[which(hsb2$write==max(hsb2$write)), ]

#-----------subset()function--------
newdata <- subset(hsb2, female  == 1 & race  == 4,   select=c("read", "write", "math", "science", "socst"))

?subset

apply(newdata,2,function(x) c("mean"=mean(x), "median"=median(x), "sd"=sd(x)) ) 
apply(newdata[,c("read", "write")],2,function(x) c("mean"=mean(x), "median"=median(x), "sd"=sd(x)) ) 
#-------------------

# often it is required to evaluate particular groups in a data frame.
# For such a situation, we can use the aggregate function.



####------attach / detach
read
hsb2$read
attach(hsb2)
read
detach(hsb2)
 
####-------make a factor
str(hsb2)
summary(hsb2[,c(7:11)])

#defining ses.f to be a factor variable
hsb2$ses.f <- factor(hsb2$ses , labels=c("LOW", "MIDDLE", "HIGH"),ordered=T ) 
hsb2$race.f <- factor(hsb2$race, labels=c("american", "asian", "hispanic","white")) 
hsb2$schtyp.f = factor(hsb2$schtyp, labels=c("public ", "private")) 
hsb2$prog.f = factor(hsb2$prog, labels=c("general", "academic", "vocational")) 

str(hsb2)
str(hsb2$ses.f)

?factor
#------------------- data visualization using lattice
#install.packages("lattice")

library(lattice)
#histograms
hist(hsb2$write,xlab="Writing mark")

histogram(~write, hsb2)

?histogram
#conditional plot
histogram(~write | schtyp.f*ses.f, hsb2)  #~ x | g1 * g2 * 
densityplot(~socst, hsb2)
#conditional plot
densityplot(~socst | race.f, hsb2)
qqmath(~write, hsb2)
#conditional plot
qqmath(~write | ses.f, hsb2)
bwplot(~math, hsb2)
#conditional plot
bwplot(ses.f~math, hsb2)
bwplot(~math| ses.f, hsb2)
xyplot(write~math, hsb2)
#conditional plot
xyplot(write~math | ses.f, hsb2)
subset <- hsb2[ , 7:14] 
?splom  #scatter plot matrix
splom(~hsb2[ , 7:9]) 

#---------------------- correlation plot using GGally
library(GGally)
ggpairs(hsb2[ , 7:9], title = "Scatterplot Matrix")


#-----------------making a regression model for hsb2 dataset
str(hsb2)
fit <- lm(write~ses.f+race.f+schtyp.f, hsb2)
str(fit)
cor(hsb2$write,fit$fitted.values)^2
reg<-lm(hsb2$write~fit$fitted.values)
plot(hsb2$write,fit$fitted.values )
abline(reg)

summary(fit)
str(fit)

dev.new()
par(mfrow=c(3,2))
plot(fit)
plot(fit, which=1:2)
plot(fit, which=3:4)
plot(fit, which=5:6)


################ see /leverage.jpg
# -------Leverage, residuals, and influence
# leverage: the potential of an observation to change the estimated coefficient.
# The second relevant metric is the residual, which is the difference between the prediction
# and the observed value. Finally, the third is the influence, which can be thought of as
# the product between the leverage and the residual(ness).

# the leverage is as the horizontal distance between an observation and the rest of the regression line
# residual is as the vertical distance between the observation and the regression line. Essentially, we can have
# four cases, as depicted in the following graphs:

  # 1. low leverage and high residual= low influence
  # 2. high leverage and low residual= low influence
  # 3. high leverage and high residual= high influence
  # 4. low leverage and low residual= low influence

# leverages can help us identify extreme x values.
# Cook's Distance is a summary of how much a regression model changes when the ith observation is removed
  

####### Another regression example
data()
airquality
?airquality
str(airquality)
airquality<-na.omit(airquality)
fit <-lm(Ozone~Solar.R+Wind+Temp,airquality) # Full model model
str(fit)
cor(airquality$Ozone,fit$fitted.values)^2
reg<-lm(airquality$Ozone~fit$fitted.values)
plot(airquality$Ozone,fit$fitted.values )
abline(reg)

#############



#----- -factor() function examples-------See slide 132------------

#### example 1
WaterTDS<-read.table(file.choose(), header=T,sep=",")
str(WaterTDS)
WaterTDS$Sample<- factor(WaterTDS$Sample,ordered=F)

#### example 2
water_type<-factor(c("industrial","drinking","industrial","drinking","agriculture","drinking","agriculture")) 
water_type 
pollution_level<-c(2,1,2,1,3,1,3)
pollution_level
WaterDF<-data.frame(water_type,pollution_level)

WaterDF$pollution_level<-factor(WaterDF$pollution_level ,ordered=T, labels=c("weak","average","strong")) # the order of the labels will follow the numeric order of the data.
str(WaterDF)
is.factor(WaterDF$pollution_level)
levels(WaterDF$pollution_level)
as.double(WaterDF$pollution_level) 



#---------------------categorize variable using cut() function-------
?cut
hsb2
 
hsb2$readCat<-cut(hsb2$read,c(0,25,50,75,100),right=T,labels=c("very low","low","high","very high"),ordered_result=T )  #cut(x, breaks, labels = NULL, (...
hsb2$WriteCat<-cut(hsb2$write,c(0,25,50,75,100),right=T,labels=c("very low","low","high","very high"),ordered_result=T )  #cut(x, breaks, labels = NULL, (...
hsb2$MathCat<-cut(hsb2$math,c(0,25,50,75,100),right=T,labels=c("very low","low","high","very high"),ordered_result=T )  #cut(x, breaks, labels = NULL, (...
hsb2$ScienceCat<-cut(hsb2$science,c(0,25,50,75,100),right=T,labels=c("very low","low","high","very high"),ordered_result=T )  #cut(x, breaks, labels = NULL, (...
str(hsb2)
?cut
summary(hsb2$readCat)

#conditional plot
histogram(~math | readCat, hsb2)  #~ x | g1 * g2 * 

xyplot(write~math, hsb2)

#conditional plot
xyplot(write~math | readCat, hsb2)


#----------merge()function-----------------
Df1<-data.frame(Car=c("A","B","C","D","E","F"), Tehran=c(10,12,14,9,5,17))
Df2<-data.frame(Car_name=c("B","A","E","D","F","C"), Isfahan=c(5,10,23,6,8,12))

DF <- merge(Df1,Df2,by.x ="Car",by.y="Car_name" )

Df1<-data.frame(Car=c("A","B","C","D","E","F"), Tehran=c(10,12,14,9,5,17))
Df2<-data.frame(Car=c("B","A","E","D","F","C"), Isfahan=c(5,10,23,6,8,12))

DF <- merge(Df1,Df2,by="Car")




#-------------------split----  split(x, f, drop = FALSE, ...) # if drop=T the levels of f which there is no data in x will be ignored.
WaterTDS
#---for one variable
WaterS<-split(WaterTDS$TDS, WaterTDS$Sample) 
WaterS<-split(WaterTDS[,c(2:3)], WaterTDS$Sample)
WaterS[[3]]
lapply(WaterS,mean)

#-----for more than one variable
Splited<-split(WaterTDS[,2:3], WaterTDS$Sample)


lapply(Splited, function(x) apply( x, 2, mean))
 
lapply(Splited, function(x) { x["Temperature"] <- NULL; x })




#-------------sort-order and rank------------
a<-c(8,4,7,8,22.6,9,NA,14,45.6)
names(a)<-c("a","b","c","d","e","f","g","h","i")
sort(a,decreasing=F,na.last = T)#na.last = NA to remove NA
order(a,decreasing=F,na.last = TRUE)
rank(a, na.last = T)    # rank(x, na.last = TRUE, ties.method = c("average", "first", "random", "max", "min"))
rank(a, na.last = TRUE, ties.method =  "first")
######


BOD[with(BOD,order(demand,decreasing=T)),]

x1<-sample(c("A","B","C"),20,replace=TRUE)
y1<-rpois(20,2)
df1<-data.frame(x1,y1)
df1

df1$Rank<-rank(df1$y1)
df1
df1[with(df1,order(y1 ,decreasing=T)),]
df1[with(df1,order(Rank,decreasing=T)),]


########### Part 16:
#-------------Apply functions families
#--------------------------------------------- Apply functions-----------------------------------------------
#apply 	Apply Functions Over Array Margins
#by 	      Apply a Function to a Data Frame Split by Factors
#eapply 	Apply a Function Over Values in an Environment
#lapply 	Apply a Function over a List or Vector
#mapply 	Apply a Function to Multiple List or Vector Arguments
#rapply 	Recursively Apply a Function to a List
#tapply 	Apply a Function Over a Ragged Array
#replicate  for repeated evaluation of an expression

#--------------apply  :  apply(X, MARGIN, FUN, ...) 
DF1<-airquality

apply(DF1,2 ,function(x) max(x,na.rm=T)) # maximum
apply(DF1,2,min) # minimum
apply(DF1,2,sum) # sum
apply(DF1,2,mean) # mean
apply(DF1,2,median) # median
apply(DF1,2,var) # variance
apply(DF1,2,sd) # standard deviation
 
m <- matrix(c(1:30), nrow = 10, ncol =3)
apply(m, 1, mean)
apply(m, 2, mean)
apply(m,  2, function(x) sin(x))
apply(m,  2, sin)


DF1 <- read.table(file.choose(), header=T, sep=",")

apply(DF1[,c("Mir.Hypopnea", "AZ.Apnea", "Mir.Apnea", "AZ.AHI")],2,function(x) c("mean"=mean(x,na.rm = T), "median"=median(x,na.rm = T), "sd"=sd(x,na.rm = T))  )
apply(DF1[,c("Mir.Hypopnea", "AZ.Apnea", "Mir.Apnea", "AZ.AHI")],1, multi.fun )
 
#---------------by :by(data, INDICES, FUN, ...) 
iris
head(iris)
str(iris)
#----------------to transform from character to numeric
iris[, 1:4]<-apply(iris[, 1:4], 2, function(x) as.numeric(as.character(x))) # 
###

by(iris[, 1:4], iris$Species, colSums)
by(iris[, 1:4], iris$Species, colMeans)


#---------------eapply: eapply(env, FUN, ...) 

#eapply applies FUN to the named values from an environment and returns the results as a list.

ls()
# a new environment
e<-new.env()
# two environment variables, a and b
e$a <- 1:10
e$b <- 11:20
ls(e)

# mean of the variables
eapply(e, mean)

#----------------lapply :  lapply(x, FUN, ...) 
#lapply returns a list of the same length as X, each element of which is the result of applying FUN to the corresponding element of X.

l <- list(a = 1:10, b = 11:20)
lapply(l, mean)
lapply(l, sum)


# Create a list of matrices
A=matrix(rnorm(30), nrow=5, ncol=6)
B=matrix(rnorm(20), nrow=4, ncol=5)
C=matrix(rnorm(12), nrow=3, ncol=4)

MyList <- list(A ,B,C)

# Extract the 2nd column from `MyList` with the selection operator `[` with `lapply()`
lapply(MyList,"[", , 2)

# Extract the 1st row from `MyList`
lapply(MyList,"[", 1, )

lapply(MyList,"[", 1, 2)

MyList[[1]]

#-----sapply :  sapply(x, FUN, ...) 
#sapply is a user-friendly version of lapply by default returning a vector or matrix if appropriate. 

l <- list(a = 1:10, b = 11:20)
l.mean <- sapply(l, mean)
l.mean
l.sum <- sapply(l, sum)


# Return a list with `lapply()`
lapply(MyList,"[", 2, 1 )

# Return a vector with `sapply()`
sapply(MyList,"[", 2, 1 )

# Return a list with `sapply()`
sapply(MyList,"[", 2, 1, simplify=T)

# Return a vector with `unlist()`
unlist(lapply(MyList,"[", 2, 1 ))


###----------------mapply
# mapply() function stands for 'multivariate' apply.
# Its purpose is to be able to vectorize arguments to a function
# that is not usually accepting vectors as arguments.

# Create a 4x4 matrix
Q1 <- matrix(c(rep(1, 4), rep(2, 4), rep(3, 4), rep(4, 4)),4,4)


# Or use `mapply()`
Q2 <- mapply(rep,1:4,4)

mapply(rep, 1:4, 4:1)

mapply(rep, times = 1:4, x = 4:1)




#----------------vapply:  vapply(x, FUN, ...) 
#vapply is similar to sapply, but has a pre-specified type of return value, so it can be safer (and sometimes faster) to use
l <- list(a = 1:10, b = 11:20,c=1:40)
l.fivenum <- vapply(l, fivenum, c(Min=0, "1st Qu."=0, Median=0, "3rd Qu."=0, Max.=0))
class(l.fivenum)
fivenum(1:10)
#-----------------tapply :  tapply(X, FUN, ...) 
#Apply a function to each cell of a ragged array.
# mean petal length by species
tapply(iris$Petal.Length, iris$Species, mean)
tapply(iris$Petal.Length, iris$Species, function(x) c("mean"=mean(x,na.rm = T), "median"=median(x,na.rm = T), "sd"=sd(x,na.rm = T)) )
 

# replicate:     replicate(n,  expr, ?)
# let?s simulate 3 normal distributions, each with 10 observations:
replicate(5, rnorm(10,mean=0,sd=1))
rep(rnorm(10,mean=0,sd=1),1000)

########### Part 17:
#------------solving equations----
#X1+2X2=1
#3X1+4X2=1
A = matrix(c(1, 3, 2, 4), ncol = 2)
b = c(1, 1)
solve(A, b)

#2x1+3x2+4x3=7
#x1+6x2+5x3=4
#4x1-5x2-x3=6

A = matrix(c(2, 1, 4, 3,6,-5,4,5,-1), ncol = 3)
b = c(7, 4,6)
solve(A, b)


########### Part 18:
#--- program controlling--------------------


#------------for--------  
for (counter in vector) {
Commands
}


x <- 10:15

sum <- 0

for(i in 1:length(x)){
sum=sum+x[i]
print(sum)
}

#--------------calculate sum and squered sums of 1:5
x <- 1:5
sum1 <- 0
sum2 <- 0

for(d in 1:length(x)) {
  sum1 = sum1 + x[d]
  sum2 = sum2 + x[d]^2
  print(c(sum1,sum2))
}

sum1
sum2

#-------------if ----------------

if (test_expression) {
 statement
 }

x <-   5 

if(x > 0) { 
print("Positive number") 
}

if(x > 0) print("Non-negative number")

#-----------if-else----------------
if (test_expression) {
statement1
} else { 
statement2 
}

x <-0

 if(x > 0){ 
print("Non-negative number") 
} else {
 print("Negative number") 
}

#-----------------nested if...else------------------

if ( test_expression1) { 
statement1 
} else if ( test_expression2) { 
statement2 
} else if ( test_expression3) { 
statement3 
} else 
statement4
}

x <- -3 

if (x < 0) { 
print("Negative number") 
} else if (x > 0) { 
print("Positive number") 
} else {
 print("Zero")
}

Detect.N<-function(x){
 
 for(i in 1:length(x)){ 
  if (x[i] < 0) { 
    print("-") 
  } else if (x[i] > 0) { 
    print("+") 
  } else{
    print("Zero")
  }
 }
  
}

Detect.N(c(-5,3,0))

#---------------for and if-else------------------
for (counter in vector) 
{
       if ( test_expression1)
           { 
           statement1 
           }
       else
           {
           statement2
          }
}  

14%%2

 x = c(12,4,3,5,6,7,8,23)
 
oddDetect<-function(x) {
 
  for(i in 1:length(x)){  #strt for
  
  if(x[i] %% 2 == 0){
     print("even")
  }else{
  print("odd")
  }
   
    
  }  #end for
}

oddDetect(c(12,4,3,5,6,7,8,23))
#--------------ifelse------------------
#   ifelse (condition, yes do this, no do this)

x <- c(-1,2,-4,8,-10)

ifelse(x>0, 1/x, x)


a <- c(5,7,2,9) 
ifelse(a %% 2 == 0,"even","odd") 

#-----------------while ----------------------------------
while (test_expression) { 
statement 
} 

n=10
while(n>=0) {
  print(n)
  n=n-1
}

#------------------break----------------------------------

x <- 1:5
for (i in x) {
    if (i == 3){
        break
    }
    print(i)
}
#---------------------next----------------------------------

x <- 1:5 
for (i in x) {
 if (i == 3){ 
next 
} 
print(i)
 }

#------------------repeat---------------------------------------------
x <- 1 
repeat
{
      print(x)
      x = x+1
      if (x == 100){
      break
      }
}

#---------------------switch--------------------------------------

switch(2,"red","green","blue")


switch("shape", "color"="red", "shape"="square", "length"=5)

centre <- function(x, type) {
           switch(type,
           mean = mean(x),
            median = median(x),
            trimmed = mean(x, trim = .1))
}


x <- c(2,4,5,12,23,23,32)

centre(x, "mean")
 
centre(x, "median")
 
centre(x, "trimmed")
 





######## Practical example

Qcalc <- function ( hf, Diam,  Len, no, pipe_e ) {
  #   no           #Kinematic water viscosity as m2/s
  #   Len         #length as m
  #   Diam      # pipe diameter as m
  #   pipe_e   # absolute roughness as m
  #   fri            # friction factor , this value is initial assumption
  #   hf            # Hydrauloc pressure lose
  
  fri<-0.01  # friction factor , this value is initial assum
  diff<-1     # initial difference
  while(diff>=0.00001)   {
    Vel_1=sqrt((hf*2*9.81*Diam)/(fri*Len))  # velocity as m/s
    Ryno=(Vel_1*Diam)/no   # Rrynolds number
    fri=0.25/(log10((pipe_e/(3.71*(4*Ryno)))+(5.74/(Ryno^0.9))))^2
    Vel_2=sqrt((hf*2*9.81*Diam)/(fri*Len))
    diff=Vel_1-Vel_2
    print(paste("V:  ", Vel_2,"F :  ", fri  ) )
  }
  Flow<- (pi*Diam^2*Vel_2)/4
  cat("The flow of your pipe is", format(Flow,digits=4),"m3/s", "\n")
  print(paste("The flow of your pipe is",format(Flow,digits=4),"m3/s"  ),quote=FALSE )
}


Qcalc(hf=53,Diam=0.2032,Len=1219,no=1.519*(10^(-6)),pipe_e=0.00466) 




############# Date in R
# Unix time is a date and time representation widely used in computing.
# The Date class translates calendar dates to a time line of integers, 
# where 0 is “1970-01-01”, 1 is “1970-01-02”, -1 is “1969-12-31”, etc. 

x <- "1970-01-01"
class(x)
y <- as.Date(x)
y
class(y)
as.numeric(y)
as.numeric(Sys.Date())

#Date Formats
# 2020-11-03 (international standard)   R default
# 11/03/2020 (a typical American representation)
# November 3, 2020 (another typical American representation)

help(strptime) #to find formatting codes
# default format
"%Y-%m-%d %H:%M:%S"
# %m is  Month as decimal number (01–12)
# %B is  Full month name in the current locale

as.Date("2020-11-03")
as.Date("11/03/2020", format = "%m/%d/%Y")
as.Date("November 04, 2020", format = "%B %d,%Y")

#### exercise (SAS and Stata date format)
as.Date("18jun2005", format = "%d%B%Y")


library(lubridate)
mdy(c("11/03/2020", "November 3, 2020", "11032020"))
mdy(c("feb 29 2021", "hello", "2020-11-03"))

###### Extracting Date Categories

dates  <- c("04/10/1964", "06/18/1965", "09/21/1966")
ndates <- as.Date(dates, format="%m/%d/%Y")

strftime(ndates, format="%m")
strftime(ndates, format="%b")

year(ndates)
month(ndates)
day(ndates)
yday(ndates)
wday(ndates)
week(ndates)


#######Convert gerg date to jalali date
install.packages("jalcal")
library("jalcal")
mydate<-as.Date("2002-04-01")
class(mydate)
greg2jal(mydate)
greg2jal0(2002, 4, 1)


library(jalcal)
DF<-data.frame(case=c("2022-4-1","2022-4-4","2022-4-6"),date=c("2022-4-1","2022-4-4","2022-4-6"))
class(DF)
str(DF)
DF[,2]<-as.Date(DF[,2])
DF[,1]<-as.Date(DF[,1])

install.packages("dplyr")
library(dplyr)
DF <- DF %>% 
  mutate_if(is.character, as.Date)
str(DF)

HadiGreg2jal<-function (x) {
  df<-data.frame()
  for(i in 1:length(x)){
    date <- as.Date(x[i], format = "%Y-%m-%d")
    date <- strsplit(as.character(date), split = "-")[[1]]
    year <- as.integer(date[1])
    month <- as.integer(date[2])
    day <- as.integer(date[3])
    
    df[i,1]<-paste(greg2jal0(year, month, day),collapse="-")
  }
  df%>%
    rename("JalDate"="V1")
  
}


HadiGreg2jal(DF$case)
apply(DF[1],2,HadiGreg2jal) # maximum
greg2jal
greg2jal0(1922, 08, 12)
greg2jal(as.Date(c("2022-4-1","2022-4-4","2022-4-6"), format = "%Y-%m-%d"))



########### Part 19:
# --Graphics in R-------------------------------

x <- c(1,3,6,8,10,11,15,20,22,25)
y <- c(1,5,9,13,19,21,25,30,32,35)

par(mfrow=c(1,1)) #MultiFrame rowwise layout

plot(x,y, pch=5 )

plot(x,y, lty=1,type="h",main="My graph",xlab="x axis",ylab="y axis")

plot(x,y,col="blue",pch="@",cex=1)

plot(x,y,cex.lab=2, main="size of title",cex.main=4,cex.axis=1)

par(cex.lab=2,cex.main=5,cex.axis=1)
plot(x,y,main="size of title",type="s",lty=1)

plot(x,y,type="l")	# lines
plot(x,y,type="b")	# points connected by lines
plot(x,y,type="o")	# lines are over the points
plot(x,y,type="h")	# vertical lines
plot(x,y,type="s")	# steps

plot(x,type="l",lty=1, pch=0) # solid and symbol= square
plot(x,type="l",lty=2, pch=1) # dashed and symbol=circle
plot(x,type="l",lty=3)	# dotted 
plot(x,type="l",lty=4)	# dotdash 
plot(x,type="l",lty=5)	# longdash
plot(x,type="l",lty=6)	# twodash


plot(x, y, pch=19, cex=3, col="dark red")
points(x, y, pch=19, cex=3, col="557799")
points(x, y, pch=19, cex=3, col=rgb(0, 0, 0))  #rgb(red, green, blue,alpha) alpha is transparency level in the range [0,1] 
?rgb

pal1 <- heat.colors(5, alpha=1)   #  5 colors from the heat palette, opaque
plot(x, y, pch=19, cex=5, col=pal2)

pal2 <- rainbow(5, alpha=.5)      #  5 colors from the heat palette, transparent
plot(x, y, pch=19, cex=1,cex.lab=1, cex.axis=1,col=pal2)

palf <- colorRampPalette(c("gray", "red","green")) #These functions return functions that interpolate a set of given colors to create new color palettes 
plot(x, y=1:10, pch=19, cex=2, col=palf(15)) 


windows(5, 5)
# making multiframes
par(mfrow=c(2,2))
plot(x,y)
plot(x*2,y*2)
plot(x/2,y^0.4)
plot(x/2,y^0.2)
dev.off() #close a window


# layout
windows(6, 6)
layout( matrix(c(3,1,3,2),2,2)  )
plot(x*2,y*2)
plot(x*2,y*2)
plot(x/2,y^0.4)
dev.off()


############################### Problem not resolved--- Error in plot.new() : figure margins too large: resolved by adding mar=c(1,1,1,1)
par("mar")

jpeg ("mygraph.jpeg"  ,width=5 ,height=5, units="in" ,res=600)
    plot(Ozone~Wind, airquality)
  abline(lm(Ozone~Wind,airquality))
  title("Regression of Ozone on wind")
dev.off()

jpeg("Ceffn.jpg", width=7, height=8.5, units="in", res=800)# Start graph-
#par(mfrow = c(2,2))
layout( matrix(c(3,1,3,2),2,2)  )
plot(Ozone~Wind, airquality)
plot(Ozone~Wind, airquality)
plot(Ozone~Wind, airquality)
dev.off()


##################################

boxplot(x)
hist(x,breaks=5)

warm = ifelse (airquality$Temp >= 90, "red", "forestgreen") 

plot(airquality$Temp, type = "h", col = warm)

airquality$date = with(airquality, ISOdate(1973, Month, Day))
bad = ifelse(airquality$Ozone >= 90, "orange","forestgreen")
plot(Ozone~date, data = airquality,type="h", col=bad)
abline(h=90, lty = 2, col = "red")

DF<-head(airquality$Wind)
names(DF)<-month.name[1:6]
par(mfcol=c(1,2))
barplot(DF,ylab="Wind")
barplot(DF,horiz=T,xlab="Wind")




setwd ( "F:/R" )
#Create requisite vectors for plotting pie chart
text_labels = c ( "A" , "B" , "C" , "D" , "E" )
values = c ( 34 , 76 , 23 , 83 , 19 )
#Set output image file name where the pie chart will be saved
png ( file = "demo_pie_chart.png" )
#Call the pie function
pie ( values, text_labels, main = "Demo Pie Chart" , col = rainbow ( length ( values )))
#Close the plotting device. I.e. Save the output file
dev.off ()




################## distributions in R

dnorm(0, mean = 0, sd = 1, log = FALSE)  # returns the value of the probability density function (pdf) of the normal distribution given a certain random variable x

pnorm(0, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE) # returns the cumulative value of the probability density function (pdf) of the normal distribution given a certain random variable x

qnorm(0.5, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE) # The qnorm function provides the quantile of the normal distribution at a specified cumulative density 

rnorm(3, mean = 0, sd = 1)










#---------------------Other examples for graphic in R--------------------------------------

https://stats.idre.ucla.edu/r/codefragments/introduction/

We looked at how to make plots in R using boxplot, hist, 
density, plot, barplot, pie, as wella s how to customize
the colours, shapes, and labels. 




set.seed(1)  # so this is reproducible
## data frame with variable, xn ~N(0, 1)
d <- data.frame(xn = rnorm(1000, mean = 0, sd = 1),xy = rnorm(1000, mean = 0, sd = 0.5))

## basic boxplot---looks nice
boxplot(d)

## with the notch
boxplot(d$xn, notch = TRUE)


## basic histogram
hist(d$xn)

## increase the number of bins (increases resolution)
hist(d$xn, breaks = 100)


hist(d$xn, breaks = 25, prob = TRUE, main = expression(paste("Histogram of my distribution ~ N(", mu, "=0, ", sigma, "=1)")), xlab = "X")
hist(d$xn, breaks = 25, prob = TRUE, main = expression(phi(x) == paste(frac(1, sqrt(2 * pi)))), xlab = "X")

expression(phi(x) == paste(frac(1, sqrt(2 * pi))))



# Example 2
h <- rnorm(mean = 5, sd = 1, n = 1000)
hist(h, main = expression(paste("Sampled values, ", mu, "=5, ", sigma,
                                "=1")))

par(mfrow = c(1, 2))
curve(dnorm, from = -3, to = 3, n = 1000, main = "Normal Probability Density Function")
text(-2, 0.3, expression(f(x) == paste(frac(1, sqrt(2 * pi * sigma^2)),
                                       " ", e^{
                                         frac(-(x - mu)^2, 2 * sigma^2)
                                       })), cex = 1.2)
x <- dnorm(seq(-3, 3, 0.001))
plot(seq(-3, 3, 0.001), cumsum(x)/sum(x), type = "l", col = "blue",
     xlab = "x", main = "Normal Cumulative Distribution Function")

text(-1, 0, expression(phi(x) == paste(frac(1, sqrt(2 * pi)),
                                           " ", integral(e^(-t^2/2) * dt, -infinity, x))), cex = 1.2)





## Now examining the 'quiz' data
hist(d$xb, main = "Pop Quiz Results", xlab = "Number Correct")

## default density plot
plot(density(d$xn))


## plot a histogram and add density plot on top setting a smaller
## bandwidth (.1) than before makes it more 'jagged'
hist(d$xn, breaks = 30, prob = TRUE)
lines(density(d$xn, bw = 0.1))


## bandwidth of .4
hist(d$xn, breaks = 30, prob = TRUE)
lines(density(d$xn, bw = 0.4))


with(d, {
    hist(xb, breaks = 30, prob = TRUE, main = "Histogram of Quiz Scores", xlab = "Number of Questions Correct")
    lines(density(xb, bw = 0.2), lwd = 2, lty = 1)
    lines(density(xb, bw = 1), lwd = 2, lty = 2)
})



with(d, {
    hist(xn, prob = TRUE, main = "Histogram with Density and Rug")
    lines(density(xn, bw = 0.1), lwd = 2, lty = 1)
    lines(density(xn, bw = 0.5), lwd = 2, lty = 2)
    rug(xn)
})


## plot the function from -3 to 3
curve(dnorm, from = -3, to = 3, n = 1000, xlab = "x", ylab = expression(P(x)),
    main = "Normal Probability Density Function")
## add the formula to the plot
text(-2, 0.3, expression(P(x) == paste(frac(1, sqrt(2 * pi * sigma^2)),
    " ", e^{
        frac(-(x - mu)^2, 2 * sigma^2)
    })), cex = 1.2)


## define the function
normCDF <- function(x) {
    x <- dnorm(x)
    cumsum(x)/sum(x)
}
## plot the function from -3 to 3
curve(normCDF, from = -3, to = 3, n = 1000, type = "l", col = "blue",
    xlab = "x", ylab = expression(phi(x)), main = "Standard Normal Cumulative Distribution Function")
## add the formula to the plot
text(-1.5, 0.7, expression(phi(x) == paste(frac(1, sqrt(2 * pi)),
    " ", integral(e^(-t^2/2) * dt, -infinity, x))), cex = 1.2)


## what happens if you only plot one variable?
plot(d$xn)  # index on the x axis


## create some data correlated with xn
set.seed(2)
d$xnr <- 0.4 * d$xn + rnorm(1000, 0, 1)
plot(x = d$xn, y = d$xnr)


plot(x = d$xn, y = d$xnr, pch = 18, col = "blue", xlim = c(-4, 4),
    ylim = c(-2, 2), xlab = "Variable 1", ylab = "Variable 2", main = "The Main Plot Title",
    sub = "A Subtitle", xaxt = "n", yaxt = "n")


## with attend default colour
with(d, plot(x = xn, y = xnr, pch = ifelse(attend == "absent", 18,
    17), col = attend))

## customizing
with(d, plot(x = xn, y = xnr, pch = ifelse(attend == "absent", 18,
    17), col = rainbow(2)[attend]))


## customizing
with(d, plot(x = xn, y = xnr, pch = ifelse(attend == "absent", 18,
    17), col = heat.colors(2)[attend]))


## customizing
with(d, plot(x = xn, y = xnr, pch = ifelse(attend == "absent", 18,
    17), col = ifelse(attend == "absent", "blue", "black")))



## first example
barplot(mean(d$xb), ylab = "Quiz Grade", xlab = "Overall Class")


## mean broken down by attendance
g <- tapply(d$xb, d$attend, FUN = mean)

## now create the bar plot
barplot(g, ylim = c(0, 5))


## cex (character expansion) makes the points larger
plot(x = g, pch = 18, cex = 2, ylim = c(0, 5))


with(d, {
    plot(jitter(as.numeric(attend)), xb, xaxt = "n", col = "blue", xlab = "Attendance",
        ylab = "Quiz Score")
    points(x = c(1, 2), y = g, col = "black", pch = 18, cex = 4)
    axis(1, at = c(1, 2), labels = names(g))
})

#Piecharts
g <- 1:4
names(g) <- letters[1:4]
## How are a, b, c, d growing?
pie(g)
barplot(g)


pie(c(a = 2, b = 4))
barplot(c(a = 2, b = 4))




# 
https://rmarkdown.rstudio.com/lesson-6.html
#
https://github.com/rstudio-education/datascience-box

https://sscc.wisc.edu/sscc/pubs/dwr/dates.html

