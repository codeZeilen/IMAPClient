logout
testListFoldersWithSpaces

	| specialFolder |
	self endPoint stream server responses: self endPoint stream server authenticatedResponses.
	self endPoint listAllFolders.
	
	specialFolder := self endPoint rootFolder childFolders 
		detect: [:f | f name = 'AnotherFolder']
		ifNone: [self fail].
	self assert: 1 equals: specialFolder childFolders size.
	self assert: 'With Spaces' equals: specialFolder childFolders first name.