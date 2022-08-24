Class {
	#name : #BaselineOfFogComm,
	#superclass : #BaselineOf,
	#category : #BaselineOfFogComm
}

{ #category : #baselines }
BaselineOfFogComm >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ 
			
			spec blessing: #baseline.

			spec 
				baseline: 'NeoJSON' with: [ spec 	repository: 'github://svenvc/NeoJSON/repository' ];
				package: #Hexadecimal with: [ spec repository: 'github://sbragagnolo/Hexadecimal' ];
				baseline: 'Equals' with: [ spec repository: 'github://bouraqadi/PharoMisc' ];
				
				baseline: 'ParametrizedTests' with: [ spec repository: 'github://tesonep/ParametrizedTests' ];
				baseline: 'Pragmatic' with: [ spec repository: 'github://sbragagnolo/Pragmatic' ];

				package: #FogComm with: [ spec requires: #('Pragmatic' 'Equals' 'Hexadecimal') ];
				package: #FogCommTests with: [ spec requires: #('FogComm' 'ParametrizedTests') ] ]
]
