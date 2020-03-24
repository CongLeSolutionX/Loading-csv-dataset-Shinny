
# importing libraries and packages 
# install.packages("DT")
library("DT")
library("tidyverse")

wdi_data <- read_csv("data/wdi_data.csv")

function(input, output, session) {
  
  output$wdi_table <- renderDT({
    wdi_data %>% 
      datatable(rownames =  FALSE)
  })
  
}