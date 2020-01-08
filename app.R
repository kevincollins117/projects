library(shiny)
library(leaflet)
library(tidyverse)
library(data.table)
library(geojsonio)
joined.data <- fread("turnout.csv")
states.voting <- geojson_read("map.json",
                              what = "sp")
states.voting@data$NAME <- as.character(states.voting@data$NAME)
states.voting@data$NAME <- toupper(states.voting@data$NAME)
bins <- c(30, 40, 50, 60, 70, 80)
colors <- colorBin(palette = "RdPu",
                   bins = bins,
                   domain = joined.data$Percentage)
ui <- fluidPage(

    h1("State Voter Turnout 2000-2018"),
    h2("National Election Turnout Map"),
  sliderInput(inputId = "slider1",
              label = "Year",
              min = 2000,
              max = 2018,
              value = 2000,
              step = 2,
              animate = animationOptions(interval = 1500),
              sep = ""),
  leafletOutput(outputId = "map1"),
  tableOutput(outputId  = "selected1"),
  h2("Presidential Election Turnout Map"),
  sliderInput(inputId = "slider2",
              label = "Year",
              min = 2000,
              max = 2016,
              value = 2000,
              step = 4,
              animate = animationOptions(interval = 1500),
              sep = ""),
  leafletOutput(outputId = "map2"),
  tableOutput(outputId  = "selected2"),
  h2("Midterm Election Turnout Map"),
  sliderInput(inputId = "slider3",
              label = "Year",
              min = 2002,
              max = 2018,
              value = 2002,
              step = 4,
              animate = animationOptions(interval = 1500),
              sep = ""),
  leafletOutput(outputId = "map3"),
  tableOutput(outputId  = "selected3"),
  selectInput(inputId = "select1",
              label = "View Turnout by Year",
              choices = joined.data$Year,
              selected = TRUE),
  tableOutput(outputId = "table1"),
  
  selectInput(inputId = "select2",
              label = "View Turnout by State",
              choices = joined.data$STATE,
              selected = TRUE),
  tableOutput(outputId = "table2")
  
  
  
)

server <- function(input, output, session) {
  
    output$map1  <- renderLeaflet({
    
        states.voting@data <- states.voting@data[-c(52),]
        states.voting@data <- left_join(states.voting@data,
                  filter(joined.data, 
                         Year == input$slider1),
                  by = c("NAME" = "STATE"))
        
        states.voting %>%
            leaflet() %>%
            addTiles() %>%
            addPolygons(fillColor = ~colors(states.voting@data$Percentage),
                        weight = 2, 
                        color = "white",
                        dashArray = "0",
                        opacity = 1,
                        fillOpacity = .7,
                        layerId = ~NAME) %>%
            addLegend(position = "bottomleft",
                      pal = colors,
                      values = states.voting@data$Percentage,
                      title = "Voter Turnout %") %>%
            setView(-96, 37.8, 4)
    })
    
    
    output$map2  <- renderLeaflet({

        states.voting@data <- states.voting@data[-c(52),]
        states.voting@data <- left_join(states.voting@data,
                                        filter(joined.data, 
                                               Year == input$slider2),
                                        by = c("NAME" = "STATE"))
        
        states.voting %>%
            leaflet() %>%
            addTiles() %>%
            addPolygons(fillColor = ~colors(states.voting@data$Percentage),
                        weight = 2, 
                        color = "white",
                        dashArray = "0",
                        opacity = 1,
                        fillOpacity = .7,
                        layerId = ~NAME) %>%
            addLegend(position = "bottomleft",
                      pal = colors,
                      values = states.voting@data$Percentage,
                      title = "Voter Turnout %") %>%
            setView(-96, 37.8, 4)
    })
    
    
    output$map3  <- renderLeaflet({
        states.voting@data <- states.voting@data[-c(52),]
        states.voting@data <- left_join(states.voting@data,
                                        filter(joined.data, 
                                               Year == input$slider3),
                                        by = c("NAME" = "STATE"))
        
        states.voting %>%
            leaflet() %>%
            addTiles() %>%
            addPolygons(fillColor = ~colors(states.voting@data$Percentage),
                        weight = 2, 
                        color = "white",
                        dashArray = "0",
                        opacity = 1,
                        fillOpacity = .7,
                        layerId = ~NAME) %>%
            addLegend(position = "bottomleft",
                      pal = colors,
                      values = states.voting@data$Percentage,
                      title = "Voter Turnout %") %>%
            setView(-96, 37.8, 4)
    })
    
    output$table1 <- renderTable({
        joined.data %>%
            filter(Year == input$select1)
    })
    
    output$table2 <- renderTable({
        joined.data %>%
            filter(STATE == input$select2)
    })
}

shinyApp(ui, server)

