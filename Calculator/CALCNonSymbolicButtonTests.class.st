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
CALCNonSymbolicButtonTests >> testClearButton [
	| curText |
	
	curText := acc text.
	btn := CALCClearButton newWith: acc name: 'CE'.
	acc addText: 'AA'.
	btn press.
	btn press.
	self assert: acc text equals: curText
]

{ #category : #tests }
CALCNonSymbolicButtonTests >> testFunctionButton [
	acc clear.
	acc addText: 'x'.
	btn := CALCFunctionButton newWith: acc name: 'SIN'.
	btn press.
	self assert: acc text equals: 'SIN(x)' 
]

{ #category : #tests }
CALCNonSymbolicButtonTests >> testNewLineButton [
	| curText |
	
	curText := acc text.
	btn := CALCEnterButton newWith: acc name: 'Enter'.
	btn press.
	btn press.
	self assert: acc text equals: (curText , (String with: Character cr) , (String with: Character cr))  
]
