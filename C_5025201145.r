### 1 ###
library(BSDA)
#a
x <- c(78,75,67,77,70,72,78,74,77)
y <- c(100,95,70,90,90,90,89,90,100)
sd(x-y)

#b
t.test(x, y, alternative = "two.sided", paired = TRUE)

#c
# p-value     < tingkat signifikansi 
# 0.00006003  < 0.05
# Jadi pernyataan H0 dapat ditolak sehingga terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen, sebelum dan sesudah melakukan aktivitas A

### 2 ###
library(BSDA)
tsum.test(mean.x = 23500, s.x = 3900, n.x = 100, mu = 20000, alternative = "greater")

#a
# setuju karena dari random sample yang diambil saja sudah membuktikan klaim tersebut

#b
# Berdasarkan output yang dihasilkan, diperoleh nilai t = 8.9744 dengan derajat bebas 99 dan nilai p-value 9.437e-15. 

#c
# H0 : mean.x < mu

# p-value     < tingkat signifikansi 
# 9.437e-15   < 0.05
# Jadi pernyataan H0 dapat ditolak sehingga klaim mobil dikemudikan rata-rata lebih dari 20000 kilometer per tahun itu benar

### 3 ###
#a
# H0 : rata-rata pemegang saham dari bandung sama dengan pemegang saham dari bali
# H1 : rata-rata pemegang saham dari bandung tidak sama dengan pemegang saham dari bali

#b
tsum.test(mean.x = 3.64, s.x = 1.67, n.x = 19, mean.y = 2.79, s.y = 1.32, n.y = 27, alternative = "two.sided", var.equal = TRUE)

#c
t <- (3.64 - 2.79) / sqrt((1.67^2/19) + (1.32^2/27))
print(t)

#d
qt(p = 0.05/2, df = 2, lower.tail = FALSE)

#e
# pernyataan H0 dapat ditolak

#f
# Jadi rata-rata pemegan saham dari bandung tidak sama dengan pemegang saham dari bali

### 4 ###
data_kucing <- read.delim("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt")
library("ggpubr")

# a
data_kucing$Group <- as.factor(data_kucing$Group)
data_kucing$Group = factor(dataoneway$Group,labels = c("Kucing oren", "Kucing hitam", "Kucing putih"))

Group1 <- subset(data_kucing, Group == "Kucing oren")
Group2 <- subset(data_kucing, Group == "Kucing hitam")
Group3 <- subset(data_kucing, Group == "Kucing putih")

qqnorm(Group1$Length)
qqline(Group1$Length)

qqnorm(Group2$Length)
qqline(Group2$Length)

qqnorm(Group3$Length)
qqline(Group3$Length)
# tidak terdapat outlier

#b
bartlett.test(Length ~ Group, data = data_kucing)
# p-value       > tingkat signifikansi 
# 0.8054        > 0.05
# Jadi tidak ada bukti yang menunjukkan bahwa varians antar kelompok secara statistik berbeda secara signifikan

#c
model1 = lm(Length ~ Group, data = data_kucing)
anova(model1)

#d
# p-value       < tingkat signifikansi 
# 0.0013        < 0.05
# Jadi pernyataan H0 dapat ditolak sehingga terdapat perbedaan di antara 3 jenis kucing

#e
TukeyHSD(aov(model1))
# Jenis kucing yang terbukti lebih panjang dari yang lain adalah yang memiliki p-value < 0.05, yaitu kucing grup 2 dan grup 1 serta kucing grup 3 dan grup 2.

#f
library("ggplot2")

ggplot(dataoneway, aes(x = Group, y = Length)) +
  geom_boxplot(fill = "grey80", colour = "black") +
  scale_x_discrete() + xlab("Treatment Group") +
  ylab("Length (cm)")

### 5 ###
data_kaca <- read.csv("https://drive.google.com/u/0/uc?id=1aLUOdw_LVJq6VQrQEkuQhZ8FW43FemTJ&export=download")
library("ggpubr")
library(dplyr)
library(multcompView)
library(readr)

#a
ggboxplot(data_kaca, x = "Temp", y = "Light", color = "Glass",
palette = c("#00AFBB", "#E7B800", "#E70000"))

#b
data_kaca$Glass <- as.factor(data_kaca$Glass)
data_kaca$Temp_Factor <- as.factor(data_kaca$Temp)
str(data_kaca)

anova2 <- aov(Light ~ Glass*Temp_Factor, data = data_kaca)
summary(anova2)

#c
data_summary <- group_by(data_kaca, Glass, Temp) %>%
  summarise(mean=mean(Light), sd=sd(Light)) %>%
  arrange(desc(mean))
print(data_summary)

#d
tukey <- TukeyHSD(anova2)
print(tukey)

#e
tukey.cld <- multcompLetters4(anova2, tukey)
print(tukey.cld)