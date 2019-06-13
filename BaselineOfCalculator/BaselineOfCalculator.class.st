Class {
	#name : #BaselineOfCalculator,
	#superclass : #BaselineOf,
	#category : 'BaselineOfCalculator'
}

{ #category : #baselines }
BaselineOfCalculator >> baseline: spec [
	<baseline>
	spec for: #common do: [ 
		spec package: 'Calculator';
			  package: 'Calculator-Tests' with: [ spec requires: #('Calculator') ]
	]
]
