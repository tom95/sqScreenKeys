as yet unclassified
updatePosition

	| do |
	do := [self fullBounds. self right: ActiveWorld right].
	Processor activeProcess == Project uiProcess ifTrue: [do value] ifFalse: [
	Project current addDeferredUIMessage: do]