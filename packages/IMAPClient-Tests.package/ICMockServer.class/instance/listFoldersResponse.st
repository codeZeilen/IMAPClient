initialization
listFoldersResponse 

	^ OrderedCollection newFrom: {
		'* LIST (\Unmarked \HasChildren) "." "INBOX"'.
		'* LIST (\HasNoChildren) "." "INBOX.Drafts"'.
		'* LIST (\HasNoChildren) "." "INBOX.Spam.Testordner"'.
		'* LIST (\HasNoChildren) "." "INBOX.Sent"'.
		'* LIST (\HasChildren) "." "INBOX.Spam"'.
		'* LIST (\HasNoChildren) "." "INBOX.Trash"'.
		'* LIST (\HasNoChildren) "." "AnotherFolder.With Spaces"'.
		'. OK LIST completed'}