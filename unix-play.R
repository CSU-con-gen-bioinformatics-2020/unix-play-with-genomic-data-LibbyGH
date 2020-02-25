
#homework assignment #2 unix-play-with-genomic-data
#this project was made with version control, i.e., Git
#tidyverse
library(tidyverse)
sammy <- read_tsv("sam/DPCh_plate1_A05_S5.sam", comment = "@", col_names=FALSE)
head(sammy) #not tidyverse
#comment seems to omit lines with the character given in "" when it displays the tibble
sammy #print sammy as a tibble
#SAM files do not have column headers
#underneath X# col name is given the data type: dbl=number, chr=character
#review any warnings or problems
problems(sammy) #lists problems in tibble format
sammy %>% slice(35) #slices out row 35

#chaining with the pipe
#R's pipe operator is %>% shortcut to type it: command-shift-m %>% (syntax in terminal is | pipe)
#magrittr package
#can use %>% instead of command-head-command-head etc.
view(sammy) #opens tibble in separate window in tabular format but bogs down if tibble large
#view is useful to make sure everything is working properly
#readr package has read_tsv
#read.csv in base R reads csv files; read_csv is readr/tidyverse version of read.csv, write.csv vs. write_csv
#readr has replacements for functions that are in base R
#readr syntax is uniform
#readr is "surly", gives informative warnings

#text editors
#we will be dealing with a lot of text files, need a good text editor, e.g., BBedit
#install command line tools for BBedit or TextWrangler--I've done this now
#on command line, BBedit(filename) will open your file in BBedit, from command line
sammy %>% view() #opens sammy in separate window
# 2020-01-30 11:08 /Unix-play/--% gzcat fastq/DPCh_plate1_A11_S11.R1.fq.gz | head
#in Terminal, the line above shows first 10(?) lines of the specified file
#can turn the fastq data into a matrix (might be in homework), and add column names




