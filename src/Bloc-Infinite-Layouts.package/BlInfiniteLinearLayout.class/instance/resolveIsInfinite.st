layout - computations
resolveIsInfinite
	"Return true if we should add children infinitely until we run out of items in data source or hit maxHeight/ maxWidth"
	<return: #Boolean>

	^ self orientation measurementSpec isUnspecified
		and: [ self orientation end isZero ]