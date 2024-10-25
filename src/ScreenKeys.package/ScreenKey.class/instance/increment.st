as yet unclassified
increment

	count := count + 1.
	self firstSubmorph contents: contents, ' x', count asString.
	Transcript showln: contents, ' x', count asString