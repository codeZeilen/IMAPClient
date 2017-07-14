protocol parse
folderPathFrom: responseLine
	
	| response | 	
	response := responseLine withBlanksTrimmed 
		copyReplaceAll: self class protocolQuote with: String empty.
		
	self hierarchyDelimiter: (response findTokens: self class protocolBlank) first.
	response := response copyWithoutFirst withBlanksTrimmed.
		
	^ response findTokens: self hierarchyDelimiter