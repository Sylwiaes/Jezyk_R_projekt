#Zadanie 2

#1 Wczytaj dane z pliku ROLN_3179.xlsx arkusz OPIS

library(readxl)
data2 <- read_excel("ROLN_3179.xlsx", sheet = "OPIS")
View(data2)

#2 Rozdziel na s³owa wartosci z kolumny B. Wybierz unikalne wartosci i zapisz je do pliku
#w formacie CSV (1 kolumna „s³owa”) o nazwie s³owa.txt

p <- data2[c(1:1),2]
p

t <- strsplit(as.character(p), " ")
t

t2 <- unlist(t)
t2

u <- unique(t2, incomparables = F)
u

write.table(x=u,file = "s³owa.txt.csv", col.names = "s³owa")

