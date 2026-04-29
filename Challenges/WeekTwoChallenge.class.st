"
Week Two Challenge:
	- Show avatar related to MD5 hash of Dr. Stephane email.
"
Class {
	#name : 'WeekTwoChallenge',
	#superclass : 'Challenge',
	#category : 'Challenges',
	#package : 'Challenges'
}

{ #category : 'executing' }
WeekTwoChallenge >> execute [
	"Show avatar related to MD5 hash of Dr. Stephane email"
	
	| imgUrl imgName |

	imgName:= [ 
		:aString | 
		
		(MD5 hashMessage: aString trimmed asLowercase) hex
	].

	imgUrl := [ :aName | 'http://www.gravatar.com/avatar/' , aName ,'.jpg' ].

	^ (ZnEasy getJpeg: (imgUrl value: (imgName value: 'stephane.ducasse@inria.fr'))) asMorph openInWindow 
]
