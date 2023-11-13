###########################################
## A solution to the AddItUp problem
##
## We ask the user to enter a number
##   and it will continue to pester/ask
##   the user until a number is entered
## Once a number is asked, it asks the
##   user if they would like to enter
##   another number (y or yes is
##   accepted, along with all 
##   permutations of upper/lower case
##   letters). If yes, the program asks
##   the user for another number, again
##   pestering until they enter a valid
##   number. The program outputs a list
##   with the total, the number of 
##   valid numbers entered, and a 
##   vector of the numbers entered.


AddItUp <- function() {
  entered_numbers <- c()
  
  out <- readline("Enter a number: ")
  while(is.na(as.numeric(out) ) ) {
    cat("That is not a number\n")
    out <- readline("Please enter a number: ")
  }
  entered_numbers <- c(entered_numbers, as.numeric(out) )
  
  ques <- readline("Do you wish to enter another number? ")
  while(str_to_lower(ques) %in% c("y", "yes") ) {
    out <- readline("Enter a number: ")
    while(is.na(as.numeric(out) ) ) {
      cat("That is not a number\n")
      out <- readline("Please enter a number: ")
    }
    entered_numbers <- c(entered_numbers, as.numeric(out) )
    ques <- readline("Do you wish to enter another number? ")
  }
  list(Total = sum(entered_numbers),
       NumNumbers = length(entered_numbers),
       Numbers = entered_numbers)
}

AddItUp()
