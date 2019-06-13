Class {
	#name : #CALCSymbolButton,
	#superclass : #CALCBaseButton,
	#category : #Calculator
}

{ #category : #accessing }
CALCSymbolButton >> action [
	self accumulator addText: self name
]
