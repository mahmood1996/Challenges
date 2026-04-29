"
Week One Challenge:
	- Show Pharo Logo as morph object in order to open it in a window.
"
Class {
	#name : 'WeekOneChallenge',
	#superclass : 'Challenge',
	#category : 'Challenges',
	#package : 'Challenges'
}

{ #category : 'executing' }
WeekOneChallenge >> execute [
	"Show Pharo Logo Image"
	
	^ (ZnEasy getPng: 'http://pharo.org/files/pharo.png') asMorph openInWindow 
]
