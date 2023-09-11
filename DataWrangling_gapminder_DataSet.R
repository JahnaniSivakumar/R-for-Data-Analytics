# Loading the gapminder package - this has the dataset
library(gapminder)

# Loading the dplyr package
library(dplyr)

# Looking at the gapminder dataset
gapminder

# Filtering the gapminder dataset for the year 1957
gapminder %>%
  filter(year == 1957)

# Filtering for China in 2002
gapminder %>%
  filter(country == "China" , year == 2002)

# Sorting in ascending order of lifeExp
gapminder %>%
  arrange(lifeExp)


# Sorting in descending order of lifeExp
gapminder %>%
  arrange(desc(lifeExp))

# Filtering for the year 1957, then arranging in descending order of population
gapminder %>%
  filter(year == 1957) %>%
  arrange(desc(pop))


# Using mutate to change lifeExp from years to be in months
gapminder %>%
  mutate(lifeExp = 12 * lifeExp)

# Using mutate to create a new column called lifeExpMonths
gapminder %>%
  mutate (lifeExpMonths = 12 * lifeExp)

# Filtering, mutating, and arranging the gapminder dataset
gapminder %>%
  filter(year == 2007) %>%
  mutate(lifeExpMonths = 12 * lifeExp) %>%
  arrange(desc(lifeExpMonths))