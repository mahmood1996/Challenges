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
						])) beSticky.

	aPane := ScrollPane new.
	aPane extent: imageMorph width @ imageMorph height.
	aPane scroller addMorph: (PasteUpMorph new 
		extent: imageMorph width @ imageMorph height;
		backgroundMorph: imageMorph ;
		addMorphFront: ('' asMorph 
								extent: (20 @ 20); 
								backgroundColor: Color orange
							)).
	aPane openInWindow.
]
