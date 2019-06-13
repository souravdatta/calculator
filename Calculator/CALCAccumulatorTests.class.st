Class {
	#name : #CALCAccumulatorTests,
	#superclass : #TestCase,
	#instVars : [
		'acc'
	],
	#category : #Calculator
}

{ #category : #initialization }
CALCAccumulatorTests >> initialize [
	acc := CALCAccumulator new.
]

{ #category : #tests }
CALCAccumulatorTests >> testAccGo [
	acc addText: '2 + 2'.
	acc compute.
	self assert: acc result equals: 0
]

{ #category : #tests }
CALCAccumulatorTests >> testAddBlankFunction [
	acc addFunction: 'jump'.
	self assert: acc text equals: 'jump()'
]

{ #category : #tests }
CALCAccumulatorTests >> testAddFirstText [
	acc addText: 'a'.
	self assert: acc text equals: 'a'
]

{ #category : #tests }
CALCAccumulatorTests >> testAddFunction [
	acc addText: '2 + x'.
	acc addFunction: 'sin'.
	self assert: acc text equals: 'sin(2 + x)'
]

{ #category : #tests }
CALCAccumulatorTests >> testAddMoreText [
	acc addText: '2'.
	acc addText: '3'.
	self assert: acc text equals: '23'
]

{ #category : #tests }
CALCAccumulatorTests >> testClear [
	acc addText: 'gibberish 2332'.
	acc clear.
	self assert: acc text equals: ''
]

{ #category : #tests }
CALCAccumulatorTests >> testInitResult [
	self assert: acc result equals: 0
]

{ #category : #tests }
CALCAccumulatorTests >> testInitVal [
	self assert: acc text equals: '' 
]

{ #category : #tests }
CALCAccumulatorTests >> testLargeSequence [
	acc addText: '234';
		addText: '+';
		addText: '345';
		addText: '*';
		addText: 'X';
		addFunction: 'SQRT';
		addText: '*(X + Y)'.
	self assert: acc text equals: 'SQRT(234+345*X)*(X + Y)'
]

{ #category : #tests }
CALCAccumulatorTests >> testNewline [
	acc addText: 'abc'.
	acc newLine.
	Transcript show: 'Testing |'; show: acc text; show: '|'; cr.
	self assert: acc text equals: ('abc' , (String with: Character cr))
]

{ #category : #tests }
CALCAccumulatorTests >> testRemoveAll [
	acc addText: 'AB'.
	acc removeLast.
	acc removeLast.
	self assert: acc text equals: ''
]

{ #category : #tests }
CALCAccumulatorTests >> testRemoveText [
	acc addText: 'A'.
	acc addText: 'B'.
	acc removeLast.
	self assert: acc text equals: 'A' 
]

{ #category : #tests }
CALCAccumulatorTests >> testRemoveVery [
	acc addText: '12'.
	acc removeLast.
	acc removeLast.
	acc removeLast.
	self assert: acc text equals: ''
]
