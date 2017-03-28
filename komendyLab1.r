epsilon <-0.01
# the performance table
  performanceTable <- rbind(
    +     c(9, 1400, 2649),
    +     c(13, 1400, 2699),
    +     c(6.5, 1200, 1599),
    +     c(6, 1000, 899),
    +     c(5, 1000, 799),
    +     c(7, 1200, 1399),
    +     c(5, 1200, 1299),
    +     c(6, 1000, 1099),
    +     c(6, 1200, 1549),
    +     c(6, 1200, 1099),
    +     c(6, 1000, 799),
    +     c(6, 1000, 999),
    +     c(6, 1200, 1399),
    +     c(6, 1000, 1249),
    +     c(7, 1200, 1299),
    +     c(6, 1200, 1799),
    +     c(6, 1200, 1399),
    +     c(5, 1000, 1199),
    +     c(6, 1200, 1059),
    +     c(9, 1400, 3499)
    + )
  
     rownames(performanceTable) <- c(
      +     "Samsung Addwash WW90K6414QW",
      +     "Hoover DMP 413AH",
      +     "Bosch Serie 6 VarioPerfect WLT24460PL",
      +     "Indesit IWSC 51052 C ECO PL",
      +     "Amica AWB510L",
      +     "Candy Smart CS4 1061D3",
      +     "Samsung WF70F5E0W2W",
      +     "Bosch Serie 4 VarioPerfect WLG2426KPL",
      +     "Bosch Serie 2 VarioPerfect WAB20264PL",
      +     "Electrolux EWS1266CI",
      +     "Samsung WW60J3283LW",
      +     "Indesit IWSC 61253 C ECO EU",
      +     "Indesit Eco Time IWD 61052 C ECO PL",
      +     "Whirlpool AWO/C 61003P",
      +     "Bosch Serie 6 VarioPerfect WLK2427EPL",
      +     "Electrolux EWS11064SDU",
      +     "Samsung AddWash Slim WW60K42138W",
      +     "Samsung WW60J42602W",
      +     "Bosch Serie 4 VarioPerfect WLG2026EPL",
      +     "Amica Navigator AWX612D")
     colnames(performanceTable) <- c(
      +     "MaximumLoad",
      +     "RPM",
      +     "Price")
     # ranks of the alternatives
       alternativesRanks <- c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20)
       
         names(alternativesRanks) <- row.names(performanceTable)
         
           # criteria to minimize or maximize
           criteriaMinMax <- c("max","max","min")
           names(criteriaMinMax) <- colnames(performanceTable)
           
             library(MCDA)
             x<-additiveValueFunctionElicitation(performanceTable,
                                                  +                                     criteriaMinMax, epsilon,
                                                  +                                     alternativesRanks = alternativesRanks)