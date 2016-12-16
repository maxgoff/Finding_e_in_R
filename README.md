# Finding e in R

A little project in R demonstrating the emergence of e from a simple ratio of iterations of a function that sums values over an infinite series.

See http://www.bigsmartdata.com/finding-e-in-r/ for my blog entry on this project.
To execute, download the src file, import to RStudio, run the function:
   eViaRatio(.Machine$integer.max)
   
And watch as the values of i/previ and j/prevj get increasingly closer to the value of e (exp(1) in R).
