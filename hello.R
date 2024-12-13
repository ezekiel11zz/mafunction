missing_value <- function(data) {
  for (col in names(data)) {
    if (is.numeric(data[[col]])) {
      median_value <- median(data[[col]], na.rm = TRUE)
      data[[col]][is.na(data[[col]])] <- median_value
    }
  }
  return(data)
}

install.packages("devtools")

devtools::install_github("ezekiel11zz/mafunction")
library(ezekielfunction)
