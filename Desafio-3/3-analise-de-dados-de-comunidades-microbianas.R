### Importar os arquivos pelo RStudio### 

##Renomear colunas de metadados 
library(plyr)
meta <- rename(metadata, c("V2"="Day", "V3"="time"))

################# Metadados 

## Destacar nome da linhas do arquivo OTU
samples.out <- rownames(otu_table_tax_amostras)

## Retornar listas com as divisões dos caracteres presentes no vetor ##
subject <- sapply(strsplit(samples.out, "D"), `[`, 1)

## Extrair a substring presente no objeto 'subject' da posição 1 a 1## 
gender <- substr(subject,1,1)

## Extrair a substring presente no objeto 'subketc' da posição 2 a 999##
subject <- substr(subject,2,999)

## Extrair 'day' como um numero inteiro a partir da divisão da substring Usando "D", na coluna 2". 
day <- sapply(strsplit(samples.out, "D"), `[`, 2)

## Data frame unindo todos os objetos ##
df <- data.frame(Subject=subject, Gender=gender, Day=day)

## Destacar a str "Early"
df$When <- "Early"

## Destacar a str "Late" quando Day for maior que 100 no df##
df$When[df$Day>100] <- "Late"

##Retornar data frame com os nomes do objeto 'samples.out'
rownames(df) <- samples.out


###########Objeto em phyloseq 
ps <- phyloseq(otu_table(otu_table_tax_amostras, taxa_are_rows=FALSE), 
               sample_names(df),
               taxa_names(tax_table_amostras))

ps <- prune_samples(sample_names(ps) != "Mock", ps)


############Bar blot 

top50 <- names(sort(taxa_sums(ps), decreasing=TRUE))[1:50]
ps.top50 <- transform_sample_counts(ps, function(OTU) OTU/sum(OTU))
ps.top50 <- prune_taxa(top50, ps.top50)
plot_bar(ps.top50, x="Day", fill="Family") + facet_wrap(~When, scales="free_x")




