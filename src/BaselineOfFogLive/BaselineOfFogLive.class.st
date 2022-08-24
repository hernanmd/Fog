Class {
	#name : #BaselineOfFogLive,
	#superclass : #BaselineOf,
	#category : #BaselineOfFogLive
}

{ #category : #baselines }
BaselineOfFogLive >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ 
			spec blessing: #baseline.

			spec baseline: 'Keccak' with: [ spec repository: 'github://smartanvil/Keccak:v0.1.1/src' ].
			spec baseline: 'FogComm' with: [ spec repository: 'github://smartanvil/Fog/src' ].
			spec baseline: 'SmaccSolidity' with: [ spec repository: 'github://smartanvil/SmaCC-Solidity' ].
			spec baseline: 'ParametrizedTests' with: [ spec repository: 'github://tesonep/ParametrizedTests' ].
			spec package: 'SolidityTestingResources' with: [ spec repository: 'github://smartanvil/SolidityTestingResources' ].
			spec package: 'FogEVM' with: [ spec repository: 'github://hernanmd/FogEVM' ].
			spec package: #Hexadecimal with: [ spec repository: 'github://sbragagnolo/Hexadecimal' ].
			spec baseline: 'NeoJSON' with: [ spec repository: 'github://svenvc/NeoJSON/repository' ].

			spec package: #FogLive with: [ spec requires: #('FogComm' 'Keccak' 'SmaccSolidity' #Hexadecimal) ].
			spec package: #FogLiveTests with: [ spec requires: #('FogLive' 'FogEVM' 'ParametrizedTests') ] ]
]
