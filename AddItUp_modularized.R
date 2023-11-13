########################################
## Below is a modularized version
##  of a solution for AddItUp()

#######################################
## getNumberFromUser()
##
## This function will ask the user for a number
##   it will continue to ask them until
##   they enter a valid number!
## The function returns the number entered

getNumberFromUser <- function() {
  out <- readline("Enter a number: ")
  while(is.na(suppressWarnings(as.numeric(out) ) ) ) {
    cat("That is not a number\n")
    out <- readline("Please enter a number: ")
  }
  suppressWarnings(as.numeric(out) )
}

#######################################
## anotherNumberFromUser()
##
## This function will ask the user if they
##    with to enter another number
##    It will continue to ask them
##    until they enter a valid number!
## The function returns a TRUE or FALSE
##    on whether the user wishes 
##    to enter another number

anotherNumberFromUser <- function() {
  ques <- readline("Do you wish to enter another number? (yes/no) ")
  while(!str_to_lower(ques) %in% c("y", "yes", "n", "no")) {
    cat("That is not a valid answer\n")
    ques <- readline("Do you wish to enter another number? (yes/no) ")
  }
  if(str_to_lower(ques) %in% c("y", "yes")) 
    TRUE
  else
    FALSE
}

#####################################
## AddItUp()
## 
## Now the main "driver" function that uses 
##   the other two functions
AddItUp <- function(){
  numbers <- getNumberFromUser()
  while(anotherNumberFromUser() ) {
    numbers <- c(numbers, getNumberFromUser() )
  }
  list(Total = sum(numbers),
       NumNumbers = length(numbers),
       Numbers = numbers)
}

AddItUp()

