#TransferMatlabt2R.R
pkgname="Tiles"
dbtpath=paste0(SubversionDirectory(),"PUB/dbt/")
path=paste0(dbtpath,pkgname)

files=list.files(path,".m")
funnames=gsub(x = files,pattern = "\\.m",replacement = "")
#step 1: transfer
for(i in 1:length(files)){
  
  TranslateMatlabBackBone2R(funnames[i],path,Outputdir =path )
}

#step 2: programierfehler auskommentieren

#step 3: sourcen
for(i in 1:length(files)){
  source(paste0(path,"/",paste0(funnames,".R")))
}

#step 4: package erstellen

package.skeleton(name = pkgname,path = dbtpath,list = funnames,force=TRUE)

#step 5: .R dateien entfernen

for(i in 1:length(files)){
  file.remove(paste0(path,"/",paste0(funnames[i],".R")))
}

#step 6: ueber Rstudio projektordner erstellen