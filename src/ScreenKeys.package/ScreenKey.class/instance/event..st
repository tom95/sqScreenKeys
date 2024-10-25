as yet unclassified
event: anEvent

	contents := String streamContents: [:s | self format: anEvent on: s].
	self contents: contents.
	Project current addDeferredUIMessage: [self addAlarm: #delete after: 3000]