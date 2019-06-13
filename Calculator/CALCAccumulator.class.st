Class {
	#name : #CALCAccumulator,
	#superclass : #Object,
	#instVars : [
		'text',
		'result'
	],
	#category : #Calculator
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
	text := ''.
	result := 0
]

{ #category : #calculation }
CALCAccumulator >> compute [
	^ result
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
CALCAccumulator >> result [
	^ result
]

{ #category : #accessing }
CALCAccumulator >> text [
	^ text
]
