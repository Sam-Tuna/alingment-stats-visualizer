NCBI.1.5 <- read.delim("~/Área de trabalho/phd/metagen/dz/alins/NCBI-1-5.tsv", header=FALSE)
NCBI.6.10 <- read.delim("~/Área de trabalho/phd/metagen/dz/alins/NCBI-6-10.tsv", header=FALSE)

number_all1 <- sum(NCBI.1.5["V3"])
number_all2 <- sum(NCBI.6.10["V3"])

species1 <- c("Serratia marcescens", "Bacillus flexus", "Salmonella enterica", "Morganella morganii", "Plesiomonas shigelloides", "Klebsiella oxytoca",
             "Paenibacillus amylolyticus", "Pseudomonas stutzeri", "Bacillus firmus", "Trabulsiella farmeri")
species2 <- c("Serratia marcescens", "Pseudomonas stutzeri", "Pseudomonas veronii", "Pseudomonas viridiflava", "Salmonella enterica", "Plesiomonas shigelloides",
              "Pseudomonas fragi", "Pseudomonas nitroreducens", "Morganella morganii", "Klebsiella oxytoca")

genera1 <- c("Serratia", "Klebsiella", "Bacillus", "Paenibacillus", "Planctomyces", "Ureibacillus", "Citrobacter", "Erwinia", "Pseudomonas", "Proteus")
genera2 <- c("Serratia", "Pseudomonas", "Klebsiella", "Citrobacter", "Erwinia", "Proteus", "Providencia", "Yersinia", "Salmonella", "Plesiomonas")


numbers1 <- c()
numbers2 <- c()

for(i in c(species1, genera1)){
  for (j in i){
    numbers1 <- append(numbers1,sum(subset(NCBI.1.5, grepl(j, V1))["V3"]))
  }
}

for(i in c(species2, genera2)){
  for (j in i){
    numbers2 <- append(numbers2,sum(subset(NCBI.6.10, grepl(j, V1))["V3"]))
  }
}

num_species1 <- numbers1[1:10]
num_species1 <- 100*num_species1/number_all1
num_species2 <- numbers2[1:10]
num_species2 <- 100*num_species2/number_all2
num_genera1 <- numbers1[11:20]
num_genera1 <- 100*num_genera1/number_all1
num_genera2 <- numbers2[11:20]
num_genera2 <- 100*num_genera2/number_all2

percs_species1 <- format(data.frame(num_species1, row.names = species1), scientific=FALSE, digits = 2)
percs_species2 <- format(data.frame(num_species2, row.names = species2), scientific=FALSE, digits = 2)
percs_genera1 <- format(data.frame(num_genera1, row.names = genera1), scientific=FALSE, digits = 2)
percs_genera2 <- format(data.frame(num_genera2, row.names = genera2), scientific=FALSE, digits = 2)