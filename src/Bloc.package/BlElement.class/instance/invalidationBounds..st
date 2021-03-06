geometry bounds
invalidationBounds: aBounds
	"I compute and load damaged area in my local coordinates that would be invalidated
	if #invalidate would be sent to me"
	<return: #BlBounds>
	| anInvalidationBounds |

	anInvalidationBounds := (self effectBounds: aBounds) merge: self boundsInLocal.
	
	"in order to support debug drawing"
	misc debug ifTrue: [ anInvalidationBounds expandBy: 1 ].

	self clipChildren ifFalse: [ 
		| aChildBounds |
		aChildBounds := BlBounds new.
		self children do: [ :anElement |
			anElement invalidationBounds: aChildBounds.
			anElement localBoundsToParent: aChildBounds.
			anInvalidationBounds merge: aChildBounds ] ].

	^ anInvalidationBounds