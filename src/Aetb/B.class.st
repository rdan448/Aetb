Class {
	#name : #B,
	#superclass : #A,
	#category : #Aetb
}

{ #category : #accessing }
B >> ping [  
	"  "
	^ super pong
]

{ #category : #accessing }
B >> pong [  
	"  "
	^42
]
