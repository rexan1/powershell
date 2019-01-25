#This command will divide each object in the input by 10
#The variabel $_ represents the current object on the pipeline

10,20,30,40 | ForEach-Object -Process {$_/10}