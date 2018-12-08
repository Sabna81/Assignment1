

# part 1
austen <-read.csv(file.choose(),header = TRUE)
View(austen)
library(tidyverse)
library(dplyr)
library(stringr)
install.packages("gutenbergr")
library(gutenbergr)
gutenberg_metadata

get_jane_austen_data <- function(){
  tryCatch({library(gutenbergr)}, error = function(e){install.packages("gutenbergr")})
  library(gutenbergr)
}
  austen_text <- gutenberg_works(author == "Austen, Jane") %>% 
    gutenberg_download(meta_fields = "title") %>% mutate(id = row_number(gutenberg_id))
  assign("austen_text", austen_text, envir=.GlobalEnv)
  invisible()
  
#part2
# Question 1 ------------------------------------------------------------------------------------------------------

install.packages("tidytext")

library(tidytext)

tidy_df <- function(austen_text, column_prefix = "var"){
  tidy_df <- austen_text %>%
    unnest_tokens(word, text)
}

tidy_df()
  

# Question 2 ------------------------------------------------------------------------------------------------------

#' Get the Jane Austen data
#' 

#'
#' It will attempt to install the right package for you. If it does not work,
#'   try to install it manually.
#'
#' @return A data frame with Jane Austen texts, one line per row

 get_jane_austen_data <- function(){
  tryCatch({library(gutenbergr)}, error = function(e){install.packages("gutenbergr")})
  library(gutenbergr)
  austen_text <- gutenberg_works(author == "Austen, Jane") %>% 
    gutenberg_download(meta_fields = "title") %>% mutate(id = row_number(gutenberg_id))
  assign("austen_text", austen_text, envir=.GlobalEnv)
  invisible()
 }



# extract_possible_names 

install.packages("gutenbergr")
library(gutenbergr)
gutenberg_metadata
library(dplyr)
library(stringr)

 austen_text<-gutenberg_works(author == "Austen, Jane")
 View(austen_text)
austen_text <- gutenberg_works(author == "Austen, Jane") %>% 
  gutenberg_download(meta_fields = "title") %>% mutate(id = row_number(gutenberg_id))
assign("austen_text", austen_text, envir=.GlobalEnv)
invisible()

library(stringr)

extract_possible_names <-function(){
  str_extract(austen_text,"\\b[A-Z]\\w+")[[1]]
}
extract_possible_names()

     
# Question 3 ------------------------------------------------------------------------------------------------------

# filter_names
library(dplyr)
filter_names<-function(){filter(austen_text,"[A-Z]w+")[[1]])
}



# Question 4 ------------------------------------------------------------------------------------------------------

# count_names_per_book
count_names_per_book<- function(){
  count(austen,title,sort=TRUE)
  
}


