library(tidyverse)

diamonds <- diamonds

#1 Visualizing Distribution
ggplot(data = diamonds) + geom_bar(mapping = aes(x = cut))
ggplot(data = diamonds) + geom_histogram(mapping = aes(x = carat), binwidth = 0.5)

# Question 1: How do you visualize distribution of color? 
ggplot(data = diamonds) + geom_bar(mapping = aes(x = _ _ _ _ _))

# Question 2: How do you visualize distribution of price?
ggplot(data = diamonds) + geom_histogram(mapping = aes(x = _ _ _ _ _ ), binwidth = 0.5)

#2 Missing / Unwanted Value - Drop diamonds2 <- diamonds %>% filter(between(y, 3, 20))
diamonds2 <- diamonds %>% filter(between(y, 3, 20))
diamonds2 <- diamonds %>% mutate(y = ifelse(y < 3 | y > 20, NA, y))

# Question 3: How do you remove or drop diamonds of x below 1?
diamonds3 <- diamonds %>% filter( _ > _ )

# Question 4: How do you replace variable diamonds x below 1 with NA?
diamonds3 <- diamonds %>% mutate(x = ifelse(_ < _, NA, _))

#3 A categorical and continuous variables 
ggplot(data = diamonds, mapping = aes(x = price)) + geom_freqpoly(mapping = aes(colour = cut), binwidth = 500)

# Question 5: Change the variable categorical from cut to clarity and continuous from price to carat. How do you find it?  

#4 Two categorical variables 
ggplot(data = diamonds) + geom_count(mapping = aes(x = cut, y = color))

# Question 6: Change the variable categorical above into x=clarity and y=color!

#5 Two continuous variables 
ggplot(data = diamonds) + geom_point(mapping = aes(x = carat, y = price))

# Question 7: Change the variable x= color, y= price! 