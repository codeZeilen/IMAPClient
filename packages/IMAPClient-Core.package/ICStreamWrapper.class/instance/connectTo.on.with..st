connection
connectTo: aHost on: aPort with: aStreamClass

	| hostAddress |
	hostAddress := NetNameResolver addressForName: aHost.
	self close.	
	(self useSSL)
		ifTrue: [ self sslConnectTo: hostAddress on: aPort ]
		ifFalse: [ self stream: (aStreamClass openConnectionToHost: hostAddress port: aPort) ].
	