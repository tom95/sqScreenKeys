as yet unclassified
filterEvent: aKeyboardEvent for: anObject

	| key |
	aKeyboardEvent isKeystroke ifFalse: [^ aKeyboardEvent].
	key := ScreenKey new event: aKeyboardEvent.
	(self hasSubmorphs and: [key contents = self firstSubmorph contents]) ifTrue: [self firstSubmorph increment] ifFalse: [self addMorphFront: key].
	self updatePosition.
	^ aKeyboardEvent