library(ggplot2)

plot<-ggplot() +
  theme_void() +
  geom_rect(aes(xmin = 1, xmax = 3, ymin = 1, ymax = 3), colour = "black",
            fill = "red", alpha = .5, linewidth = 1.5) +
  geom_rect(aes(xmin = 4, xmax = 6, ymin = 5, ymax = 7), colour = "black",
            fill = "blue", alpha = .5, linewidth = 1.5) +
  geom_rect(aes(xmin = 7, xmax = 9, ymin = 1, ymax = 3), colour = "black",
            fill = "green", alpha = .5, linewidth = 1.5) +
  geom_segment(aes(x = 3, y = 3, xend = 4, yend = 5), linewidth = 1.5,
               arrow = arrow(length = unit(.5,"cm"))) +
  geom_segment(aes(x = 6, y = 5, xend = 7, yend = 3), linewidth = 1.5,
               arrow = arrow(length = unit(.5,"cm"))) +
  geom_segment(aes(x = 3, y = 2, xend = 7, yend = 2), linewidth = 1.5,
               arrow = arrow(length = unit(.5,"cm"))) +
  geom_text(aes(x = 2, y = 2 , label = "IV"), 
            colour = "black", fontface = "bold") +
  geom_text(aes(x = 8, y = 2 , label = "DV"), colour = "black",
            fontface = "bold") +
  geom_text(aes(x = 5, y = 6 , label = "Mediator"), colour = "black",
            fontface = "bold") +
  geom_text(aes(x = 5, y = 2.25 , label = "..")) +
  geom_text(aes(x = 3.25, y = 4 , label = ".."), angle = atan2(2,1) * (180 / pi)) +
  geom_text(aes(x = 6.75, y = 4 , label = ".."), angle = 360 - atan2(2,1) * (180 / pi)) +
  geom_text(aes(x = 5, y = 1 , label = "Indirect effect: .. [.., ..]"))
                 
  