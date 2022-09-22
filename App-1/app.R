

# load library
library(shiny)

# UI
ui = fluidPage(
    titlePanel("My Shiny App"),
    sidebarLayout(position = "left",
        sidebarPanel(h2("Instalation"),
                     p("Shiny is availble on CRAN, so you can install it in the usual way from your R consule:"),
                     code('install.packages("shiny")'),
                     br(),
                     br(),
                     img(src = "rstudio.png", width = 200),
                     br(),
                     p("Shiny is a product of ",
                       span("RStudio", style = "color:blue"))
        ),
        mainPanel(
            h1("Introduction Shiny"),
            p("shiny is a new package from RStudio that make it ",
              em("incredibly easy"), 
              "to build interactive web application with R."),
            br(),
            br(),
            p("For an introduction and live examples, visit the ",
              a("Shiny homepage", 
                href = "http://shiny.rstudio.com")),
            h2("Features"),
            p("- Build useful web application with only a few lines of code-no JavaScript required."),
            p("- Shiny application automaticly 'live' in the same way that ",
              strong("spreadsheet"),
              "are live. Outputs change instantly as users modify inputs, without requiring a reload of the browser.")
            
        )
    )
    
)

# server
server = function(input, output){
    
    
}

shinyApp(ui = ui, server = server)