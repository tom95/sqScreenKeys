as yet unclassified
filterEvent: aKeyboardEvent for: anObject

	aKeyboardEvent isKeystroke ifFalse: [^ aKeyboardEvent].
	self addMorphFront: (ScreenKey new event: aKeyboardEvent).
	self updatePosition.
	^ aKeyboardEvent