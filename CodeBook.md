Data Dictionary
===============

SUBJECT (integer)
	An identifier of the subject who carried out the experiment
			1..30

ACTIVITY (string)
	Activity type
			WALKING
			WALKING_UPSTAIRS
			WALKING_DOWNSTAIRS
			SITTING
			STANDING
			LAYING

AVG_BODY_ACC_X_MEAN (numeric)
	Mean body X-axis acceleration, averaged over subject and activity
			-1..1
	
AVG_BODY_ACC_X_SD (numeric)
	Standard deviation of body X-axis acceleration, averaged over subject and activity
			-1..1
	
AVG_BODY_GYRO_X_MEAN (numeric)
	Mean gyroscopic X-axis angular velocity, averaged over subject and activity
			-1..1
	
AVG_BODY_GYRO_X_SD (numeric)
	Standard deviation of gyroscopic X-axis angular velocity, averaged over subject and activity
			-1..1
	
AVG_TOTAL_ACC_X_MEAN (numeric)
	Mean total X-axis acceleration, averaged over subject and activity
			-1..1
	
AVG_TOTAL_ACC_X_SD (numeric)
	Standard deviation of total X-axis acceleration, averaged over subject and activity
			-1..1
	
... the same apllies for Y and Z axis.