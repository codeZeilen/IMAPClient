logout
testListAllFolders

	self endPoint stream server responses: self endPoint stream server authenticatedResponses.
	self endPoint listAllFolders.
	
	self assert: 8 equals: self endPoint rootFolder countFolders.
	