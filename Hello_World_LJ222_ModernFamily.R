##Hello_World_LJ222_ModernFamily

##Load necessary libraries

install.packages("lubridate")
library(stringr)
library(lubridate)

# Define the hello_world() function
hello_world <- function(name, time_of_day, is_morning = TRUE, return_n_greetings = 1) {
  
  # Ensure name is properly formatted (capitalize first letter of each word)
  name <- str_to_title(name)  # Capitalizes the first letter of each word in the name
  
  # Determine the part of the day based on time_of_day
  if (is_morning) {
    greeting_time <- "morning"
  } else if (hour(time_of_day) < 12) {
    greeting_time <- "morning"
  } else if (hour(time_of_day) < 18) {
    greeting_time <- "afternoon"
  } else {
    greeting_time <- "evening"
  }
  
  # Define possible greetings based on time of day and Modern Family references
  greetings <- c(
    paste0("Good morning, ", name, "! Ready to conquer the world, just like Phil Dunphy?"),
    paste0("Hey, ", name, ", it's the morning—time to shine like Claire Dunphy on a perfect day!"),
    paste0(name, ", I see you’re up early like Gloria, making everything look easy."),
    paste0("Good afternoon, ", name, ", are you channeling your inner Mitch and Cam today?"),
    paste0("Good evening, ", name, ", relax like Jay Pritchett with a nice glass of wine."),
    paste0("Sup, ", name, "? It's time to make today a Cam and Mitchell-style adventure!"),
    paste0("Bonjour, ", name, ", it's a wonderful day to tackle life, just like Gloria!"),
    paste0("Yo, ", name, ", let’s have a night out full of hilarity like Phil’s antics."),
    paste0(name, ", you're the Luke Dunphy of the group—always full of surprises!"),
    paste0("Hey, ", name, ", you ready to make memories, just like the Dunphys?")
  )
  
  # Start the counter for greeting repetitions
  i <- 1
  
  # Print the requested number of greetings
  while (i <= return_n_greetings) {
    print(sample(greetings, 1))  # Print a random greeting
    i <- i + 1  # Increment the counter
  }
  
  # Additional conditional greeting depending on whether it's morning, afternoon, or evening
  if (greeting_time == "morning") {
    return(paste0("Hope your morning is as productive as Phil’s magic tricks, ", name, "!"))
  } else if (greeting_time == "afternoon") {
    return(paste0("Enjoy the afternoon, ", name, "! Hope it’s filled with as much fun as Cam and Mitchell’s crazy ideas."))
  } else if (greeting_time == "evening") {
    return(paste0("Good evening, ", name, "! Time to wind down like Jay Pritchett with his classic dad humor."))
  } else {
    return("Hello, world!")
  }
}


# Example 1: Call the function with name "LJ", a specific time of day, and return 3 greetings
hello_world("LJ", ymd_hms("2025-02-28 08:30:00"), is_morning = TRUE, return_n_greetings = 3)


# Example 2: Call the function with name "Natalie", a different time, and return 2 greetings
hello_world("Erica", ymd_hms("2025-02-28 16:30:00"), is_morning = FALSE, return_n_greetings = 2)


