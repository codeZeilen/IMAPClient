login
parseFetchHeader

	| emailObject |
	emailObject := ICEmailObject new.
	self stream nextResponse.
	self stream nextResponse.
	emailObject to: (self stream lastResponse subStrings: ' ') second.
	self stream nextResponse.
	self stream nextResponse.
	emailObject from: self stream lastResponse withBlanksTrimmed.
	self stream nextResponse.
	emailObject subject: (((self stream lastResponse subStrings: ' ') allButFirst) joinSeparatedBy: ' ').
	self stream nextResponse.
	emailObject date: (((self stream lastResponse subStrings: ' ') allButFirst) joinSeparatedBy: ' ').
	self stream nextResponse.
	self stream nextResponse.
	self stream nextResponse.
	^ emailObject
		
		
	
	