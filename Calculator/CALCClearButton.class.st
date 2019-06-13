Class {
	#name : #CALCClearButton,
	#superclass : #CALCBaseButton,
	#category : #Calculator
}

{ #category : #accessing }
CALCClearButton >> action [
	self accumulator clear
]
