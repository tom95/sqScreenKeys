as yet unclassified
format: anEvent on: aStream

	| p |
	anEvent commandKeyPressed ifTrue: [aStream nextPutAll: 'Cmd '].
	(anEvent shiftPressed or: [anEvent keyCharacter isLetter and: [anEvent keyCharacter isUppercase]]) ifTrue: [aStream nextPutAll: 'Shift '].
	(anEvent controlKeyPressed and: [anEvent commandKeyPressed not]) ifTrue: [aStream nextPutAll: 'Ctrl '].
	anEvent optionKeyPressed ifTrue: [aStream nextPutAll: 'Opt '].
	
	anEvent keyCharacter = Character cr ifTrue: [^ aStream nextPutAll: 'enter'].
	anEvent keyCharacter = Character arrowUp ifTrue: [^ aStream nextPutAll: 'up'].
	anEvent keyCharacter = Character arrowDown ifTrue: [^ aStream nextPutAll: 'down'].
	anEvent keyCharacter = Character arrowLeft ifTrue: [^ aStream nextPutAll: 'left'].
	anEvent keyCharacter = Character arrowRight ifTrue: [^ aStream nextPutAll: 'right'].
	
	anEvent keyCharacter = Character pageDown ifTrue: [^ aStream nextPutAll: 'page-down'].
	anEvent keyCharacter = Character pageUp ifTrue: [^ aStream nextPutAll: 'page-up'].
	
	p := anEvent keyCharacter printString.
	aStream nextPutAll: (p first = $$ ifTrue: [p allButFirst] ifFalse: [
		(p beginsWith: 'Character ')
			ifTrue: [p allButFirst: 'Character ' size]
			ifFalse: [p]])