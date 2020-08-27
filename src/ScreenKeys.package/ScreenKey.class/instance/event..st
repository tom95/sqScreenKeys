as yet unclassified
event: anEvent

	| string |
	string := anEvent keyCharacter printString.
	anEvent commandKeyPressed ifTrue: [string := 'Cmd+', string].
	(anEvent shiftPressed and: [anEvent keyCharacter isLetter not]) ifTrue: [string := 'Cmd+', string].
	self addMorphBack: (StringMorph new
		contents: string;
		color: Color white).
	
	(Smalltalk at: #SBEditor) ifNotNil: [:editorClass |
		(SystemWindow keyWindow firstSubmorph isKindOf: editorClass) ifTrue: [ | mode |
			mode := SystemWindow keyWindow firstSubmorph mode.
			mode = #command ifTrue: [self color: Color white].
			mode = #input ifTrue: [
				self color: (Color red mixed: 0.5 with: Color white)].
			self firstSubmorph color: Color black]].
	
	Project current addDeferredUIMessage: [self addAlarm: #delete after: 3000]