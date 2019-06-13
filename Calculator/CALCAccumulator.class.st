Class {
	#name : #CALCAccumulator,
	#superclass : #Object,
	#instVars : [
		'text'
	],
	#category : 'Calculator'
}

{ #category : #setter }
CALCAccumulator >> addFunction: aString [ 
	text := aString , '(' , text , ')'
]

{ #category : #setter }
CALCAccumulator >> addText: aString [ 
	text := text , aString
]

{ #category : #setter }
CALCAccumulator >> clear [
	text := ''
]

{ #category : #initialization }
CALCAccumulator >> initialize [
	self clear
]

{ #category : #setting }
CALCAccumulator >> newLine [
	text := text , (String with: Character cr)
]

{ #category : #setter }
CALCAccumulator >> removeLast [
	text := text size > 1
		ifTrue: [ text copyFrom: 1 to: text size - 1 ]
		ifFalse: [ '' ]
]

{ #category : #accessing }
CALCAccumulator >> text [
	^ text
]
