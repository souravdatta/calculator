Class {
	#name : #CALCEnterButton,
	#superclass : #CALCBaseButton,
	#category : #Calculator
}

{ #category : #accessing }
CALCEnterButton >> action [
	self accumulator newLine
]
