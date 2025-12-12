
1
1 + 2
1 + 2 + 3

library(english)

twelvedays <- function(day_number) {

tds <- seq(1:day_number)

total <- 0

for (i in tds) {
  total <- total + sum(tds[1:i])

}

print(paste0('On the ', ordinal(day_number), ' day of christmas I recieved ', total , ' total number of presents'))
}

twelvedays(2)


n * (n+1) * (2n+1) / 6
n * (n+1) * (n+2) / 6

twelevedaysmaths <- function (day_number) {
  total  <- day_number * (day_number+1) * (day_number+2) / 6
  
  print(paste0('On the ', ordinal(day_number), ' day of christmas I recieved ', total , ' total number of presents'))  
}

twelevedaysmaths(12)


twelvedays(7)
twelevedaysmaths(7)



twelvedays_culm <- function(day_number) {

  #input validation
  if (!length(day_number) == 1 ||day_number < 1 || day_number > 12 || !is.integer(day_number)  ){
    stop("Input needs to be a single integer between 1 & 12")
  }
  
  total <- sum(cumsum(1:day_number))
  print(paste0('On the ', ordinal(day_number), ' day of christmas I recieved ', total , ' total number of presents'))  

}






twelvedays_culm <- function(day_number) {
  second_day_number <- 0
  if (day_number > 365) {second_day_number <- day_number - 365} 
  
  if (day_number > 12) {day_number <- 12}
  
  total_one <- sum(cumsum(1:day_number)) + day_number
  total_two <- sum(cumsum(0:second_day_number)) 
  
  print(paste0('In the first year: On the ', ordinal(day_number), ' day of christmas I recieved ', total_one , ' total number of presents'))  
  
  print(paste0('In the second year: On the ', ordinal(day_number), ' day of christmas I recieved ', total_two , ' total number of presents'))  
  
}





