##houseelfanalysis
##Divya Handa
##analyse of house-elves using version control

##import data
read.csv("data/houseelf_earlength_dna_data.csv")

##Rename the file

##gc content
dataa <- read.csv("data/houseelf_earlength_dna_data_1.csv")
print(dataa)

##install.packages("stringr")
library("stringr")

gc_cont<- function(GC){
  A <- str_count(dataa$dnaseq, "G")
  B <- str_count(dataa$dnaseq, "c")
output <- (A+B)/str_count(dataa)*100
return(output)
}
gc_cont(dataa$dnaseq)

