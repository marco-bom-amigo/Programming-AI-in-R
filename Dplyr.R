library(magrittr)

tabela <- data.frame()
tabela <- mutate( tabela
                  , col1 = 'formula'
                  , col2 = 'formula'
)

s2 <- mutate(dplyr::starwars, imc = mass / ((height / 100) ^ 2) )

dplyr::starwars %>%
  filter(species == "Droid")

dplyr::starwars %>%
  filter(species == "Droid") %>%
  View()

dplyr::starwars %>%
  select(name, dplyr::ends_with("color"))

dplyr::starwars %>%
  mutate(name, imc = mass / ((height / 100) ^ 2)) %>%
  select(name:mass, imc)

dplyr::starwars %>%
  arrange(desc(mass))

dplyr::rename( dplyr::starwars
             , nome   = name
             , altura = height
             , massa  = mass
             ) -> starwarsNew

dplyr::starwars %>%
  group_by(species) %>%
  summarise(j = n())

dplyr::starwars %>%
  group_by(species) %>%
  summarise( j = n()
           , mass = mean(mass, na.rm = T)
           ) %>%
  filter(j > 1)

