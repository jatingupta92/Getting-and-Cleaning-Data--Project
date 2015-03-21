##Step1 & Step4

activity_labels<-read.table("activity_labels.txt")
features<-read.table("features.txt")
activitynumber_train<-read.table("./train/y_train.txt")
subjectnumber_train<-read.table("./train/subject_train.txt")
data_train<-read.table("./train/X_train.txt")
activitynumber_test<-read.table("./test/y_test.txt")
subjectnumber_test<-read.table("./test/subject_test.txt")
data_test<-read.table("./test/X_test.txt")

colnames(data_test)<-features$V2
colnames(data_train)<-features$V2

temp1<-cbind(subjectnumber_test,activitynumber_test,data_test)
colnames(temp1)[1:2]<-c("subject.number","activity.number")
temp2<-cbind(subjectnumber_train,activitynumber_train,data_train)
colnames(temp2)[1:2]<-c("subject.number","activity.number")

data<-rbind(temp2,temp1)
temp1<-NULL
temp2<-NULL

##Step2

names<-colnames(data)
mcol<-grep('mean',names)
scol<-grep('std',names)
validcol<-append(1,append(2,append(mcol,scol)))
validcol<-sort(validcol)

data<-data[,validcol]

##Step3

temp<-merge(data,activity_labels,by.x='activity.number',by.y='V1')
temp$activity.number<-as.character(temp$V2)
temp<-select(temp,-(V2))
colnames(temp)[1]<-'activity.names'

##Step5

library(reshape2)
temp<-melt(temp,id=1:2)
data<-dcast(temp,subject.number+activity.names~variable,mean)
write.table(data,"data.txt",row.names=F)