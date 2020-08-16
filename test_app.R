library(shiny)
library(shinydashboard)
library(shinydashboardPlus)

shinyApp(
  ui = dashboardPagePlus(
    header = dashboardHeaderPlus(
      title = tagList(
        span(class = "logo-lg", "Shiny Business Analytics"), 
        img(src = "https://image.flaticon.com/icons/svg/204/204074.svg"))
    ),
    sidebar = dashboardSidebar(
      sidebarMenu(
        menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard")),
        menuItem("Widgets", icon = icon("th"), tabName = "widgets",
                 badgeLabel = "new", badgeColor = "green")
      )
    ),
    body = dashboardBody(),
    title = "Shiny Business Analytics"
  ),
  server = function(input, output) { }
)