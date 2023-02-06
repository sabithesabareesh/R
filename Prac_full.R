a = c(1,2)
b = c("One","Two")

a
b

df = data.frame(a,b)
df

View(df)
str(df)

df[,]

data() #collection of data

install.packages("tidyverse")
library(tidyverse)

library(dplyr)
library(ggplot2)

starwars %>% filter(height > 150 & mass < 200 ) %>% mutate(heightinmeters = height/100) %>% select(heightinmeters,mass) %>% arrange(mass) %>%  plot()

View(msleep)
glimpse(msleep)
str(msleep)
head(msleep)
tail(msleep)
class(msleep)
length(msleep)
nrow(msleep)
ncol(msleep)
msleep[1,]
names(msleep)
unique(msleep$name)

missing <- !complete.cases(msleep)
missing

msleep[missing,]

View(starwars)

starwars %>% dplyr::select(name,height,mass) %>% View()
starwars %>% dplyr::select(1:3)
starwars %>% dplyr::select(ends_with("color")) %>%  View()
starwars %>%  rename("names" = "name")

class(starwars$hair_color)

starwars$hair_color = as.factor(starwars$hair_color)
class(starwars$hair_color)
View(starwars)

starwars$hair_color = as.character(starwars$hair_color)
View(starwars)


df = starwars
df$sex = as.factor(df$sex)
levels(df$sex)
df = df %>% mutate(sex = factor(sex,levels = c("male","female","hermaphroditic", "none")))
levels(df$sex)

mean(starwars$height)
mean(starwars$height, na.rm = TRUE)

a = c(1,2)
b = c("One","Two")

a
b

df = data.frame(a,b)
df

df %>% distinct() #remove duplicates


#             MANIPULTING

install.packages("gapminder")
library(gapminder)

data = dplyr::select(gapminder,country,year,lifeExp)
View(data)

starwars %>% drop_na(vore) %>% View(starwars)

plot(pressure)
library(dplyr)
install.packages("tidyr")
library(tidyr)
library(ggplot2)
View(starwars)

# Visualiaztion

ggplot(data=starwars,aes(x=height,y=mass,color=sex,fill=sex))+ geom_smooth() + geom_point(size=3,alpha=1) + theme_bw() + facet_wrap(~sex)


# TEST

library(gapminder)
View(gapminder)
t_test_plot

gapminder %>% 
  filter(continent %in% c("Africa", "Europe")) %>% 
  t.test(lifeExp ~ continent,data=.) %>% plot()

gapminder %>% 
  filter(continent %in% c("Africa", "Europe")) %>% 
  aov(lifeExp ~ continent,data=.) %>%  TukeyHSD() %>% plot()
