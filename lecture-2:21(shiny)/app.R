library('shiny')

# Has two parts: 
#   UI: How it appears in browser
#   Server: R script the user will be able to run from the browser.

# Defines UI for App.
# Can contain 4 different content elements,
#     Created with functions and specified as arguments to the layout function.
#     Types: 
#         UI Layouts
#         Styled Content
#         Control Widgets
#         Reactive Outputs
my.ui <- fluidPage(
  # Formatted content
  h1("Hello Shiny"),
  # Control Widget
  textInput('user.name', label="What is your name?"),
  textOutput('message')
  # Reactive Output (updates when the message is changed)
  # 'message' is from output$message inside my.server
)

# Server is a function that takes in input & output arguments.
# input & output are both lists 
my.server <- function(input,output){
  # Values from Control Widgets are available inside input var.
  
  output$message <- renderText({
    my.message <- (paste("Hello",input$user.name))
    return(my.message)
  })
  
}

#Declare/Create Shiny app.
shinyApp(ui = my.ui, server= my.server)


