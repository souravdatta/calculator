Class {
	#name : #CALCSymbolButtonTests,
	#superclass : #TestCase,
	#instVars : [
		'acc',
		'symbtn1',
		'symbtn2'
	],
	#category : #Calculator
}

{ #category : #initialization }
CALCSymbolButtonTests >> initialize [
	acc := CALCAccumulator new.
	symbtn1 := CALCSymbolButton newWith: acc name: 'A'. 
	symbtn2 := CALCSymbolButton newWith: acc name: 'B'
]

{ #category : #tests }
CALCSymbolButtonTests >> testMultiPress [
	symbtn1 press; press; press.
	self assert: symbtn1 accumulator text equals: 'AAA'
]

{ #category : #tests }
CALCSymbolButtonTests >> testName [
	self assert: symbtn1 name equals: 'A'.
	self assert: symbtn2 name equals: 'B'
]

{ #category : #tests }
CALCSymbolButtonTests >> testPress [
	symbtn1 press.
	symbtn2 press.
	symbtn2 press.
	symbtn1 press.
	self assert: symbtn1 accumulator text equals: 'ABBA'
]

{ #category : #tests }
CALCSymbolButtonTests >> testPress1 [
	symbtn1 press.
	self assert: symbtn1 accumulator text equals: 'A'
]

{ #category : #tests }
CALCSymbolButtonTests >> testPress2 [
	symbtn2 press.
	self assert: symbtn2 accumulator text equals: 'B'
]
