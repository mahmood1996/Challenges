"
Week Three Challenge
	- Transform an image into an array of sprites and inspect it.
"
Class {
	#name : 'WeekThreeChallenge',
	#superclass : 'Challenge',
	#category : 'Challenges',
	#package : 'Challenges'
}

{ #category : 'private' }
WeekThreeChallenge >> allSprites [
	"Returns all sprites with size 64 * 64"
	
	| imageForm spriteSize sprites |

	imageForm := 'sprites.png' asFileReference binaryReadStreamDo: [:stream | PNGReadWriter formFromStream: stream].

	spriteSize := 64.	

	sprites := OrderedCollection new.

	0 to: imageForm height - spriteSize 
  	  by: spriteSize 
  	  do: [ :y | 
			0 to: imageForm width - spriteSize 
  		  	  by: spriteSize 
        	  do: [ :x | sprites add: (imageForm copy: (Rectangle origin: x @ y extent: 64 @ 64)) ] ].

	^ sprites

]

{ #category : 'executing' }
WeekThreeChallenge >> execute [
	"Inspect sprites returned from the image."
	
	self allSprites inspect.

]
