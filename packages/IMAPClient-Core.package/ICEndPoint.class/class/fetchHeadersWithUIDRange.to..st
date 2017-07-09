commands
fetchHeadersWithUIDRange: aBeginId to: anEndId

	^ {self protocolCommandStart . 'UID FETCH' .
		(aBeginId asString, ':', anEndId asString) .
		'(body[HEADER.FIELDS (from to subject date)])' } joinSeparatedBy: self protocolBlank