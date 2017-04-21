install.packages("httr")

install.packages("jsonlite")


library("httr")
library("jsonlite")

response <- GET("https://ischool.uw.edu")
# Gets HTML code from ischool.uw.edu

# GET request to search google for informatics.
query.params <- list(q = "informatics")
GET("https://www.google.com/search",query = query.params)

# GET Request for GitHub repos.
base.uri <- "https://api.github.com"
resource <- paste0("/users/","info201-w17","/repos")
GET(paste0(base.uri,resource))
# Gets API from github for info201-w17 repos.

# Gets content of GET response from ischool.uw.edu
# extracts the content from body as text.
body <- content(response, "text")

