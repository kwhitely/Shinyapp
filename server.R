library(shiny)
library(datasets)


shinyServer(
        function(input, output) {
                
                output$main_plot <- renderPlot({
                        selectedMonth <- subset(airquality, Month==input$month)
                        plot(selectedMonth$Wind, selectedMonth$Temp,
                        xlab="Wind Speed (mph)", ylab="Temperature (F)")
                        abline(lm(selectedMonth$Temp~selectedMonth$Wind))   
                })                
})