### Pfad nach ../PRO/Research/ entsprechend anpassen
indir= ReDi('ESOMtoolbox2014/03Inselgenerierung/09Originale/')
### Dateinahmen waehlen
clsname="Chainlink.cls"
LRNname= "Chainlink.lrn"
### Daten Laden
Clslist=ReadCLS(clsname,indir)
LRNlist=ReadLRN(LRNname,indir)
Cls=Clslist$Cls
Data=LRNlist$Data
### Umatrix Shiny tool ausfuehren
results=Umatrix(Data)
## Bei gegebener Vorklassifizierung:
# results=Umatrix(Data,Cls=Cls)
## Bei gegebener wts, bzw nur zur U+matrix-Generierung oder Inselgenerierung, Clusterung
# results2=Umatrix(Data,results$EsomNeurons)
#seperates plotten:
plotUmatrix(results$Ustarmatrix,results$UstarBmu)
# Weiterfuehrende Doku unter
#D:\Subversion\PUB\CRANupload\Umatrix-manual.pdf
#oder
# https://www.uni-marburg.de/fb12/datenbionik/software
# unter dem Download mit dem Link auf dem Wort "PDF"
#oder je Funktion mit dem aufruf, falls das Paket installiert wurde
# ?Umatrix