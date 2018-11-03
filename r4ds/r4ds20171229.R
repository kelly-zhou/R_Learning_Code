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
library(tidyverse)
ggplot(data = diamonds)+
  geom_bar(mapping = aes(x = cut, colour = cut))
ggplot(data = diamonds)+
  geom_bar(mapping = aes(x = cut, fill = cut))
ggplot(data = diamonds)+
  geom_bar(mapping = aes(x = cut, fill = clarity))
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), position = "jitter")
#2018/07/19
ggplot(data = mpg, mapping = aes(x = class, y = hwy)) +
  geom_boxplot()
#X,Y轴调换。
ggplot(data = mpg, mapping = aes(x = class, y = hwy)) +
  geom_boxplot() +
  coord_flip()
           1/200
  1/200*30
  (59 + 73 + 2) / 3
  sin(pi / 2)
  x <- 3 * 4
  x
  this_is_a_really_long_name <- 2.5
  this_is_a_really_long_name
  this_is_a_really_long_name <- 3.5
  this_is_a_really_long_name
  r_rocks <- 2 ^ 3
  r_rocks
  r_rock
  seq()
  seq(1, 10)
  x <- "hello world"
  x
  #赋值Y，包含1至10中五个数数列。
  y <- seq(1, 10, length.out = 5)
  y
  #直接加括号表示显示
  (y <- seq(1, 10, length.out = 5))
  my_variable <- 10
my_variable
ggplot(data = mpg, fliter(mpg, cyl = 8)) + 
  geom_point(mapping = aes(x = displ, y = hwy))
seq(along.with= 1)
seq_along(2)
seq_along(3)
seq_len(3)
#()print to screen
(y <- seq(1, 10, length.out = 5))
my_variable <- 10
my_variable
x <- 3 * 4
x
this_is_a_really_long_name <- 2.5
this_is_a_really_long_name <- 3.5
r_rocks <- 2 ^ 3
r_rock
R_rocks
my_variable <- 10
my_var1able
library(tidyverse)
ggplot(data = mpg)
  geom_point(mapping = aes(x = displ, y = hwy))
library(tidyverse)
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))

fliter(mpg, cyl = 8)
filter(mpg, cyl = 8)
filter(mpg, cyl == 8)

filter(diamond, carat > 3)
filter(diamonds, carat > 3)

#chapter 5
library(nycflights13)
library(tidyverse)
#flights
nycflights13::flights
?flights
flights
#show the whole dataset
View(flights)

#filter()
filter(flights, month == 1, day == 1)
flights
#select all flights on Jan 1st with:
filter(flights, month == 1, day == 1)

#save the results
jan1 <- filter(flights, month == 1, day == 1)

#print out the results by using ()
(dec25 <- filter(flights, month == 12, day == 25))

sqrt(2) ^ 2 == 2
1 / 49 ^ 49 == 1
# (they obviously can’t store an infinite number of digits!) so remember that every number you see is an approximation. Instead of relying on ==, use near():
near(sqrt(2)^ 2, 2)
near(1 / 49 * 49, 1)
filter(flights, month == 11 | month == 12)
filter(flights, month == 11 | 12)
#x %in% y. This will select every row where x is one of the values in y.
nov_dec <- filter(flights, month %in% c(11, 12))
#filter(flights, month %in% c(11, 12)) equals to filter(flights, month == 11 | month == 12)

filter(flights, !(arr_delay > 120 | dep_delay > 120))
filter(flights, arr_delay <= 120, dep_delay <= 120)

#NA is contagious
NA > 5
10 == NA
NA + 10
NA / 2
NA = NA

#determine if a value is missing, use "is.na()"
is.na(x)
is. na(x)
is.na(x)
is . na(x)

#filter() only includes rows where the condition is TRUE; it excludes both FALSE and NA values. If you want to preserve missing values, ask for them explicitly:
#允许筛选的X为NA
df <- tibble(x = c(1, NA, 3))
filter(df, x > 1)
filter(df, is.na(x) | x > 1)

filter(flights, arr_delay >= 120)
filter(flights, dest %in% c(IAH, HOU))
filter(filghts, dest == IAH)
#Flew to Houston (IAH or HOU)
flights
(filter(flights, dest == "IAH" | dest == "HOU"))
#Were operated by United, American, or Delta
filter(flights, carrier == "UA" | carrier == "DL")
filter(flights, carrier %in% c("UA", "DL"))
#Departed in summer (July, August, and September)
filter(flights, month %in% c(7, 8, 9))
#Arrived more than two hours late, but didn’t leave late
filter(flights, arr_delay >= 120 & dep_delay == 0)
#Were delayed by at least an hour, but made up over 30 minutes in flight
filter(flights, dep_delay >= 60, arr_delay <= dep_delay - 30)
six_q <- filter(flights, dep_delay >= 60, arr_delay <= dep_delay - 30)
#Departed between midnight and 6am (inclusive)
filter(flights, dep_time >= 000 & dep_time <= 600)
sev_q <- filter(flights, dep_time >= 000 & dep_time <= 600)
?between
#Departed between midnight and 6am (inclusive)
#between(x, left, right)
filter(flights, between(dep_time, 000, 600))
filter(flights, is.na)

#20180813
filter(flights, is.na)
#How many flights have a missing dep_time
#is.na(x)
filter(flights, is.na(dep_time))

NA ^ 0
NA | TRUE
FALSE & NA
NA * 0
?NA
is.na(NA)
is.na <- 300

# 5.3 arrange rows with arrange()排序
#按年月日对航班进行排序
arrange(flights, year, month, day)
#Use desc() to re-order by a column in descending order降序
#desc(x)
arrange(flights, desc(dep_delay))
df <- tibble(x = c(5, 2, NA))
#Missing values are always sorted at the end:
arrange(df, x)
arrange(df, desc(x))
arrange(df, is.na(x))
arrange(flights, is.na(arr_delay))
library(tidyverse)
is.na(x)
#arrange()将缺失值排到最前面，提示用is.na()
df <- tibble(x = c(5, 2, NA))
arrange(df, x)
arrange(df, desc(x))
arrange(df, is.na(x))
arrange(df, desc(is.na(x)))
#1
#找出延时最多的航班，即arr_delay值最大
library(nycflights13)
library(tidyverse)
flights
arrange(flights, desc(arr_delay))
#2
#出发最早的航班，即dep_delay最小
arrange(flights, dep_delay)
#3
#最快的航班，即飞行时间最少
arrange(flights, air_time)
#4
#飞行时间最长的一个航班[1,]
arrange(flights, desc(air_time))[1,]
#飞行距离最远的一个航班[1,]
arrange(flights, desc(distance))[1,]
#飞行时间最短的一个航班[1,]
arrange(flights, air_time)[1,]

#5.4使用select()选择列
#select()允许我们快速通过变量名对数据集取子集。
#select columns by name
select(flights, year, month, day)
#选择year到day的多个列
select(flights, year:day)
#选择除year到day（含）之外的列-()
select(flights, -(year:day))
#有许多帮助函数与select()使用
#start_with("abc"):匹配以"abc"开头的名字
#ends_with("xyz"):匹配以"xyz"结尾的名字
#contains("ijk")：匹配包含"ijk"的名字
#matches("(.)\\1")选择符合正则表达式的变量。这里是任意包含有重复字符的变量。
#num_range("x", 1:3)匹配x1, x2, x3。
?select
#select() keeps only the variables you mention;rename() keeps all variables.
#rename()重命名变量，且保持其他变量不变。
#将tail_num重命名为tailnum
rename(flights, tail_num = tailnum)
#select()与everything()帮助函数联用，可使相关变量列移到数据框开始（左侧）。
select(flights, time_hour, air_time, everything())
#1
#基本select()使用方法，使用变量名字、：、—（）、%in%等。
#2
#select()函数里面多次包含同一变量时，只会选择一次
select(flights, year, month)
select(flights, year, year, month)
select(flights, year, year)
#3
#one_of()函数的用法。
#赋值向量var
var <- c(
  "year", "month", "day", "dep_delay", "arr_delay"
)
select(flights, one_of(var))
#这种用法可以有效地按数据情况进行选择而不会报错。

#4
select(flights, contains("TIME"))
#函数并未找到“TIME”列，所以输出了所有含有该字符的列。
#想要更改，我们要查看该函数的参数
args(contains)
select(flights, contains("arr_"))

#使用mutate()添加新变量
#mutate()函数通常将新增变量放在数据集的最后面。
#快速查看完整数据集使用函数View()
View(flights)
#创建一个小一些的数据集
flights_sml <- select(flights,
                      year:day, 
                      ends_with("delay"), 
                      distance, 
                      air_time
                      )
#使用mutate()添加两个变量gain, speed
mutate(flights_sml,
       gain = dep_delay - arr_delay,
       speed = distance / air_time * 60
       )
#数据集现在有9个变量
#再添加一个gain_per_hour变量
mutate(flights_sml,
       gain = dep_delay - arr_delay,
       hours = air_time / 60,
       gain_per_hour = gain / hours
       )
#如果只想最后保留新变量，用transmute()
transmute(flights,
          gain = dep_delay - arr_delay,
          hours = air_time / 60,
          gain_per_hour = gain / hours
          )
#有用的创造函数
#算数操作符+，-，*，/,^，本质为向量化的函数，遵循“循环补齐”规则。如果一个参数比另一个参数短，它会自动扩展为后者同样的长度。比如air_time/60,hours*60等等。
#模运算（%/%和%%），前者整除，后者取余。
#举例
transmute(flights,
          dep_time,
          hour = dep_time %/% 100,
          minute = dep_time %% 100
          )
#对数，log(),log2()和log10()
#位移量/偏移量，lead()和lag()允许前移或后移变量的值。
(x <-1:10)
lag(x)
lead(x)
#累积计算，R提供了累积和、累积积、和累积最小值、和累积最大值：cumsum(),cumprod(),cummin(),cummax().
#dplyr提供勒cummean()用于计算累积平均值。如果想要进行滚动累积计算，可以尝试RcppRoll包。
x
cumsum(x)
cummean(x)
cumprod(x)
cummin(x)
cummax(x)
#逻辑比较，<,<=,>,>=,!=
#排序rank,存在很多rank函数，从min_rank()使用开始，它可以实现最常见的rank。使用desc()进行辅助可以给最大值最小的rank。
y <- c(1,2,2,NA,3,4)
min_rank(y)
min_rank(desc(y))
#row_number(),dense_rank(),percent_rank(),cume_dist()和ntile().
row_number(y)
dense_rank(y)
percent_rank(y)
cume_dist(y)
ntile(y, 2)
?row_number
ntile(runif(100), 10)
?dense_rank
557 %/% 100
#通过dep_time, sched_dep_time映射循环计算，得出新变量delay_time，与dep_delay一致。
fn_time <- function(x){
  h <- x %/% 100
  m <- x %% 100
  h * 60 + m 
}
fn_time(630) - fn_time(557)
flights %>% 
  filter(!is.na(dep_time)) %>% 
  filter(!is.na(sched_dep_time)) %>% 
  mutate(
    delay_time = map2_dbl(
      .x = dep_time,
      .y = sched_dep_time,
      .f = function(.x, .y){
        fn_time(.x) - fn_time(.y)
      }
    )
  ) %>% 
  select(dep_time, sched_dep_time, delay_time)
##通过dep_time, sched_dep_time映射循环计算，得出新变量delay_time，与dep_delay一致。
flights$dep_time
flights$dep_time[na.omit(flights$dep_time)] -> dt
sapply(dt, fn_time)
flights %>% 
  filter(!is.na(dep_time)) %>% 
  filter(!is.na(sched_dep_time)) %>%
  mutate(
    delay_time = sapply(dep_time, fn_time) - sapply(sched_dep_time, fn_time)
  )%>%
select(dep_time, sched_dep_time, delay_time)
?min_rank
1:3 + 1:10
#使用summarize()计算汇总值
#summarize()将一个数据框塌缩为单个行
summarize(flights, delay = mean(dep_delay, na.rm = TRUE))
#summarize()要与group_by()配对使用，不然显得没什么用
#按日期分组，计算每个日期平均延期
by_day <- group_by(flights, year, month, day)
summarize(by_day, delay = mean(dep_delay, na.rm = TRUE))
#group_by()与summarize()联合使用是我们最常用的dplyr工具：分组汇总。

#pipe管道
#使用pipe整合多个操作
#每个位置距离与平均航班延迟的关系
by_dest <- group_by(flights, dest)
delay <- summarise(by_dest,
                   count = n(),
                   dist = mean(distance, na.rm = TRUE),
                   delay = mean(arr_delay, na.rm = TRUE))
delay <- filter(delay, count > 20, dest != "HNL")
ggplot(data = delay, mapping = aes(x = dist, y = delay)) +
  geom_point(aes(size=count), alpha = 1/3)+
  geom_smooth(se = FALSE)
#大约750英里之前，距离增大，延误时间增加；随后减少。
#na.rm去除缺失值。
#使用pipe，cmd+shift+m,增加效率 %>% 
delays <- flights %>% 
  group_by(dest) %>% 
  summarise(
    count = n(),
    dist = mean(distance, na.rm =TRUE),
    delay = mean(arr_delay, na.rm = TRUE)
  ) %>% 
  filter(count > 20, dest != "HNL")

#缺失值
flights %>% 
  group_by(dest) %>% 
  summarise(
    count = n(),
    dist = mean(distance),
    delay = mean(arr_delay)
  ) %>% 
  filter(count > 20, dest != "HNL")
#如果输入不去除缺失值，结果必然是缺失值。
flights %>% 
  group_by(year, month, day) %>% 
  summarise(mean = mean(dep_delay, na.rm = TRUE))
#上例中，缺失值代表取消的航班，所以解决这样问题的办法就是首先移除取消的航班。
not_cancelled <- flights %>% 
  filter(!is.na(dep_delay), !is.na(arr_delay))
not_cancelled %>% 
  group_by(year, month, day) %>% 
  summarise(mean = mean(dep_delay))

#计数。无论何时进行汇总，包含计数n()或者非缺失值计数sum(!is.na(x))总是一个好想法。
delays <- not_cancelled %>%
  group_by(tailnum) %>%
  summarize(
    delay = mean(arr_delay)
  )

ggplot(data = delays, mapping = aes(x = delay)) + 
  geom_freqpoly(binwidth = 10)

delays <- not_cancelled %>%
  group_by(tailnum) %>%
  summarize(
    delay = mean(arr_delay, na.rm = TRUE),
    n = n()
  )

ggplot(data = delays, mapping = aes(x = n, y = delay)) + 
  geom_point(alpha = 1/10)

delays %>% 
  filter(n > 25) %>% 
  ggplot(mapping = aes(x = n, y = delay))+
  geom_point(alpha = 1/10)

#选手技能和击球机会成正相关关系。这是因为队伍可以控制谁可以上场，很显然他们都会选择自己最棒的选手：
batting <- as.tibble(Lahman::Batting)

batters <- batting %>% 
  group_by(playerID) %>% 
  summarise(
    ba = sum(H, na.rm = TRUE) / sum(AB, na.rm = TRUE),
    ab = sum(AB, na.rm = TRUE)
  )

batters %>% 
  filter(ab > 100) %>% 
  ggplot(mapping = aes(x = ab, y = ba))+
  geom_point()+
  geom_smooth(se = FALSE)

#有用的汇总函数
#mean()函数求取平均值（总和除以长度）
#median()函数求取中位数
not_cancelled %>% 
  group_by(year, month, day) %>% 
  summarise(
    #平均延时
    avg_delay1 = mean(arr_delay),
    #平均正延时
    avg_delay2 = mean(arr_delay[arr_delay > 0])
  )
#平均正延时剔除提前到达航班。

#分布度量sd(x),IQR(x),mad(x)
#sd(x)计算均方差（也称为标准差或简写sd),是分布的标准度量；
#IQR(x)计算四分位数极差；
#mad(x)计算中位数绝对离差（存在离群点时，是更稳定的IQR值等价物。
#为何某些目的地航班的距离比其他存在更多变异
not_cancelled %>% 
  group_by(dest) %>% 
  summarise(distance_sd = sd(distance)) %>% 
  arrange(desc(distance_sd))

#等级度量min(x),quantile(x, 0.25),max(x)
#分位数是中位数更通用化的一种形式。比如，quantile(x, 0.25)会找到x中刚好大于25%的值而小于7%的那个数
#每天第一班飞机和最后一班飞机是什么时候？
not_cancelled %>% 
  group_by(year, month, day) %>% 
  summarise(
    first = min(dep_time),
    last = max(dep_time)
  )










