login
fetchHeader: messageId

	self stream sendCommand: (self class fetchHeaderCommand: messageId).
	^ self
		fetchNextResponse;
		parseFetchHeader
		
	
	