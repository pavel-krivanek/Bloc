tests
testNoMatchCombinationAlternative
	| kb kbr evt1 evt2 evt3 flag |
	flag := false.
	
	evt1 := BlKeyboardEvent new
		charCode: $c asInteger;
		modifiers: (BlKeyModifiers shift: false ctrl: true alt: true cmd: false).
	evt2 := BlKeyboardEvent new
		charCode: $d asInteger;
		modifiers: (BlKeyModifiers shift: false ctrl: true alt: true cmd: false).
	evt3 := BlKeyboardEvent new
		charCode: $e asInteger;
		modifiers: (BlKeyModifiers shift: false ctrl: true alt: true cmd: false).
		
	kb := BlShortcut new
		combination:( BlCombinationAlternative new
			add: (BlCombinationSequence new 
				add: (BlKeyCodeCombination new alt;ctrl;char:$c);
				add: (BlKeyCodeCombination new alt;ctrl;char:$e) );
			add:(BlKeyCodeCombination new alt;ctrl;char:$g ));
	   action:[flag := true].
	
	kbr := BlShortcutRegistry new.
	kbr add: kb.
	
	kbr processEvent: evt1.
	kbr processEvent: evt2.
	
	self assert: flag not.
	flag := false.
	
	kbr processEvent: evt3.
	self assert: flag not.
	
	
	