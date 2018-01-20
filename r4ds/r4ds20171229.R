library(tidyverse)
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut))
?geom_bar
ggplot(data = diamonds) + 
  stat_count(mapping = aes(x = cut))
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, y = ..prop.., group = 1))
ggplot(data = diamonds) + 
  stat_summary(
    mapping = aes(x = cut, y = depth),
    fun.ymin = min,
    fun.ymax = max,
    fun.y = median
  )
?stat_bin
ggplot(diamonds, aes(carat)) +
  geom_histogram()
ggplot(diamonds, aes(carat)) +
  geom_histogram(binwidth = 0.01)
ggplot(diamonds, aes(carat)) +
  geom_histogram(bins = 200)
ggplot(diamonds, aes(price, fill = cut)) +
  geom_histogram(binwidth = 500)
ggplot(diamonds, aes(price, colour = cut)) +
  geom_freqpoly(binwidth = 500)
ggplot(diamonds, aes(price, ..density.., colour = cut)) +
  geom_freqpoly(binwidth = 500)
ggplot(data = diamonds) + 
  geom_col(mapping = aes(y = cut))
?geom_col()
?stat_smooth()
ggplot(mpg, aes(displ, hwy)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE)
ggplot(mpg, aes(displ, hwy)) +
  geom_point() +
  geom_smooth(method = "lm", formula = y ~ splines::bs(x, 3), se = FALSE)
ggplot(mpg, aes(displ, hwy, colour = class)) +
  geom_point() +
  geom_smooth(se = FALSE, method = "lm")
ggplot(mpg, aes(displ, hwy)) +
  geom_point() +
  geom_smooth(span = 0.8) +
  facet_wrap(~drv)
ggplot(data = diamonds)+
  geom_bar(mapping = aes(x = cut, colour = cut))
ggplot(data = diamonds)+
  geom_bar(mapping = aes(x = cut, fill = cut))
ggplot(data = diamonds)+
  geom_bar(mapping = aes(x = cut, fill = clarity))
ggplot(data = diamonds, mapping = aes(x = cut, fill = clarity))+
  geom_bar(alpha = 1/5, position = "identity")
ggplot(data = diamonds, mapping = aes(x = cut, colour = clarity))+
  geom_bar(fill = NA, position = "identity")
ggplot(data = diamonds)+
  geom_bar(mapping = aes(x = cut, fill = clarity), position = "fill")
ggplot(data = diamonds, mapping = aes(x= cut, fill = clarity))+
  geom_bar(position = "fill")
ggplot(data = diamonds)+
  geom_bar(mapping = aes(x = cut, fill = clarity), position = "dodge")
ggplot(data = mpg)+
  geom_point(mapping = aes(x = displ, y = hwy), position = "jitter")
ggplot(data = mpg, mapping = aes(x= displ, y = hwy))+
  geom_jitter()
