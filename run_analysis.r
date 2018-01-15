#Read the files
x_train <- read.table("train/X_train.txt", sep = "" , header = F , na.strings ="", stringsAsFactors= F);
x_test  <- read.table("test/X_test.txt", sep = "" , header = F , na.strings ="", stringsAsFactors= F);
y_train  <- read.table("train/y_train.txt", sep = "" , header = F , na.strings ="", stringsAsFactors= F);
y_test  <- read.table("test/y_test.txt", sep = "" , header = F , na.strings ="", stringsAsFactors= F);
subject_train  <- read.table("train/subject_train.txt", sep = "" , header = F , na.strings ="", stringsAsFactors= F);
subject_test  <- read.table("test/subject_test.txt", sep = "" , header = F , na.strings ="", stringsAsFactors= F);
activities <- read.table("activity_labels.txt", sep=" ",  header = F , na.strings ="", stringsAsFactors= F);
features <- read.table("features.txt", sep=" ",  header = F , na.strings ="", stringsAsFactors= F);

#Assign column names
colnames(subject_train) <- c("Subject")
colnames(subject_test) <- c("Subject")
colnames(y_test) <- c("ActivityID")
colnames(y_train) <- c("ActivityID")
colnames(x_test) <- features[,2]
colnames(x_train) <- features[,2]
colnames(activities) <- c("ActivityID", "ActivityName")

#binding data
test_data <- cbind(subject_test, y_test, x_test)
train_data <- cbind(subject_train, y_train, x_train)
feature_data <- rbind(x_test,x_train)
complete_data<-rbind(test_data, train_data, make.row.names=FALSE)

#assign activity names
complete_data$ActivityID <- factor(as.factor(complete_data$ActivityID), labels=activities[,2])

#metrics
means <- sapply(feature_data, mean, na.rm = T) 
sds <- sapply(feature_data, sd, na.rm=T)
result <- data.frame(features[,2],means,sds)
colnames(result) <- c("Feature","Mean","Standard Desviation")

#Tidy data by subject + activity
install.packages("plyr")
library("plyr")
tidy<-aggregate(. ~Subject + ActivityID, complete_data, mean, na.rm=T)
tidy<-tidy[order(tidy$subject,tidy$activity),]


#Writing file
write.table(tidy, "tidy.txt", row.names=FALSE)