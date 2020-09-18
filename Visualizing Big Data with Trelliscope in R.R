# Visualizing summaries
library(gapminder)

# Faceting with TrelliscopeJS
# This used when the facets have many labels

library(trelliscopejs)
library(ggplot2)


# Too many facets
ggplot(gapminder, aes(year, lifeExp)) +
  geom_line() +
  facet_wrap(~ country + continent)

# In this kind of scenarios, trelliscopejs comes handy
ggplot(gapminder, aes(year,lifeExp)) +
  geom_line() +
  # Facet on country and continent
  facet_trelliscope(~ country + continent)




# Example 2:
ggplot(gapminder, aes(year, lifeExp)) +
  geom_line() +
  facet_trelliscope(~ country + continent,
                    name = "lifeExp_by_country",
                    desc = "Life expectancy vs. year per country",
                    nrow = 1, ncol = 2, path = "C:/Users/DELL PC/Desktop/Practice Projects R/Big Data with R/Understanding-Big-Data-In-R"
  )

# library(htmlwidgets)
# 
# saveWidget(widget=p, file="test.html",selfcontained = FALSE)


# Paging:
# Labels
# Sorting
# Filter

# Adding plotly features:

ggplot(gapminder, aes(year, lifeExp)) +
  geom_line() +
  facet_trelliscope(~ country + continent,
                    name = "lifeExp_by_country",
                    desc = "Life expectancy vs. year per country",
                    nrow = 1, ncol = 2, path = "C:/Users/DELL PC/Desktop/Practice Projects R/Big Data with R/Understanding-Big-Data-In-R",
                    as_plotly = TRUE
  )



# Adding context based automatic congnostics:
ggplot(gapminder, aes(year, lifeExp)) +
  geom_line() +
  facet_trelliscope(~ country + continent,
                    name = "lifeExp_by_country",
                    desc = "Life expectancy vs. year per country",
                    nrow = 1, ncol = 2, path = "C:/Users/DELL PC/Desktop/Practice Projects R/Big Data with R/Understanding-Big-Data-In-R",
                    auto_cog = TRUE
  )



# See the congnostic in detail and axes
