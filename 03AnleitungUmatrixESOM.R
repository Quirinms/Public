### 0. ) Vorbereitung
# Vor.: Alle vorherhigen Rversionen, packages und C++ Compiler löschen.
# i) die aktuelle R version installieren
# D:\Subversion\PUB\98Rservice\R-3.2.2-win.exe
# oder https://cran.r-project.org/bin/windows/base/
# ii) Rstudio installieren
# D:\Subversion\PUB\98Rservice\RStudio-0.99.473.exe
# oder https://www.rstudio.com/products/rstudio/download/
# iii) Rtools installieren (C++ compiler)
# D:\Subversion\PUB\98Rservice\Rtools33.exe
# oder https://cran.r-project.org/bin/windows/Rtools/
# 1.) Fremd-Packages 
# Rstudio starten
install.packages("Rcpp")
install.packages("devtools")
install.packages("ABCanalysis")
install.packages("shiny")
install.packages("shinyjs")
install.packages("reshape2")
install.packages("fields")
install.packages("ggplot2")

# 2.)
#abhaengig diversen Faktoren
# gibt es selten den folgenden Fehler
# loop_apply" not resolved from current namespace (plyr)
# Deswegen installiere das Paket mit folgender Anweisung
library("devtools")
install_github("hadley/plyr") 
# If you get an error concerning the plyr.dll, delete (or rename) this file manually and repeat

#3.) Installation unseres UmatrixPaketes
# www.uni-marburg.de/fb12/datenbionik/software
# i) Auf Download klicken
# ii) Alternative a)
# den Downloadpfad finden und in pathstring eingeben
install.packages(pathstring, repos = NULL, type = "win.binary")
# pathstring sieht hierbei in folgender Form aus:
pathstring="D:/Subversion/PUB/CRANupload/ABCanalysis_1.1.0.zip"
# ii) Alternative B
# in Rstudio auf Tools und dann install.packages klicken
# dann im Fenster "Install from package archive file" auswaehlen
# Auf Button "Browse" klicken und package auswaehlen
#3.) Testaufruf der Umatrix
library("Umatrix")
data('Hepta')
results=Umatrix(Hepta$Data)
# Die Dokumentation befindet sich auf 
# https://www.uni-marburg.de/fb12/datenbionik/software
# unter dem Download mit dem Link auf dem Wort "PDF"
# alternativ auch mit ?Umatrix usw. in R direkt aufrufbar
#
# Bem.: 1iii) bis 3.) Macht CRAN automatisch, sobald unser Paket sich dort befindet wird.