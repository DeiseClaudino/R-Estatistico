duracao <- rename(duracao, replace = c(
  "user_id" = "aluno", "course_id" = "curso","timeToFinish" = "dias"))

plot(duracao$dias)

hist(duracao$dias)

hist(duracao$dias, breaks = 3)

hist(duracao$dias, breaks = 20)

hist(duracao$dias, breaks = 20, main = "Histograma do tempo")

hist(duracao$dias, breaks = 20, main = "Histograma do tempo", ylab = "Quantidade")

hist(duracao$dias, breaks = 20, main = "Histograma do tempo", ylab = "Quantidade", xlab = "Tempo")

hist(duracao$dias, breaks = 20, main = "Histograma do tempo", ylab = "Quantidade", ylim = c(0,2000))

jpeg("histograma.jpg")

hist(duracao$dias, breaks = 20, main = "Histograma do tempo", ylab = "Quantidade", ylim = c(0,2000), col = "blue")

dev.off()

mean(duracao$dias)

mean(duracao$dias, na.rm = T) 

median(duracao$dias)

median(duracao$dias, na.rm = T) 

summary(duracao$dias)

dim(duracao)[1]

3828/6366

length(unique(duracao$curso))

length(unique(duracao$aluno))

sumario_estatistico <- aggregate(duracao$dias, list(duracao$curso), mean, na.rm =T)

popularidade_e_duracao <- merge(sumario_estatistico, popularidade, by = 'curso')

popularidade <- rename(popularidade, c('course_id'='curso', 'freq'='popularidade'))

plot(popularidade_e_duracao$dias, popularidade_e_duracao$popularidade)

plot(popularidade_e_duracao$dias, popularidade_e_duracao$popularidade)

modelo.linear <- lm(popularidade_e_duracao$popularidade~popularidade_e_duracao$dias)

abline(lm(popularidade_e_duracao$popularidade~popularidade_e_duracao$dias))

scatter.smooth(popularidade_e_duracao$dias, popularidade_e_duracao$popularidade)

help('pch')

scatter.smooth(popularidade_e_duracao$dias, popularidade_e_duracao$popularidade, pch = 16)

scatter.smooth(popularidade_e_duracao$dias, popularidade_e_duracao$popularidade, col= 'blue')

install.packages('ggplot2')

library(ggplot2)

grafico <- ggplot(popularidade_e_duracao, aes(dias, popularidade))

grafico <- grafico + geom_point()

grafico <- grafico + geom_smooth()