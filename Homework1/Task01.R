#a. Create and store a sequence of values from 5 to −11 that progresses
#in steps of 0.3.

vec_a <- seq(from = 5, to = -11, by = -0.3)





#b. Overwrite the object from (a) using the same sequence with the order reversed.

vec_a <- rev(vec_a)


#c. Repeat the vector c(-1,3,-5,7,-9) twice, with each element
#repeated 10 times, and store the result. Display the result sorted
#from largest to smallest.

vec_c <- c(-1, 3, -5, 7, -9)
vec_c_repeat <- rep(vec_c, each = 10)
vec_c_sorted <- sort(vec_c_repeat, decreasing = TRUE)



#d. Create and store a vector that contains, in any configuration, the
#following:
  #i. A sequence of integers from 6 to 12 (inclusive)
  #ii. A threefold repetition of the value 5.3
  #iii. The number −3
  #iv. A sequence of nine values starting at 102 and ending at the
#number that is the total length of the vector created in (c)
vec_d <- c(seq(from = 6, to = 12), rep(5.3, times = 3), -3, seq(from = 102, to = length(vec_c_repeat), length.out = 9))



#e. Confirm that the length of the vector created in (d) is 20.
length(vec_d) == 20

