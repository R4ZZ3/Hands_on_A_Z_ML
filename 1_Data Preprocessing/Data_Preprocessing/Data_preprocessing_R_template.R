#Data Preprocessing


#Importing the dataset
dataset = read.csv("Data.csv")
dataset = dataset[, 2:3]


#Splitting the dataset into the Training set and Test set
#install.packages("caTools")
#fgtlibrary(caTools) tälleenkin voi ottaa kirjaston käyttöön tai Packages osiosta
set.seed(123)
split = sample.split(dataset$Purchased, SplitRatio = 2/3)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

# Feature Scaling 
# training_set[,2:3]= scale(training_set[,2:3])
# test_set[,2:3] = scale(test_set[,2:3])