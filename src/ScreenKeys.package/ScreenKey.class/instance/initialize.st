as yet unclassified
initialize

	super initialize.
	
	count := 1.
	
	self
		changeTableLayout;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		layoutInset: 10;
		color: Color black;
		addMorphBack: (StringMorph new
			contents: contents;
			font: (TextStyle defaultTTFont asPointSize: ScreenKeys fontSize px);
			width: ScreenKeys fontSize px * 2;
			color: Color white)