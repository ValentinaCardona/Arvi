#Lectura de datos
library(gdata)
datos<- read.xls("datos.xlsx")


datos$year.month<- substring(datos$Fecha, 1, 7)
datos$year.month<- gsub("-", "", datos$year.month)
datos$year.month <- factor(datos$year.month)
datos2 <- data.frame(levels(datos$year.month))
names(datos2) [1] <- "year.month"
datos2$Pmm <- with(datos, tapply(Pmm, year.month, sum))
datos2$fecha <- as.numeric(datos2$year.month)



# Por mes
datos2 <- data.frame(levels(datos$year.month))
names(datos2) [1] <- "year.month"
datos2$Pmm <- with(datos, tapply(Pmm, year.month, sum))
datos2$month <- substring(datos2$year.month, 5, 6)
datos2$month <- as.numeric(datos2$month)



#Gráficas
plot(datos2$month[1:10], datos2$Pmm[1:10], type = "l", lty= 3, xlim = c(1,12), ylim = c(0, 400), xlab = "Month", ylab = "Pmm", main = "Time Series 1948-1987")
par(new = T)
plot(datos2$month[11:22], datos2$Pmm[11:22], type = "l", lty= 3, xlim = c(1,12), ylim = c(0, 400), xlab = "", ylab = "")
par(new = T)
plot(datos2$month[23:34], datos2$Pmm[23:34], type = "l", lty= 3, xlim = c(1,12), ylim = c(0, 400), xlab = "", ylab = "")
par(new = T)
plot(datos2$month[35:46], datos2$Pmm[35:46], type = "l", lty= 3, xlim = c(1,12), ylim = c(0, 400), xlab = "", ylab = "")
par(new = T)
plot(datos2$month[47:58], datos2$Pmm[47:58], type = "l", lty= 3, xlim = c(1,12), ylim = c(0, 400), xlab = "", ylab = "")
par(new = T)
plot(datos2$month[59:70], datos2$Pmm[59:70], type = "l", lty= 3, xlim = c(1,12), ylim = c(0, 400), xlab = "", ylab = "")
par(new = T)
plot(datos2$month[71:82], datos2$Pmm[71:82], type = "l", lty= 3, xlim = c(1,12), ylim = c(0, 400), xlab = "", ylab = "")
par(new = T)
plot(datos2$month[83:94], datos2$Pmm[83:94], type = "l", lty= 3, xlim = c(1,12), ylim = c(0, 400), xlab = "", ylab = "")
par(new = T)
plot(datos2$month[95:106], datos2$Pmm[95:106], type = "l", lty= 3, xlim = c(1,12), ylim = c(0, 400), xlab = "", ylab = "")
par(new = T)
plot(datos2$month[107:118], datos2$Pmm[107:118], type = "l", lty= 3, xlim = c(1,12), ylim = c(0, 400), xlab = "", ylab = "")
par(new = T)
plot(datos2$month[119:130], datos2$Pmm[119:130], type = "l", lty= 3, xlim = c(1,12), ylim = c(0, 400), xlab = "", ylab = "")
par(new = T)
plot(datos2$month[131:142], datos2$Pmm[131:142], type = "l", lty= 3, xlim = c(1,12), ylim = c(0, 400), xlab = "", ylab = "")
par(new = T)
plot(datos2$month[143:154], datos2$Pmm[143:154], type = "l", lty= 3, xlim = c(1,12), ylim = c(0, 400), xlab = "", ylab = "")
par(new = T)
plot(datos2$month[155:166], datos2$Pmm[155:166], type = "l", lty= 3, xlim = c(1,12), ylim = c(0, 400), xlab = "", ylab = "")
par(new = T)
plot(datos2$month[167:178], datos2$Pmm[167:178], type = "l", lty= 3, xlim = c(1,12), ylim = c(0, 400), xlab = "", ylab = "")
par(new = T)
plot(datos2$month[179:190], datos2$Pmm[179:190], type = "l", lty= 3, xlim = c(1,12), ylim = c(0, 400), xlab = "", ylab = "")
par(new = T)
plot(datos2$month[191:202], datos2$Pmm[191:202], type = "l", lty= 3, xlim = c(1,12), ylim = c(0, 400), xlab = "", ylab = "")
par(new = T)
plot(datos2$month[203:214], datos2$Pmm[203:214], type = "l", lty= 3, xlim = c(1,12), ylim = c(0, 400), xlab = "", ylab = "")
par(new = T)
plot(datos2$month[215:226], datos2$Pmm[215:226], type = "l", lty= 3, xlim = c(1,12), ylim = c(0, 400), xlab = "", ylab = "")
par(new = T)
plot(datos2$month[227:238], datos2$Pmm[227:238], type = "l", lty= 3, xlim = c(1,12), ylim = c(0, 400), xlab = "", ylab = "")
par(new = T)
plot(datos2$month[239:250], datos2$Pmm[239:250], type = "l", lty= 3, xlim = c(1,12), ylim = c(0, 400), xlab = "", ylab = "")
par(new = T)
plot(datos2$month[251:262], datos2$Pmm[251:262], type = "l", lty= 3, xlim = c(1,12), ylim = c(0, 400), xlab = "", ylab = "")
par(new = T)
plot(datos2$month[263:274], datos2$Pmm[263:274], type = "l", lty= 3, xlim = c(1,12), ylim = c(0, 400), xlab = "", ylab = "")
par(new = T)
plot(datos2$month[275:286], datos2$Pmm[275:286], type = "l", lty= 3, xlim = c(1,12), ylim = c(0, 400), xlab = "", ylab = "")
par(new = T)
plot(datos2$month[287:298], datos2$Pmm[287:298], type = "l", lty= 3, xlim = c(1,12), ylim = c(0, 400), xlab = "", ylab = "")
par(new = T)
plot(datos2$month[299:310], datos2$Pmm[299:310], type = "l", lty= 3, xlim = c(1,12), ylim = c(0, 400), xlab = "", ylab = "")
par(new = T)
plot(datos2$month[311:322], datos2$Pmm[311:322], type = "l", lty= 3, xlim = c(1,12), ylim = c(0, 400), xlab = "", ylab = "")
par(new = T)
plot(datos2$month[323:334], datos2$Pmm[323:334], type = "l", lty= 3, xlim = c(1,12), ylim = c(0, 400), xlab = "", ylab = "")
par(new = T)
plot(datos2$month[335:346], datos2$Pmm[335:346], type = "l", lty= 3, xlim = c(1,12), ylim = c(0, 400), xlab = "", ylab = "")
par(new = T)
plot(datos2$month[347:358], datos2$Pmm[347:358], type = "l", lty= 3, xlim = c(1,12), ylim = c(0, 400), xlab = "", ylab = "")
par(new = T)
plot(datos2$month[359:370], datos2$Pmm[359:370], type = "l", lty= 3, xlim = c(1,12), ylim = c(0, 400), xlab = "", ylab = "")
par(new = T)
plot(datos2$month[371:382], datos2$Pmm[371:382], type = "l", lty= 3, xlim = c(1,12), ylim = c(0, 400), xlab = "", ylab = "")
par(new = T)
plot(datos2$month[383:394], datos2$Pmm[383:394], type = "l", lty= 3, xlim = c(1,12), ylim = c(0, 400), xlab = "", ylab = "")
par(new = T)
plot(datos2$month[395:406], datos2$Pmm[395:406], type = "l", lty= 3, xlim = c(1,12), ylim = c(0, 400), xlab = "", ylab = "")
par(new = T)
plot(datos2$month[407:418], datos2$Pmm[407:418], type = "l", lty= 3, xlim = c(1,12), ylim = c(0, 400), xlab = "", ylab = "")
par(new = T)
plot(datos2$month[419:430], datos2$Pmm[419:430], type = "l", lty= 3, xlim = c(1,12), ylim = c(0, 400), xlab = "", ylab = "")
par(new = T)
plot(datos2$month[431:442], datos2$Pmm[431:442], type = "l", lty= 3, xlim = c(1,12), ylim = c(0, 400), xlab = "", ylab = "")
par(new = T)
plot(datos2$month[443:454], datos2$Pmm[443:454], type = "l", lty= 3, xlim = c(1,12), ylim = c(0, 400), xlab = "", ylab = "")
par(new = T)
plot(datos2$month[455:466], datos2$Pmm[455:466], type = "l", lty= 3, xlim = c(1,12), ylim = c(0, 400), xlab = "", ylab = "", geom=)






datos2$month.f <- factor(datos2$month)
with(datos2, plot(Pmm ~ month.f,  main = "Time Series 1948-1987", xlab="month") )

datos$fecha <- as.Date(datos$Fecha, format = "%Y-%m-%d")
with(datos , plot(Pmm ~ fecha, main = "Time Series 1948-1987", xlab="month"))

qplot(month, Pmm,data = datos2, xlim = c(1,12), ylim = c(0, 400), xlab = "Month", ylab = "Pmm", main = "Time Series 1948-1987")
qplot(month, Pmm,data = datos2, xlim = c(1,12), ylim = c(0, 400), xlab = "Month", ylab = "Pmm", main = "Time Series 1948-1987", geom = "smooth")


#Por si las moscas

#datos$year <- substring(datos$Fecha , 1, 4)
#datos$month <- substring(datos$Fecha , 6, 7)
#datos$year.month <- with(datos, paste(year, month, sep = "" ))
#datos$year.month <- factor(datos$year.month)
#datos2 <- datos2[-c(1:10), ] #elimina el primero año, que esta incompleto
