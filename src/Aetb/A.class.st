Class {
	#name : #A,
	#superclass : #Object,
	#category : #Aetb
}

{ #category : #accessing }
A >> bar: aValue foo: anotherValue [
	"  "
	^ aValue - anotherValue
]

{ #category : #accessing }
A >> doesNotUnderstand: aMessage [
	"  "
	^ aMessage selector == #foo:bar:
		ifTrue: [  self bar: aMessage arguments second foo: aMessage arguments first]
		ifFalse: [ super doesNotUnderstand: aMessage ]
]

{ #category : #accessing }
A >> ping [ 
	"  "
	^ self pong
]

{ #category : #accessing }
A >> pong [ 
	"  "
	^ 3.14
]
