bounds conversion
localBoundsToTransformed: aBounds
	"In-place transform bounds from local coordinates to my parent's coordinates.
	Note, that I do not return a new rectangle and instead mutate provided one,
	so do not forget to send #asRectangle to given mutable rectangle in order to get
	immutable one that can be safely stored as instance variable."
	<return: #BlBounds>

	"first apply transformation if we have one"
	self referenceElement transformation transformBounds: aBounds.

	^ aBounds