transformation
inverseTransformPoint: aPoint
	"Apply an inversed transformation on a given point and return a result.
	Note: Throws BlSingularMatrixError if underlying matrix is singular"
	<return: #Point>
	
	aPoint isPoint
		ifFalse: [ self error: 'Only points can be transformed!' ].

	self hasMatrix
		ifNil: [ ^ aPoint ].
	
	^ (self is2D and: [ aPoint isPoint2D ])
		ifTrue: [ 
			self ensure2D.
			matrix2D inverted transformPoint: aPoint ]
		ifFalse: [ self shouldBeImplemented ]