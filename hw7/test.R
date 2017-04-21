library('dplyr')
library('ggplot2')

data <- read.csv('data/intro-survey.csv', stringsAsFactors=FALSE)

for(i in 1:nrow(data)){
  if(data$Programming.Experience[i] == "I've never written code"){
    data$Programming.Experience[i] <- 1
  }else if(data$Programming.Experience[i] == "I've experimented with simple programming"){
    data$Programming.Experience[i] <- 2
  }else if(data$Programming.Experience[i] == "I have moderate experience with a programming language (e.g., CSE1I have lots of experience with a programming language (e.g., CSE143+)2)"){
    data$Programming.Experience[i] <- 3
  }else if(data$Programming.Experience[i] == "I have lots of experience with a programming language (e.g., CSE143+)"){
    data$Programming.Experience[i] <- 4
  }
}

for(i in 1:nrow(data)){
  if(data$Command.Line.Experience[i] == "Never used it"){
    data$Command.Line.Experience[i] <- 1
  }else if(data$Command.Line.Experience[i] == "Used it a few times"){
    data$Command.Line.Experience[i] <- 2
  }else if(data$Command.Line.Experience[i] == "Intermediate user"){
    data$Command.Line.Experience[i] <- 3
  }else if(data$Command.Line.Experience[i] == "Expert User"){
    data$Command.Line.Experience[i] <- 4
  }
}

# Bar graph showing how many people have what level of experience in programming.
ggplot(data = data) +
  geom_bar(mapping = aes(x = Programming.Experience))

# Scatter plot comparing programming experience to the amount of coffee people drink per day.
ggplot(data = data) +
  geom_point(mapping = aes(x = Programming.Experience, y=Cups.of.Coffee, 
                           color=Cups.of.Coffee,
                           size=Cups.of.Coffee)) +
  scale_color_gradient(low="burlywood4", high="burlywood1")
#
ggplot(data = data) +
  geom_point(mapping = aes(x=Programming.Experience, y=Cups.of.Coffee)) +
  geom_point(mapping = aes(x=Command.Line.Experience, y=Cups.of.Coffee))
