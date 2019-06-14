Class {
	#name : #CALCBaseAction,
	#superclass : #Object,
	#instVars : [
		'name',
		'acc'
	],
	#category : #Calculator
}

{ #category : #'instance creation' }
CALCBaseAction class >> newWith: anAcc name: aName [
	| o |
	
	o := self new.
	o name: aName.
	o accumulator: anAcc.
	^ o
	
]

{ #category : #accessing }
CALCBaseAction >> accumulator [
	^ acc
]

{ #category : #accessing }
CALCBaseAction >> accumulator: anAcc [
	acc := anAcc
]

{ #category : #accessing }
CALCBaseAction >> action [
	self subclassResponsibility 
]

{ #category : #accessing }
CALCBaseAction >> name [
	^ name
]

{ #category : #accessing }
CALCBaseAction >> name: aName [
	name := aName

]

{ #category : #accessing }
CALCBaseAction >> press [
	self action
]
