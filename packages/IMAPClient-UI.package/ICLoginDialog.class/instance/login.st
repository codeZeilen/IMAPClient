login
login

	| endpoint |
	endpoint := ICEndPoint new.
	[ endpoint 
		ssl: self ssl;
		connectTo: self serverAddress asString on: self serverPort asNumber;
		login: self username using: self password ]
		on: Error
		do: [ :sig | self inform: sig asString ].
	(endpoint isLoggedIn)
		ifTrue: [ 
			self inform: self class successLoginMessage.
			ICFolderDialog openWith: (ICFolder parseFromServer: endpoint) ] 
		ifFalse: [ self inform: self class failureLoginMessage ].