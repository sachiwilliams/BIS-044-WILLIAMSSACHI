library(here)
library(tidyverse)

<<<<<<< Updated upstream
df <- read_csv(here("data", "PRESIDENT_precinct_general (1).zip"))
=======
df <- read_csv(here("Data", "PRESIDENT_precinct_general (1).zip"))
>>>>>>> Stashed changes

View(df)

Biden=0
Trump=0

getwd()

for (i in 1:nrow(df)) {
  if(df$candidate[i] == "JOSEPH R BIDEN") {
    Biden = Biden + df$votes[i]
  } else if (df$candidate[i] == "DONALD J TRUMP") {
    Trump = Trump + df$votes[i]
  } else {}
}

cat("Number of votes for Biden", Biden, "\n")
cat("Number of votes for Trump", Trump)
#50/50