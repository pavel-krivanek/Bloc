transformations
translateBy: aVector
	"Append a translation transformation by a given vector"
	
	transformation addTransformation: ((BlTranslationTransformation translation: aVector asTranslate3D) origin: origin)