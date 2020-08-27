as yet unclassified
initialize

	super initialize.
	
	self
		changeTableLayout;
		hResizing: #shrinkWrap;
		vResizing: #rigid;
		color: Color transparent;
		listDirection: #bottomToTop;
		cellPositioning: #bottomRight