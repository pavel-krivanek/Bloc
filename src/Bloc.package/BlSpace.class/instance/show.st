displaying
show
	"Open me in a window and show it to the user"

	"delegate showing work to the Universe"
	BlUniverse default showSpaceWindow: self.
	
	"Notify root element that it is now visible to the user"
	root dispatchAddedToSceneGraph.
	
	self requestNextPulse.