library(plyr)

# read in and compose train data

train_subject <- read.table("train/subject_train.txt")
train_X <- read.table("train/X_train.txt")
train_Y <- read.table("train/Y_train.txt")
body_acc_x <- read.table("train/Inertial Signals/body_acc_x_train.txt")
body_acc_y <- read.table("train/Inertial Signals/body_acc_y_train.txt")
body_acc_z <- read.table("train/Inertial Signals/body_acc_z_train.txt")
body_gyro_x <- read.table("train/Inertial Signals/body_gyro_x_train.txt")
body_gyro_y <- read.table("train/Inertial Signals/body_gyro_y_train.txt")
body_gyro_z <- read.table("train/Inertial Signals/body_gyro_z_train.txt")
total_acc_x <- read.table("train/Inertial Signals/total_acc_x_train.txt")
total_acc_y <- read.table("train/Inertial Signals/total_acc_y_train.txt")
total_acc_z <- read.table("train/Inertial Signals/total_acc_z_train.txt")
train <- train_subject
train <- cbind(train, train_X)
train <- cbind(train, train_Y)
train <- cbind(train, body_acc_x)
train <- cbind(train, body_acc_y)
train <- cbind(train, body_acc_z)
train <- cbind(train, body_gyro_x)
train <- cbind(train, body_gyro_y)
train <- cbind(train, body_gyro_z)
train <- cbind(train, total_acc_x)
train <- cbind(train, total_acc_y)
train <- cbind(train, total_acc_z)
names(train) <- c("subject",
                  paste("X_", c(1:561), sep = ""),
                  "activity",
                  paste("body_acc_x_", c(1:128), sep = ""),
                  paste("body_acc_y_", c(1:128), sep = ""),
                  paste("body_acc_z_", c(1:128), sep = ""),
                  paste("body_gyro_x_", c(1:128), sep = ""),
                  paste("body_gyro_y_", c(1:128), sep = ""),
                  paste("body_gyro_z_", c(1:128), sep = ""),
                  paste("total_acc_x_", c(1:128), sep = ""),
                  paste("total_acc_y_", c(1:128), sep = ""),
                  paste("total_acc_z_", c(1:128), sep = ""))

# extract only the data on the mean and standard deviation 
# for each measurement

train_s <- train_subject
train_s <- cbind(train_s, train_Y)
train_s <- cbind(train_s, apply(body_acc_x, 1, mean))
train_s <- cbind(train_s, apply(body_acc_x, 1, sd))
train_s <- cbind(train_s, apply(body_acc_y, 1, mean))
train_s <- cbind(train_s, apply(body_acc_y, 1, sd))
train_s <- cbind(train_s, apply(body_acc_z, 1, mean))
train_s <- cbind(train_s, apply(body_acc_z, 1, sd))
train_s <- cbind(train_s, apply(body_gyro_x, 1, mean))
train_s <- cbind(train_s, apply(body_gyro_x, 1, sd))
train_s <- cbind(train_s, apply(body_gyro_y, 1, mean))
train_s <- cbind(train_s, apply(body_gyro_y, 1, sd))
train_s <- cbind(train_s, apply(body_gyro_z, 1, mean))
train_s <- cbind(train_s, apply(body_gyro_z, 1, sd))
train_s <- cbind(train_s, apply(total_acc_x, 1, mean))
train_s <- cbind(train_s, apply(total_acc_x, 1, sd))
train_s <- cbind(train_s, apply(total_acc_y, 1, mean))
train_s <- cbind(train_s, apply(total_acc_y, 1, sd))
train_s <- cbind(train_s, apply(total_acc_z, 1, mean))
train_s <- cbind(train_s, apply(total_acc_z, 1, sd))
names(train_s) <- c("subject",
                    "activity",
                    "body_acc_x_mean",
                    "body_acc_x_sd",
                    "body_acc_y_mean",
                    "body_acc_y_sd",
                    "body_acc_z_mean",
                    "body_acc_z_sd",
                    "body_gyro_x_mean",
                    "body_gyro_x_sd",
                    "body_gyro_y_mean",
                    "body_gyro_y_sd",
                    "body_gyro_z_mean",
                    "body_gyro_z_sd",
                    "total_acc_x_mean",
                    "total_acc_x_sd",
                    "total_acc_y_mean",
                    "total_acc_y_sd",
                    "total_acc_z_mean",
                    "total_acc_z_sd")

# read in and compose test data

test_subject <- read.table("test/subject_test.txt")
test_X <- read.table("test/X_test.txt")
test_Y <- read.table("test/Y_test.txt")
body_acc_x <- read.table("test/Inertial Signals/body_acc_x_test.txt")
body_acc_y <- read.table("test/Inertial Signals/body_acc_y_test.txt")
body_acc_z <- read.table("test/Inertial Signals/body_acc_z_test.txt")
body_gyro_x <- read.table("test/Inertial Signals/body_gyro_x_test.txt")
body_gyro_y <- read.table("test/Inertial Signals/body_gyro_y_test.txt")
body_gyro_z <- read.table("test/Inertial Signals/body_gyro_z_test.txt")
total_acc_x <- read.table("test/Inertial Signals/total_acc_x_test.txt")
total_acc_y <- read.table("test/Inertial Signals/total_acc_y_test.txt")
total_acc_z <- read.table("test/Inertial Signals/total_acc_z_test.txt")
test <- test_subject
test <- cbind(test, test_X)
test <- cbind(test, test_Y)
test <- cbind(test, body_acc_x)
test <- cbind(test, body_acc_y)
test <- cbind(test, body_acc_z)
test <- cbind(test, body_gyro_x)
test <- cbind(test, body_gyro_y)
test <- cbind(test, body_gyro_z)
test <- cbind(test, total_acc_x)
test <- cbind(test, total_acc_y)
test <- cbind(test, total_acc_z)
names(test) <- c("subject",
                  paste("X_", c(1:561), sep = ""),
                  "activity",
                  paste("body_acc_x_", c(1:128), sep = ""),
                  paste("body_acc_y_", c(1:128), sep = ""),
                  paste("body_acc_z_", c(1:128), sep = ""),
                  paste("body_gyro_x_", c(1:128), sep = ""),
                  paste("body_gyro_y_", c(1:128), sep = ""),
                  paste("body_gyro_z_", c(1:128), sep = ""),
                  paste("total_acc_x_", c(1:128), sep = ""),
                  paste("total_acc_y_", c(1:128), sep = ""),
                  paste("total_acc_z_", c(1:128), sep = ""))

# extract only the data on the mean and standard deviation 
# for each measurement

test_s <- test_subject
test_s <- cbind(test_s, test_Y)
test_s <- cbind(test_s, apply(body_acc_x, 1, mean))
test_s <- cbind(test_s, apply(body_acc_x, 1, sd))
test_s <- cbind(test_s, apply(body_acc_y, 1, mean))
test_s <- cbind(test_s, apply(body_acc_y, 1, sd))
test_s <- cbind(test_s, apply(body_acc_z, 1, mean))
test_s <- cbind(test_s, apply(body_acc_z, 1, sd))
test_s <- cbind(test_s, apply(body_gyro_x, 1, mean))
test_s <- cbind(test_s, apply(body_gyro_x, 1, sd))
test_s <- cbind(test_s, apply(body_gyro_y, 1, mean))
test_s <- cbind(test_s, apply(body_gyro_y, 1, sd))
test_s <- cbind(test_s, apply(body_gyro_z, 1, mean))
test_s <- cbind(test_s, apply(body_gyro_z, 1, sd))
test_s <- cbind(test_s, apply(total_acc_x, 1, mean))
test_s <- cbind(test_s, apply(total_acc_x, 1, sd))
test_s <- cbind(test_s, apply(total_acc_y, 1, mean))
test_s <- cbind(test_s, apply(total_acc_y, 1, sd))
test_s <- cbind(test_s, apply(total_acc_z, 1, mean))
test_s <- cbind(test_s, apply(total_acc_z, 1, sd))
names(test_s) <- c("subject",
                    "activity",
                    "body_acc_x_mean",
                    "body_acc_x_sd",
                    "body_acc_y_mean",
                    "body_acc_y_sd",
                    "body_acc_z_mean",
                    "body_acc_z_sd",
                    "body_gyro_x_mean",
                    "body_gyro_x_sd",
                    "body_gyro_y_mean",
                    "body_gyro_y_sd",
                    "body_gyro_z_mean",
                    "body_gyro_z_sd",
                    "total_acc_x_mean",
                    "total_acc_x_sd",
                    "total_acc_y_mean",
                    "total_acc_y_sd",
                    "total_acc_z_mean",
                    "total_acc_z_sd")

# merge train and test data
data <- rbind(train, test)
data_s <- rbind(train_s, test_s)

# read and apply activity labels
act_lab <- read.table("activity_labels.txt")
data$activity <- sapply(data$activity, 
                        function(x) act_lab[which(act_lab[1] == x), 2])
data_s$activity <- sapply(data_s$activity, 
                        function(x) act_lab[which(act_lab[1] == x), 2])

# create and write tidy data set (task #5)

data_tidy <- ddply(data_s, 
                   c("subject", "activity"),
                   summarise,
                   avg_body_acc_x_mean = mean(body_acc_x_mean),
                   avg_body_acc_x_sd = mean(body_acc_x_sd),
                   avg_body_acc_y_mean = mean(body_acc_y_mean),
                   avg_body_acc_y_sd = mean(body_acc_y_sd),
                   avg_body_acc_z_mean = mean(body_acc_z_mean),
                   avg_body_acc_z_sd = mean(body_acc_z_sd),
                   avg_body_gyro_x_mean = mean(body_gyro_x_mean),
                   avg_body_gyro_x_sd = mean(body_gyro_x_sd),
                   avg_body_gyro_y_mean = mean(body_gyro_y_mean),
                   avg_body_gyro_y_sd = mean(body_gyro_y_sd),
                   avg_body_gyro_z_mean = mean(body_gyro_z_mean),
                   avg_body_gyro_z_sd = mean(body_gyro_z_sd),
                   avg_total_acc_x_mean = mean(total_acc_x_mean),
                   avg_total_acc_x_sd = mean(total_acc_x_sd),
                   avg_total_acc_y_mean = mean(total_acc_y_mean),
                   avg_total_acc_y_sd = mean(total_acc_y_sd),
                   avg_total_acc_z_mean = mean(total_acc_z_mean),
                   avg_total_acc_z_sd = mean(total_acc_z_sd))

write.csv(data_tidy, "data_tidy.csv")