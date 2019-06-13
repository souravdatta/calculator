Class {
	#name : #CALCFunctionButton,
	#superclass : #CALCBaseButton,
	#category : #Calculator
}

{ #category : #accessing }
CALCFunctionButton >> action [
	self accumulator addFunction: self name
]
