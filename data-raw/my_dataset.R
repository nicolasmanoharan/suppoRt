## code to prepare `my_dataset` dataset goes here

Unaccent <- function(text) {
  text <- gsub("['`^~\"]", " ", text)
  text <- iconv(text, to="ASCII//TRANSLIT//IGNORE")
  text <- gsub("['`^~\"]", "", text)
  return(text)
}

my_dataset = sapply(my_dataset, Unaccent)
colnames(my_dataset) = Unaccent(colnames(my_dataset))

usethis::use_data(my_dataset, overwrite = TRUE)
