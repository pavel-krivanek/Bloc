instance creation
toDirection
	"Return a vector representing a direction in which the end of the curve is pointing"
	<return: #BlVector>
	
	^ (self toPosition - self curvaturePositions last) asBlocVector