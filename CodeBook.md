##CODE BOOK

### Feature Selection

The features selected for this database come from the accelerometer and
gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain
signals (prefix 't' to denote time) were captured at a constant rate of
50 Hz. Then they were filtered using a median filter and a 3rd order low
pass Butterworth filter with a corner frequency of 20 Hz to remove
noise. Similarly, the acceleration signal was then separated into body
and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ)
using another low pass Butterworth filter with a corner frequency of 0.3
Hz.

Subsequently, the body linear acceleration and angular velocity were
derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and
tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional
signals were calculated using the Euclidean norm (tBodyAccMag,
tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these
signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ,
fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to
indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for
each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Additional vectors obtained by averaging the signals in a signal window
sample. These are used on the angle() variable:

gravityMean tBodyAccMean tBodyAccJerkMean tBodyGyroMean
tBodyGyroJerkMean

The set of variables that were estimated using the signals and included
in the tidy data are:

**mean(): Mean value** 
**std(): Standard deviation**

All the labels of tidy data have been shown below along with their
combined mean value for 30 people and 6 Activities.

First column in the tidy dataset is used to represent a person and the
second column correspond to the activity being performed.

various activities performed are:

1.  WALKING
2.  WALKING\_UPSTAIRS
3.  WALKING\_DOWNSTAIRS
4.  SITTING
5.  STANDING
6.  LAYING

<!-- -->

    ##                        ColumnNames      Average
    ## 1                   subject.number           NA
    ## 2                   activity.names           NA
    ## 3                tBodyAcc-mean()-X  0.274302742
    ## 4                tBodyAcc-mean()-Y -0.017875524
    ## 5                tBodyAcc-mean()-Z -0.109163816
    ## 6                 tBodyAcc-std()-X -0.557690076
    ## 7                 tBodyAcc-std()-Y -0.460462635
    ## 8                 tBodyAcc-std()-Z -0.575560246
    ## 9             tGravityAcc-mean()-X  0.697477506
    ## 10            tGravityAcc-mean()-Y -0.016212836
    ## 11            tGravityAcc-mean()-Z  0.074127871
    ## 12             tGravityAcc-std()-X -0.963752531
    ## 13             tGravityAcc-std()-Y -0.952429560
    ## 14             tGravityAcc-std()-Z -0.936401042
    ## 15           tBodyAccJerk-mean()-X  0.079473560
    ## 16           tBodyAccJerk-mean()-Y  0.007565210
    ## 17           tBodyAccJerk-mean()-Z -0.004953403
    ## 18            tBodyAccJerk-std()-X -0.594946700
    ## 19            tBodyAccJerk-std()-Y -0.565414714
    ## 20            tBodyAccJerk-std()-Z -0.735957689
    ## 21              tBodyGyro-mean()-X -0.032437160
    ## 22              tBodyGyro-mean()-Y -0.074259572
    ## 23              tBodyGyro-mean()-Z  0.087444647
    ## 24               tBodyGyro-std()-X -0.691639903
    ## 25               tBodyGyro-std()-Y -0.653302030
    ## 26               tBodyGyro-std()-Z -0.616435294
    ## 27          tBodyGyroJerk-mean()-X -0.096056796
    ## 28          tBodyGyroJerk-mean()-Y -0.042692782
    ## 29          tBodyGyroJerk-mean()-Z -0.054801883
    ## 30           tBodyGyroJerk-std()-X -0.703632715
    ## 31           tBodyGyroJerk-std()-Y -0.763551835
    ## 32           tBodyGyroJerk-std()-Z -0.709559184
    ## 33              tBodyAccMag-mean() -0.497289667
    ## 34               tBodyAccMag-std() -0.543908671
    ## 35           tGravityAccMag-mean() -0.497289667
    ## 36            tGravityAccMag-std() -0.543908671
    ## 37          tBodyAccJerkMag-mean() -0.607929592
    ## 38           tBodyAccJerkMag-std() -0.584175610
    ## 39             tBodyGyroMag-mean() -0.565163077
    ## 40              tBodyGyroMag-std() -0.630394720
    ## 41         tBodyGyroJerkMag-mean() -0.736369300
    ## 42          tBodyGyroJerkMag-std() -0.755015189
    ## 43               fBodyAcc-mean()-X -0.575799984
    ## 44               fBodyAcc-mean()-Y -0.488732713
    ## 45               fBodyAcc-mean()-Z -0.629738754
    ## 46                fBodyAcc-std()-X -0.552201112
    ## 47                fBodyAcc-std()-Y -0.481478730
    ## 48                fBodyAcc-std()-Z -0.582361415
    ## 49           fBodyAcc-meanFreq()-X -0.232266097
    ## 50           fBodyAcc-meanFreq()-Y  0.011528880
    ## 51           fBodyAcc-meanFreq()-Z  0.043717426
    ## 52           fBodyAccJerk-mean()-X -0.613928222
    ## 53           fBodyAccJerk-mean()-Y -0.588163069
    ## 54           fBodyAccJerk-mean()-Z -0.714358487
    ## 55            fBodyAccJerk-std()-X -0.612103283
    ## 56            fBodyAccJerk-std()-Y -0.570730969
    ## 57            fBodyAccJerk-std()-Z -0.756489426
    ## 58       fBodyAccJerk-meanFreq()-X -0.069101791
    ## 59       fBodyAccJerk-meanFreq()-Y -0.228102066
    ## 60       fBodyAccJerk-meanFreq()-Z -0.137602309
    ## 61              fBodyGyro-mean()-X -0.636739605
    ## 62              fBodyGyro-mean()-Y -0.676686801
    ## 63              fBodyGyro-mean()-Z -0.604391244
    ## 64               fBodyGyro-std()-X -0.711035658
    ## 65               fBodyGyro-std()-Y -0.645433416
    ## 66               fBodyGyro-std()-Z -0.657746586
    ## 67          fBodyGyro-meanFreq()-X -0.104551025
    ## 68          fBodyGyro-meanFreq()-Y -0.167407476
    ## 69          fBodyGyro-meanFreq()-Z -0.057180944
    ## 70              fBodyAccMag-mean() -0.536516693
    ## 71               fBodyAccMag-std() -0.620963293
    ## 72          fBodyAccMag-meanFreq()  0.076128175
    ## 73      fBodyBodyAccJerkMag-mean() -0.575617493
    ## 74       fBodyBodyAccJerkMag-std() -0.599160868
    ## 75  fBodyBodyAccJerkMag-meanFreq()  0.162545885
    ## 76         fBodyBodyGyroMag-mean() -0.667099100
    ## 77          fBodyBodyGyroMag-std() -0.672322350
    ## 78     fBodyBodyGyroMag-meanFreq() -0.036032248
    ## 79     fBodyBodyGyroJerkMag-mean() -0.756385271
    ## 80      fBodyBodyGyroJerkMag-std() -0.771517052
    ## 81 fBodyBodyGyroJerkMag-meanFreq()  0.125922459
