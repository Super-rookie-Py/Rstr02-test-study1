### Data structure 1 2020/4/2 by Keonwoo Park

#메트릭스는 원소와 행 or 개수를 넣어서 지정한다 원소를 정하지않으면 행, 렬 둘다 필요
data_1 <- matrix(1:12, nrow = 3, dimnames = list(c('x','y','z'),c("apple","Orange","banana","mango")))
data_1
is.matrix(data_1)

colnames(data_1)

# 데이터 프레임
data_2 <- data.frame()
x1 <- c(1:10)
x2 <- c(1, 1, 1, 1, 1, 5, 5, 5, 5, 5)
x3 <- c(1,2,3,4,5, 1,2,3,4,5)
data_2 <- data.frame(x1,x2,x3)      
data_2
data_3 <- as.matrix(data_2)
is.matrix(data_2)
is.matrix(data_3)
data_2

# sd(x) 표준편차 구하기

sd(data_1)
data_4 <- c(1,1,1,1,2,1,1)
#2차원이상에선 한행이나 열만 뽑아야한다.
sd(data_2$x1)
# byrow = F 가 디폴트값으로 한열씩 값을 채우는 법 T로할시 행부터 값을 넣는다.
data_5 <- matrix(data_2$x2,nrow=2,byrow =F)
data_5

#sqrt(x) 제곱근 구하기

sqrt(10)
sqrt(5)
sqrt(4)
#함수를 안써도 제곱근을 구할수 있다
7^0.5
10^0.5

#mean() 평균값 구하기

mean(data_2$x1)
mean(data_1)
data_5<- array(data_3, c(3,5,2), dimnames <- list(c("page_a","page_b","page_c"),c('a',"b","c","d","e"),c("1","2")))
data_5
mean(data_5)

#length() 데이터 개수구하기

length(data_1)
#데이터 프레임의 경우 변수의 개수가 표시됨
length(data_2)
length(data_5)
length(data_2$x1)

#plot(x, y)

plot(data_2$x1, data_2$x2)
#boxplot
boxplot(data_3)

#quantile(x)
#분위수구하기
quantile(data_1)

# summary() 최소,최대, 분위수들을 요약함

summary(data_2)
summary(data_1)
summary(data_4)

#head() 배열이나 행렬이 행이 많을때 몇 개만 표시해줌. 디폴트값 6 

head(data_2)
#밑에서 6개만 표시해줌
tail(data_2)

#var()

var(data_2)
sd(data_2$x1)^2

#sort() 정렬하기

sort(data_2$x3)
