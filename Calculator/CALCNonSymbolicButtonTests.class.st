Class {
	#name : #CALCNonSymbolicButtonTests,
	#superclass : #TestCase,
	#instVars : [
		'acc',
		'btn'
	],
	#category : #Calculator
}

{ #category : #initialization }
CALCNonSymbolicButtonTests >> initialize [
	acc := CALCAccumulator new
]

{ #category : #tests }
CALCNonSymbolicButtonTests >> testClearAction [
	| curText |
	
	curText := acc text.
	btn := CALCClearAction newWith: acc name: 'CE'.
	acc addText: 'AA'.
	btn press.
	btn press.
	self assert: acc text equals: curText
]

{ #category : #tests }
CALCNonSymbolicButtonTests >> testFunctionAction [
	acc clear.
	acc addText: 'x'.
	btn := CALCFunctionAction newWith: acc name: 'SIN'.
	btn press.
	self assert: acc text equals: 'SIN(x)' 
]

{ #category : #tests }
CALCNonSymbolicButtonTests >> testNewLineAction [
	| curText |
	
	curText := acc text.
	btn := CALCEnterAction newWith: acc name: 'Enter'.
	btn press.
	btn press.
	self assert: acc text equals: (curText , (String with: Character cr) , (String with: Character cr))  
]
