tests - from cocoon
testReadingTitle
	| dictionary config |
	dictionary := Dictionary with: 'title' -> 'foo'.
	config := self configurationClass newFromDictionary: dictionary.
	self assert: config title equals: 'foo'