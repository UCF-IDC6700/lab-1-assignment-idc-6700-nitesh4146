# Lab 1 Assignment
Submitted by: Nitish Gupta  
UCFID: 4181058
***

1. Install R and R-Studio:
  * http://www.r-project.org   
    <img src="./img/r_install1.png" alt="drawing" width="400"/>
  * http://www.rstudio.com/products/RStudio/#Desk  
    <img src="./img/r_install2.png" alt="drawing" width="400"/>

  
2. Get the Data:
  * Inspect the data set for the lab (lab1.dat)
    * Are the column headers included in the file?  
      > Yes, the column headers are included in the data file  

      <img src="./img/211.png" alt="drawing" width="600"/>`
    * How are data columns separated?
      > Yes, the columns are separated by comma (,)
    * Are there comments in the data?
      > No, there are no comments in the data  

      <img src="./img/213.png" alt="drawing" width="400"/>

  * Load that data file into a data frame in R.  Pay special attention to the following parameters of read.table:
    * header=True
    * sep=","
    * comment.char="" (or "#" - but it won't matter)
			
3. Peruse the Data:
  * Print the names of the variables in the data table (hint:  ?colnames)
  * Provide a global summary of the data table (hint: ?summary)
  
4. Investigate the WineType variable:
  * List all the values of the WineType variable in the data table
  * Compute the levels of that factor (hint: ?levels)
  * Compute the number of records of each level (hint: ?table)
  
5. Investigate the ColorIntensity variable:
  * Compute mean of the ColorIntensity variable  (hint:  ?mean)
  * Compute variance of the ColorIntensity variable  (hint: ?var)
  * Compute standard deviation of the ColorIntensity variable
  * Compute 95% confidence interval of the ColorIntensity variable
  (hint: ?t.test)
  
6. Investigate the Hue variable for WineType Class1:
  * Compute variance of the Hue variable across only the records with WineType=Class1 (hint: ?subset)
  * Compute standard deviation of the Hue variable across only the records with WineType=Class1
  * Compute 95% confidence interval of the Hue variable across
  * only the records with WineType=Class1
		
7. Perform simple math operations:
  * Subtract 120 from 536
  * Multiply 3 and 7
  * Divide 12 by 3
  * Take the base 2 logarithm of 128
  * Compute nine cubed
  
8. Perform math operations on data columns:
  * Compute the vector resulting from a pair-wise multiplication of all Hue variable values with ColorIntensity values
  * Sum the resulting vector from the previous step (hint:  ?sum)
  
9. Drawing random numbers:
  * Draw 10 numbers from the uniform distribution, between 0.0 and 10.0 (hint:  ?runif)
  * Draw 10 numbers from the Normal distribution, mean of 1.0, standard deviation of 0.3  (hint:  ?rnorm)
  * Compute PDF result for the standard Normal distribution at the value 0.12 (hint: ?dnorm)
  * Compute the probability that a value drawn from the standard
  * Normal distribution will be less than 1.96  (hint:  ?pnorm)
  
10. Simulation:
  * Perform a Monte Carlo sampling simulation of customers arriving at a queue over the period of 10 minutes, assuming this process is governed by the Poisson distribution and that 2 customers arrive per minute on average (hint:  ?rpois)
  * Compute the total number of people standing in line at each minute for one such simulation?  (hint: ?cumsum)
  * Enter the R code below, which defines a function.  Call that function using n=10, then again using n=10000, then again using n=10000000.  What does the function estimate?

```R
estimate <- function(n) {
  return (4*sum((runif(n)^2 + runif(n)^2) < 1)/n)
}
````
