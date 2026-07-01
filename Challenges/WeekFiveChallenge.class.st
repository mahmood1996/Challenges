"
Week Five Challenge
	- Show a Scrollable Pane with a Map image as Background. 
"
Class {
	#name : #WeekFiveChallenge,
	#superclass : #Challenge,
	#category : #Challenges
}

{ #category : #executing }
WeekFiveChallenge >> execute [
	"Show a Scrollable Pane with a map image as a background and a little draggable orange morph on it"

	| imageMorph aPane |

	imageMorph := (AlphaImageMorph withForm: ('world_map.png' asFileReference 
						binaryReadStreamDo: [ 
							:stream | 
							PNGReadWriter formFromStream: stream 
						])) lock; yourself .

	aPane := ScrollPane new.
	aPane extent: imageMorph width @ imageMorph height.
	aPane scroller addMorph: (PasteUpMorph new 
		color: Color gray;
		borderWidth: 3;
		borderColor: Color black;
		extent: imageMorph width @ imageMorph height;
		backgroundMorph: imageMorph ;
		addMorph: (CircleMorph new color: Color cyan; position: 41 @ 23);
		addMorph: (Morph new
								extent: 20 @ 20; 
								color: Color orange;
								position: 370 @ 290
							)).
	aPane openInWindow.
]
