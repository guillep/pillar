building
buildOn: aPRProject 
	
	| parsedDocument transformedDocument writtenFile |
	parsedDocument := self parseInputFile: file.
	transformedDocument := self transformDocument: parsedDocument.
	writtenFile := self writeDocument: transformedDocument.
	self postWriteTransform: writtenFile.