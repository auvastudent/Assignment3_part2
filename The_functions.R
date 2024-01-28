#The functions:

#1.

#creating a function that returns a shopping list
remind_me <- function(){
  shop_list <- c("veggies", "berries", "bread", "cheese", "hummus", "crackers")
  return(shop_list)
}


#2.

#creating a function that returns answers to specific questions
cheat <- function(q_num){
  answers <- list(
    Q3.1.1 = "classgrades <- rnorm(35, mean = 7, sd = 1)",
    Q3.1.2 = "plot(data$DATE, data$TMIN)",
    Q3.1.16 = "matrix(c(1, 2, 3, 8, 10, 12, 21, 24, 27), nrow = 3, byrow = TRUE)"
  )
  return(answers[[q_num]])  
}

#3.

make_art <- function(seed){
  set.seed(seed)
  randomdata <- data.frame(
    x <- runif(80, min = 0, max = 300),
    y <- runif(80, min = 0, max = 300)
  )
  ggplot(data = randomdata, mapping = aes(x = x, y = y))+
    geom_point(color = "white") + 
    geom_smooth()+
    theme_void()+
    theme(plot.background = element_rect(fill = "black")) 
}
  
  