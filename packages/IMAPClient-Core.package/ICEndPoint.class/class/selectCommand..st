commands
selectCommand: aFolder

	^ {self protocolCommandStart . 
		'SELECT' . 
		aFolder asLowercase = 'inbox'
			ifTrue: [aFolder]
			ifFalse: [self asProtocolQuote: aFolder]} joinSeparatedBy: self protocolBlank
	