library(tidyverse)
library(nycflights13)
library(tidyverse)
flights
#arrange()用法。
arrange(flights, year, month, day)
#使用desc()可以根据某一列进行降序排列。
arrange(flights, desc(dep_delay))
#缺失值会排到最后面
df <- tibble(x = c(5, 2, NA))
arrange(df, x)
arrange(df, desc(x))
#练习：如何用arrange()将所有缺失值排到最前面？
#提示：使用is.na
arrange(df, desc(is.na(x)))
#找出延迟最多的航班。找出出发最早的航班。
#延迟最久
arrange(flights, desc(arr_delay))
#出发最早
arrange(flights, dep_delay)
#找出最快的航班
arrange(flights, air_time)
#飞行时间最长的一个航班。
arrange(flights, desc(air_time))[1,]
#飞行时间最短的一个航班。
arrange(flights, air_time)[1,]

#5.4 select()允许我们快速通过变量名对数据集曲子集
#根据名字选择列
select(flights, year, month, day)
#选择year和day之间（包含本身）的所有列
select(flights, year:day)
#选择除year和day（包含本身）之间所有列的其他列
select(flights, -(year:day))
#starts_with("abc"):匹配以“abc"开头的名字。
#ends_with("xyz")匹配以“xyz”结尾的名字。
#contains("ijk")匹配包含“ijk”的名字。
#matches("(.)\\1")选择符合正则表达式的变量。这里是任意包含有重复字符的变量。
#num_range("x", 1:3)匹配x1，x2，x3。










