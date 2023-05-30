# a. Create and store a vector that contains the following, in this order:
  #– A sequence of length 5 from 3 to 6 (inclusive)
  #– A twofold repetition of the vector c(2,-5.1,-33)
  #– The value 7
  # 42 + 2

vec_a <- c(seq(3,6, length.out =5), rep(c(2,-5.1,-33), time=2), 7, 42+2)




#b. Extract the first and last elements of your vector from (a), storing 
# them as a new object.
first_last  <-  c(vec_a[1], vec_a[length(vec_a)])
#first_last



#c. Store as a third object the values returned by omitting the first
#and last values of your vector from (a).
omit_first_last <- vec_a[-c(vec_a[1], length(vec_a))]
omit_first_last

#d. Use only (b) and (c) to reconstruct (a).
vec_reconstruct <- c(first_last,omit_first_last, last = vec_a[length(vec_a)] )
vec_reconstruct




#e. Overwrite (a) with the same values sorted from smallest to largest.
vec_a <-  sort(vec_a)
vec_a



#f. Use the colon operator as an index vector to reverse the order
# of (e), and confirm this is identical to using sort on (e) with decreasing=TRUE.
vec_a_rev <- vec_a[length(vec_a):1]
identical(vec_a_rev, sort(vec_a, decreasing = TRUE))
identical



#g. Create a vector from (c) that repeats the third element of (c)
#three times, the sixth element four times, and the last element once.
vec_g <- c(rep(omit_first_last[3], times=3), rep(omit_first_last[6], times=4), omit_first_last[length(omit_first_last)])
vec_g


#h. Create a new vector as a copy of (e) by assigning (e) as is to a
#newly named object. Using this new copy of (e), overwrite the
#first, the fifth to the seventh (inclusive), and the last element with
#the values 99 to 95 (inclusive), respectively.

vec_g <- vec_a
vec_g[c(1, 5:7, length(vec_a))] <- c(99, 98, 97, 96, 95)
  

