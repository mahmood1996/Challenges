"
Challenges

The entry point of all Weekly Challenges.
"
Class {
	#name : 'Challenges',
	#superclass : 'Object',
	#instVars : [
		'challenges'
	],
	#category : 'Challenges',
	#package : 'Challenges'
}

{ #category : 'executing' }
Challenges >> execute [
	"execute all available challenges"
	
	^ challenges do: [ :each | each execute ]
]

{ #category : 'initialization' }
Challenges >> initialize [
	"preparing all challenges"
	
	super initialize.
	
	challenges := { 
		WeekOneChallenge new . 
		WeekTwoChallenge new . 
		WeekThreeChallenge new . 
		WeekFourChallenge new	
	}

	

]
