library(AppliedPredictiveModeling)
data(concrete)
library(caret)
set.seed(1000)
inTrain = createDataPartition(mixtures$CompressiveStrength, p = 3/4)[[1]]
training = mixtures[ inTrain,]
testing = mixtures[-inTrain,]

ggplot(data=training,aes(x = seq(1, nrow(training)) , y = CompressiveStrength, color = Age)) + geom_point()

library(AppliedPredictiveModeling)
data(concrete)
library(caret)
set.seed(1000)
inTrain = createDataPartition(mixtures$CompressiveStrength, p = 3/4)[[1]]
training = mixtures[ inTrain,]
testing = mixtures[-inTrain,]
hist(training$Superplasticizer)
ggplot(data=training,aes(x = Superplasticizer)) + geom_histogram()



library(caret)
library(AppliedPredictiveModeling)
set.seed(3433)
data(AlzheimerDisease)
adData = data.frame(diagnosis,predictors)
inTrain = createDataPartition(adData$diagnosis, p = 3/4)[[1]]
training = adData[ inTrain,]
testing = adData[-inTrain,]

IL_col_idx <- grep("^[Ii][Ll].*", names(training))
preObj <- preProcess(training[, IL_col_idx], method=c("center", "scale", "pca"), thresh=0.8)
preObj


# ir.pca <- prcomp(training[, IL_col_idx],
#                  center = TRUE,
#                  scale. = TRUE) 
# print(ir.pca)
library(caret)
library(AppliedPredictiveModeling)
set.seed(3433)
data(AlzheimerDisease)
adData = data.frame(diagnosis,predictors)
inTrain = createDataPartition(adData$diagnosis, p = 3/4)[[1]]
training = adData[ inTrain,]
testing = adData[-inTrain,]
mod_fit <- train(diagnosis ~ Age + ForeignWorker + Property.RealEstate + Housing.Own + 
                   CreditHistory.Critical,  data=training, method="glm", family="binomial")

train(diagnosis ~ ., data=training, method="glm")
ß