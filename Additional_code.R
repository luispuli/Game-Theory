library(tidyverse)
library(ggpubr)
#Case when c > 2
x <- c(4,6,7)
y <- c(7,6,4)
data <- data.frame(x,y)
plot1 <- data %>% 
  ggplot()+
  aes(x,y)+
  geom_point()+
  geom_line()+
  geom_point(aes(x = 5, y = 5), color = "red")+
  labs(x = "Utility of student 1",
       y = "Utility of student 2",
       title = "Grade possibility frontier when c>2")+
  annotate("text", label = "One cooperates", x = 4.5, y = 7)+
  annotate("text", label = "One cooperates", x = 7.5, y = 4)+
  annotate("text", label = "Both cooperate", x = 6.5, y = 6)+
  annotate("text", label = "Both low effort \n Nash equilibrium",
           x = 5.5, y = 5)

#Case when c < 2
x <- c(5,6,7)
y <- c(6,7,6)
data <- data.frame(x,y)
plot2 <- data %>% 
  ggplot()+
  aes(x,y)+
  geom_point()+
  geom_point(aes(x = 8, y = 8), color = "red")+
  labs(x = "Utility of student 1",
       y = "Utility of student 2",
       title = "Grade possibility frontier when c<2")+
  annotate("text", label = "No one cooperates", x = 5.5, y = 6)+
  annotate("text", label = "One cooperates", x = 6.5, y = 7)+
  annotate("text", label = "One cooperates", x = 7.5, y = 6)+
  annotate("text", label = "Both high effort \n Nash equilibrium",
           x = 8.5, y = 8)+
  coord_cartesian(xlim = c(4,10), ylim = c(4,10))
ggarrange(plot1,plot2)