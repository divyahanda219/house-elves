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
output <- ((A+B)/str_length(dataa)*100)
return(output)
}
gc_cont(dataa$dnaseq)

get_size_class <- function(ear_length){
   # Calculate the size class for one or more earth lengths
   ear_lengths <- ifelse(ear_length > 10, "large", "small")
   return(ear_lengths)
}

## to get earlength for each individual
Category<- sapply(dataa$earlength, get_size_class)

##to get gc content for each individual
Content<- sapply(dataa$dnaseq, gc_cont)

##create a dataframe
result<- data.frame(dataa$id, Category,Content)
print(result)

write.csv(result, file = "data/result.csv")
