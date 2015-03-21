##Human Activity Recognition Using Smartphones Dataset Version 1.0

###By- Jatin Gupta

CodeBook.md summarizes each column of the tidy data. An R script "TidyData.R" has also been provided to generate tidy data from the given data.

Firstly the given data is downloaded,unzipped and is set as the working directory.

**Various steps involved in the preparation of tidy data are:**

1. Read training data and test data in two different tables.
2. Use "features.txt" to add column names to both the tables.
3. Add contents of the files "subject_train.txt/subject_test.txt" and "activity_labels.txt" as two separate columns named "subject.number & activity.number" in taining/test data.
4. Use the function rbind() to combine both the tables. **This completes Objective 1 & Objective 4.**
5. Search for column names of data obtained in the previous step, containing the keywords 'mean' & 'std'.
6. Subset the data obtained in step4, so that it contains the columns found in step 5 only. **This completes Objective 2.**
7. Merge the data obtained in the previous step along with "activity_labels.txt" by activity number. Let us assume that the column name corresponding to activity names is V2.
8. Copy the contents of V2 in the column named "activity.number".
9. Remove column V2 from the data and rename the column named "activity.number" to "activity.name". **This completed Objective 3.**
10.Using reshape2 package, melt the data obtained in the previous step by keeping first two columns as the "id" variables.
11.Cast the melted data by using casting function as "subject.number+activity.names~variable" and aggregation function as "mean". **This completed Objective 5.**
