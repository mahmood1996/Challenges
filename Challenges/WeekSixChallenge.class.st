"
Week Six Challenge
	- Fetching a dictionary contains pairs whose key is description of the location and the value its latitude and longitude. 
"
Class {
	#name : #WeekSixChallenge,
	#superclass : #Challenge,
	#category : #Challenges
}

{ #category : #executing }
WeekSixChallenge >> execute [
	"Fetching a dictionary contains pairs whose key is description of the location and the value its latitude and longitude."
	| apiResult finalResult |
	
	apiResult := STON fromString: ( ZnClient new
		url: 'https://nominatim.openstreetmap.org/search';
		queryAt: 'q' put: 'Rue de Paris'; 
		queryAt: 'format' put: 'jsonv2';
		queryAt: 'limit' put: 10;
		get ).
	
	finalResult := apiResult collect: [ 
		:aDict | 
		(aDict at: 'display_name') -> 
			(Point 
				x: (aDict at: 'lat') asNumber 
				y: (aDict at: 'lon') asNumber)
	].

	finalResult inspect
]
