"
Week Four Challenge
	- Show capitals list from api.geonames.org.
	- Show ""The Terminator"" film poster.
"
Class {
	#name : 'WeekFourChallenge',
	#superclass : 'Challenge',
	#category : 'Challenges',
	#package : 'Challenges'
}

{ #category : 'executing' }
WeekFourChallenge >> execute [
	"Show capitals and film poster"
	
	self showCapitals.
	self showFilmPoster
	
]

{ #category : 'private' }
WeekFourChallenge >> showCapitals [
	"Show capitals returned from api.geonames.org"

	Transcript 
		open;
		show: ((((STON fromString: (ZnEasy
											get: 'http://api.geonames.org/countryInfoJSON' 
											username: 'demo' 
											password: '') contents) at: 'geonames')
				collect: [ :each | each at: 'capital' ])
				select: [ :each | each isNotEmpty ]) asString
	
]

{ #category : 'private' }
WeekFourChallenge >> showFilmPoster [
	"Show (The Terminator) film poster"

	(ZnEasy getJpeg: ((STON fromString: (ZnClient new 
		url: 'https://www.omdbapi.com';
		queryAt: 't' put: 'The Terminator';
		queryAt: 'apikey' put: 'c8027044';
		get) contents) at: 'Poster')) asMorph openInWindow 
	
]
