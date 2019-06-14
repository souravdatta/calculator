Class {
	#name : #CALCSymbolAction,
	#superclass : #CALCBaseAction,
	#category : #Calculator
}

{ #category : #accessing }
CALCSymbolAction >> action [
	self accumulator addText: self name
]
