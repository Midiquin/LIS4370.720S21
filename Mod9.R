library(ggplot2)
data <- read.csv("Data\\primates.csv")

ggplot(data, aes(x=Bodywt, y=X, size=Brainwt, color=X))+
  geom_point()+
  ylab("Brain weight in g")+
  xlab("Body weight in kg")+
  labs(
    color="Primate",
    size="Brain weight in g"
  )

ggplot(data, aes(x=X, y=Bodywt)) +
  geom_segment( aes(x=X, xend=X, y=1, yend=Bodywt), color="grey") +
  geom_point( color="orange", size=4) +
  theme_light() +
  theme(
    panel.grid.major.x = element_blank(),
    panel.border = element_blank(),
    axis.ticks.x = element_blank()
  ) +
  xlab("") +
  ylab("Body weight in kg")


ggplot(data, aes(x=Bodywt, y=X, fill=Brainwt))+
  geom_bar(stat = "identity")+
  ylab("Primate")+
  xlab("Body Weight in kg")+
  labs(
    fill="Brain weight in g"
  )














