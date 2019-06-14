Class {
	#name : #CALCClearAction,
	#superclass : #CALCBaseAction,
	#category : #Calculator
}

{ #category : #accessing }
CALCClearAction >> action [
	self accumulator clear
]
