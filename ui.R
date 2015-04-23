library(shiny)
library(datasets)
shinyUI(fluidPage(
        titlePanel("Temperature Relation to Wind Speed Based on Month"),
        sidebarPanel(
                selectInput(inputId="month",
                label="Select a Month",
                choices=c(5,6,7,8,9), 
                selected=5),
                submitButton("Submit")),
        mainPanel(
                plotOutput(outputId="main_plot", height="300px")
        )
))
       
                            

