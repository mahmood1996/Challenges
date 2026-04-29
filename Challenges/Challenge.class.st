"
Abstract class represent the shared behavior between all weekly challenges.
"
Class {
	#name : 'Challenge',
	#superclass : 'Object',
	#category : 'Challenges',
	#package : 'Challenges'
}

{ #category : 'executing' }
Challenge >> execute [
	"Method to be overridden"
	self subclassResponsibility 
]
