# Getting_Cleaning_Data

The script provided reads a series of files from the working directory and generates a new file tidy_data.txt summarising some of the variables from the original files.

In order to work properly, the file activity_lables.txt must be located in the working directory and the data from test and train groups should be located in two directories named test and train.

Each stepline of the program has been properly commented in order to understand how the script works.

CODE BOOK

Data aquisition.
Two types of signals were recorded from sensors: triaxial total acceleration and triaxial angular velocity.
Each sample was obtained applying noise filters to the raw signal from the sensor and averaging 128 readings (2.56 s at 50 Hz sampling rate). Data are normalized and bounded around [-1,1].
The acceleration signal was separated into two different signals: graviatational and body motion. A Butterworth low-pass filter was used to perform the separation.
The acceleration signal was measured is standard gravity units, g and the angular velocity in rad/s. 
All data are normalized and bounded around [-1,1].

Data in the file.
person: id from a group of 30 volunteers within an age bracket of 19-48 years. Values 1 to 30.
activity_desc: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.
Mean_Body_Acceleration_X: Mean value signal from the estimated body acceleration in the X axis. 
Mean_Body_Acceleration_Y: Mean value signal from the the estimated body acceleration in the Y axis. 
Mean_Body_Acceleration_Z: Mean value signal from the the estimated body acceleration in the Z axis. 
Standard_dev_Body_Acceleration_X: Standard deviation from signal estimated body acceleration in the X axis.
Standard_dev_Body_Acceleration_Y: Standard deviation from signal estimated body acceleration in the Y axis.
Standard_dev_Body_Acceleration_Z: Standard deviation from signal estimated body acceleration in the Z axis.
Mean_Gravity_Acceleration_X: Mean value signal from the gravity acceleration in the X axis.
Mean_Gravity_Acceleration_Y: Mean value signal from the gravity acceleration in the Y axis.
Mean_Gravity_Acceleration_Z: Mean value signal from the gravity acceleration in the Z axis.
Standard_dev_Gravity_Acceleration_X: Standard deviation from gravity acceleration in the X axis.
Standard_dev_Gravity_Acceleration_Y: Standard deviation from gravity acceleration in the Y axis.
Standard_dev_Gravity_Acceleration_Z: Standard deviation from gravity acceleration in the Z axis.
Mean_Body_Giro_X: Mean value signal from the angular velocity measured by the gyroscope in the X axis. 
Mean_Body_Giro_Y: Mean value signal from the angular velocity measured by the gyroscope in the Y axis. 
Mean_Body_Giro_Z: Mean value signal from the angular velocity measured by the gyroscope in the Z axis.
Standard_dev_Body_Giro_X: Standard deviation from from the angular velocity measured by the gyroscope in the X axis.
Standard_dev_Body_Giro_Y: Standard deviation from from the angular velocity measured by the gyroscope in the Y axis.
Standard_dev_Body_Giro_Z: Standard deviation from from the angular velocity measured by the gyroscope in the Z axis.
