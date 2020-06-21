
#We have to use ggplot function for all kind of graphical assesments in an easy manner.

install.packages("ggplot2")
library("ggplot2")

#Use boxplots to view the relationship between the numeric variables: `age`, `sibsp`, `parch` and `fare` and the dependent variable `survived`. Comment on each relationship.


ggplot(titanic_data, aes(x = Survived, y = Age)) +
  geom_boxplot()

ggplot(titanic_data, aes(x = Survived, y = SibSp)) +
  geom_boxplot()

ggplot(titanic_data, aes(x = Survived, y = Parch)) +
  geom_boxplot()

ggplot(titanic_data, aes(x = Survived, y = Fare)) +
  geom_boxplot()

#Use stacked barplots to view the relationship between the categorical variables: `pclass`, `sex`, and `embarked` and the dependent variable `survived`. Comment on each relationship.



ggplot(titanic_data, aes(x = Survived, fill = Pclass)) +
  geom_bar(position = "stack")

ggplot(titanic_data, aes(x = Survived, fill = Sex)) +
  geom_bar(position = "stack")

ggplot(titanic_data, aes(x = Survived, fill = Embarked)) +
  geom_bar(position = "stack")

