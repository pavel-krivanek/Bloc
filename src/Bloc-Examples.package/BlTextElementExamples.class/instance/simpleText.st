example
simpleText
	<gtExample>
	| text textElement |
	
	text := BrRopedText string: (String loremIpsum: 50).
	textElement := BlTextElement new.
	textElement text: text.
	textElement background: Color paleYellow.
	textElement padding: (BlInsets all: 20).
	^ textElement
