Class {
	#name : #CALCBaseButton,
	#superclass : #Object,
	#instVars : [
		'name',
		'acc'
	],
	#category : 'Calculator'
}

{ #category : #'instance creation' }
CALCBaseButton class >> newWith: anAcc name: aName [
	| o |
	
	o := self new.
	o name: aName.
	o accumulator: anAcc.
	^ o
	
]

{ #category : #accessing }
CALCBaseButton >> accumulator [
	^ acc
]

{ #category : #accessing }
CALCBaseButton >> accumulator: anAcc [
	acc := anAcc
]

{ #category : #accessing }
CALCBaseButton >> action [
	self subclassResponsibility 
]

{ #category : #accessing }
CALCBaseButton >> name [
	^ name
]

{ #category : #accessing }
CALCBaseButton >> name: aName [
	name := aName

]

{ #category : #accessing }
CALCBaseButton >> press [
	self action
]
