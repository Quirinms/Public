# .pfad muss auf den Ordner der dbt gesetzt werden
# Variablenname darf nicht verändert werden!!
# ACHTUNG1: Alle backslashes "\" muessen durch slashes "/" im Pfad ersetzt werden
.pfad <- 'D:/Subversion/PUB/dbt'


blockDBT <- function(){try({if(file.create(paste0(.pfad, "/~block-dbt.x"))) print("DBT is now blocked from autostart")})}
unblockDBT <- function(){try({if(file.remove(paste0(.pfad, "/~block-dbt.x"))) print("DBT is now unblocked from autostart")})}
if(!file.exists(paste0(.pfad, "/~block-dbt.x"))){
	source(paste0(.pfad,'/Administration/SubversionDirectory.R'), chdir = T)
	source(SVNLibraryFile);   # aktuelle Version der dbt, auch fuer die Doku
}

#alternative

#assign(".pfad","C://Subversion//PUB//dbt", envir = globalenv())

#source(paste0(.pfad,'/Administration/SubversionDirectory.R'),chdir=T)
#source(SVNLibraryFile)
