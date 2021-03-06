*Bloc-SVG
adaptedToElement: aBlElement
	"Sets the instance variables to match the BlElement size"
	|corner|
	corner := aBlElement geometry extent.
	self center: corner * (self center / 100) asFloatPoint.
	self focalPoint: corner * (self focalPoint / 100) asFloatPoint.
	self radius: (corner distanceTo:0@0) * (self radius / 100) asFloat.
	^self