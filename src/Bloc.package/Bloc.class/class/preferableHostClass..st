accessing
preferableHostClass: aHostClass
	
	PreferableHostClass := aHostClass.

	"change preferable universe host according to new setting"
	BlUniverse default preferableHost: aHostClass new.
	SettingBrowser allSubInstances do: [ :aSettingsBrowser | aSettingsBrowser treeChanged: Announcement new ]