# fa23_hw3_AddItUp

Fall 2023 STA 308 HW3 - Solution Set

This repo includes two implementations, (AddItUp_a_solution.R) and (AddItUp_modularized.R) of the `AddItUp()` function assigned from Homework #3. The description of the function from the assignment is below.

## Directions

Write a function in R called `AddItUp()`.  This function will ask the user to input a number. The user will then be prompted with a question as to whether they wish to enter in another number.  If the answer is yes, then the program will prompt the user for another number. This process continues until the user specifies they do not wish to enter in any more numbers. At that point, the program will output the numbers entered by the user and their summation.

### Specifics of the function

Your function does not require any input parameters.

The function must do the following:

* Check to make sure the user specified numbers are numeric values!
* If the user does not enter a valid number when asked, the function will continue to ask until the user does so.
* The function will ask the user if they wish to enter another number!
* Any combination of "yes", "yeS", "yEs", "Yes", "yES", "YEs", "YES", "y", and "Y" are acceptable answers to require another number, 
* If the user says yes, the program will ask the user to input a number following the previous bullet point (making sure the entered value is a valid number).
* The function must return a list() with the following (named) elements:

   + A valued called `Total` that reports the total (summation) of all the numbers entered.
   + A value called `NumNumbers` that reports the number of numbers the user entered. 
   + A vector called `Numbers` reporting the numbers the user entered.
