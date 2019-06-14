Class {
	#name : #CALCFunctionAction,
	#superclass : #CALCBaseAction,
	#category : #Calculator
}

{ #category : #accessing }
CALCFunctionAction >> action [
	self accumulator addFunction: self name
]
