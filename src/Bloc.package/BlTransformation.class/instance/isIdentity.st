testing
isIdentity
	"Return true if I represent an identity transformation, false otherwise"
	<return: #Boolean>

	self hasMatrix
		ifFalse: [ ^ true ].
	
	^ self is2D
		ifTrue: [ 
			self ensure2D.
			matrix2D isIdentity ]
		ifFalse: [ 
			self shouldBeImplemented ]