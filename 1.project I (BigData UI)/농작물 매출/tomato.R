setwd("C:/Temp/R_data/matrix")
tomato <- read.csv("tomato_matrix.csv", header=T)
head(tomato)
tomato

mod <- lm(revenue~Pcost+Hprice+temp+rain+sun+insolation+gdp+area+yield, data=tomato)
mod
summary(mod)

#단계적 선택법을 사용한 회귀분석
library(MASS)
mod2 <- stepAIC(mod,direction = "both")
mod2
summary(mod2)

#23년도 매출을 다른변수 조건을 마지막 년도와 조건이 동일하다고 생각하고 매출 추출
Pcost <- c(tomato[19,3])
Hprice <- c(tomato[19,5])
rain <- c(tomato[19,7])
sun <- c(tomato[19,8])
area <- c(tomato[19,11])
result <- -9.976e+06 + 1.054e+00*Pcost + 1.482e+03*Hprice + 2.621e+04*rain + 3.709e+04*sun -6.241e+03*area
result

#년도별 매출 추이를 분석하기 위해 값 입력
revenue <- c((tomato$revenue)/10000, result/10000)
revenue
year <- c((tomato$year), 2023)
year

#년도별 매출 추이 그래프 생성
plot(year, revenue, main="토마토 매출 변화", type="o", lty=1, lwd=2, col="red", xlab="년도", ylab="10a당 매출(만원)")