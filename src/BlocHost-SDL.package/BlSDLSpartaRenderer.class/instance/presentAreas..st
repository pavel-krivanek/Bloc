updating screen
presentAreas: allDamage
	| pitchHolder externalForm intersection |
	self validate
		ifFalse: [ ^ self ].
		
	pixels := ExternalAddress new.
	pitchHolder := ExternalAddress allocate: 4.
	[
		texture lockPixels: pixels pitch: pitchHolder.
		pitch := pitchHolder signedLongAt: 1.
	] ensure: [ pitchHolder free ].
	
	[
		externalForm := SpartaExternalForm extent: textureExtent depth: 32 bits: pixels.
		allDamage do: [ :rectangle |
			intersection := rectangle
				intersect: (0 @ 0 corner: sdlSpace rendererExtent)
				ifNone: [ nil ].
		
			intersection ifNotNil: [
				self primitiveUpdateRectangle: rectangle externalForm: externalForm.
			]
		].
	] ensure: [
		texture unlock.
		externalForm destroySurface
	].
