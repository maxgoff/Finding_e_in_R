## see my blog for discussion of this small project - http://www.bigsmartdata.com/finding-e-in-r/
eViaRatio <- function(n){
  f = 0;
  fn = 1;
  fp = 1;
  xVec = integer(1);
  yVec = double(1.0);
  zVec = integer(1)
  previ = 1;
  prevj = 1;
  j = 1;
 
  
  for(i in 1:n){
    f = f + 1/i  # collect the fractions
    intg = f - (f %% 1) # take only the whole integer part
     
    if( intg > fn ){  # if we have exceeded the next whole integer value, save state and print out the ratio
      #if( i > 1 && previ > 1)
      
      print(paste(intg, (i)/previ,i))
      j = i - previ
      print(paste("Integer:", intg,  "j:", j, " prevj:", prevj, " ratio:", j / prevj))
      print(paste("Integer:", intg,  "i:", i, " previ:", previ, " ratio:", i / previ))
      print(paste("Integer:", intg,  "i/j:", i/j, " previ/prevj:", previ/prevj))
      #print(paste(intg, j/prevj))
      #xVec = c(xVec, intg)
      #yVec = c(yVec, (j/prevj))
      #zVec = c(zVec, i)
      #previ = i
      
      prevj = j
      fn = intg
      previ = i
    }
  }
}

sumfunc <- function(n){
  retval = 0;
  for( i in 1:n){
    retval = retval + 1/i
  }
  return(retval)
}
