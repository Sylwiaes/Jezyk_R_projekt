#Zadanie1
#1 Wczytaj dane z pliku ROLN_3179.csv lub ROLN_3179.xlsx arkusz TABLICA.
library(readr)
data_frame_1 <- read_csv("ROLN_3179.csv")
View(data_frame_1)

#2 Sprawdz czy wartosci dla wiersza POLSKA sa poprawne we wszystkich kolumnach. 
#Odpowiedz zapisz do pliku pol.csv.
s <- data_frame_1[c(2:17),3:28]
View(s)

#dane dla Polski w kolumnie:
total_pol <- colSums(s, na.rm = F, dims = 1)
total_pol
View(total_pol)

#dane dla Polski zamiana na wiersze:
k <- data_frame_1[c(1),3:28]
View(k)

#suma wszystkich województw:
sum_pol <- colSums(k, na.rm = F, dims = 1)
sum_pol
View(sum_pol)

#sprawdzenie poprawnoœci danych dla Polski: 
check_column <- cbind(total_pol ,sum_pol)
View(check_column)

#zamiana danych na data frame:
check_column <- as.data.frame(t(check_column))
View(check_column)

#zapis do pliku csv:

pol <- colSums(s, na.rm = F, dims = 1)
pol

write.table(x=pol, file = "pol.csv", sep = ",")

#wybieranie wiersza z kolumny Nazwa

p <- subset(x=data_frame_1, subset = Nazwa == "POLSKA" )
View(p)

#3 Oblicz srednia powierzchnie uzytków rolnych na jedno gospodarstwo w podziale na lata i województwa.
nazwa_wojewodztwa <- data_frame_1$Nazwa
View(nazwa_wojewodztwa)

srednia_pow_2006r_w_ha <- round(data_frame_1$"powierzchnia uzytkow rolnych w 2006r" / data_frame_1$"gospodarstwa w 2006r", digits = 2)
View(srednia_pow_2006r_w_ha)

srednia_pow_2007r_w_ha <- round(data_frame_1$"powierzchnia uzytkow rolnych w 2007r" / data_frame_1$"gospodarstwa w 2007r", digits = 2)
View(srednia_pow_2007r_w_ha)

srednia_pow_2008r_w_ha <- round(data_frame_1$"powierzchnia uzytkow rolnych w 2008r" / data_frame_1$"gospodarstwa w 2008r", digits = 2)
View(srednia_pow_2008r_w_ha)

srednia_pow_2009r_w_ha <- round(data_frame_1$"powierzchnia uzytkow rolnych w 2009r" / data_frame_1$"gospodarstwa w 2009r", digits = 2)
View(srednia_pow_2009r_w_ha)

srednia_pow_2010r_w_ha <- round(data_frame_1$"powierzchnia uzytkow rolnych w 2010r" / data_frame_1$"gospodarstwa w 2010r", digits = 2)
View(srednia_pow_2010r_w_ha)

srednia_pow_2011r_w_ha <- round(data_frame_1$"powierzchnia uzytkow rolnych w 2011r" / data_frame_1$"gospodarstwa w 2011r", digits = 2)
View(srednia_pow_2011r_w_ha)

srednia_pow_2012r_w_ha <- round(data_frame_1$"powierzchnia uzytkow rolnych w 2012r" / data_frame_1$"gospodarstwa w 2012r", digits = 2)
View(srednia_pow_2012r_w_ha)

srednia_pow_2013r_w_ha <- round(data_frame_1$"powierzchnia uzytkow rolnych w 2013r" / data_frame_1$"gospodarstwa w 2013r", digits = 2)
View(srednia_pow_2013r_w_ha)

srednia_pow_2014r_w_ha <- round(data_frame_1$"powierzchnia uzytkow rolnych w 2014r" / data_frame_1$"gospodarstwa w 2014r", digits = 2)
View(srednia_pow_2014r_w_ha)

srednia_pow_2015r_w_ha <- round(data_frame_1$"powierzchnia uzytkow rolnych w 2015r" / data_frame_1$"gospodarstwa w 2015r", digits = 2)
View(srednia_pow_2015r_w_ha)

srednia_pow_2016r_w_ha <- round(data_frame_1$"powierzchnia uzytkow rolnych w 2016r" / data_frame_1$"gospodarstwa w 2016r", digits = 2)
View(srednia_pow_2016r_w_ha)

srednia_pow_2017r_w_ha <- round(data_frame_1$"powierzchnia uzytkow rolnych w 2017r" / data_frame_1$"gospodarstwa w 2017r", digits = 2)
View(srednia_pow_2017r_w_ha)

srednia_pow_2018r_w_ha <- round(data_frame_1$"powierzchnia uzytkow rolnych w 2018r" / data_frame_1$"gospodarstwa w 2018r", digits = 2)
View(srednia_pow_2018r_w_ha)

srednia_column <- cbind(nazwa_wojewodztwa, srednia_pow_2006r_w_ha, srednia_pow_2007r_w_ha, srednia_pow_2008r_w_ha, srednia_pow_2009r_w_ha, srednia_pow_2010r_w_ha, srednia_pow_2011r_w_ha, srednia_pow_2012r_w_ha, srednia_pow_2013r_w_ha, srednia_pow_2014r_w_ha, srednia_pow_2015r_w_ha, srednia_pow_2016r_w_ha, srednia_pow_2017r_w_ha, srednia_pow_2018r_w_ha)
View(srednia_column)



