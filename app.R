# shiny
library(shiny)
library(shinydashboard)
library(shinydashboardPlus)
library(shinyWidgets)
library(shinythemes)
library(shinyjs)

# utilities
library(config)

# data
library(tidyverse)

# Use this structure 
# https://shiny.rstudio.com/gallery/real-estate-investment.html

# UI ----
ui <- navbarPage(
  
  # 1. SETTINGS ----
  
  # 1.1 Title ----
  title = "Shiny Business Analytics",
  # 1.2 Theme ----
  theme = shinytheme("paper"),
  # 1.3 Behavior ----
  # fluid = TRUE, 
  collapsible = TRUE,
  
  # 2. PREDICTIVE FUNDRAISING ----
  
  tabPanel(
    title = "Predictive Fundraising",
    
    # 2.1 Overview ----
    div(
      class = "container",
      div(
        class = "container",
        h1("Direct-Mail Fundraising", tags$small("A Predictive Approach")),
      ),
      div(
        class = "col-sm-4",
        style = "display: flex;",
        div(
          class = "panel panel-default",
          div(
            class = "panel-heading",
            style = "text-align: center; padding: 20px;",
            icon("info", class = "fa-4x fa-boarder")
          ),
          div(
            class = "panel-body",
            style = "padding: 20px;",
            h4("Situation"
            ),
            p("Placeholder for all the text that will be written here."),
            h4("Complication / Observation"
            ),
            p("Outline what is needed."),
            h4("Resolution"
            ),
            p("Outline what is needed.")
          )
        )
      ),
      
      # 2.2 Results ----
      div(
        class = "col-sm-4",
        style = "display: flex;",
        div(
          class = "panel panel-default",
          div(
            class = "panel-heading",
            style = "text-align: center; padding: 20px;",
            icon("file-code-o", class = "fa-4x fa-boarder")
          ),
          div(
            class = "panel-body",
            style = "padding: 20px;",
            h4("Situation"
            ),
            p("Placeholder for all the text that will be written here."),
            h4("Goals"
            ),
            p("Outline what is needed.")
          )
        )
      ),
      
      # 2.3 App ----
      div(
        class = "col-sm-4",
        style = "display: flex;",
        div(
          class = "panel panel-default",
          div(
            class = "panel-heading",
            style = "text-align: center; padding: 20px;",
            icon("bar-chart", class = "fa-4x fa-boarder")
          ),
          div(
            class = "panel-body",
            style = "padding: 20px;",
            h4("Situation"
            ),
            p("Placeholder for all the text that will be written here."),
            h4("Goals"
            ),
            p("Outline what is needed.")
          )
        )
      )
    )
    
    
  ),
  
  tabPanel(
    title = "The Analysis",
    p("Placeholder for Rmarkdown HTML doc from the write-up")
  ),

  tabPanel(
    title = "The App",
    p("Placeholder for the analyzer.")
  )
                 
)

# SERVER ----
server <- function(input, output) {

    
}

# Run the application 
shinyApp(ui = ui, server = server)
