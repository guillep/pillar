tests-parsing
testParseLevel2
	| wiki text tree |
	wiki := '!!foo'.
	text := 'foo'.
	tree := PRDocument new
		add: ((PRHeader new)
			level: 2;
			add: (PRText content: 'foo');
			yourself);
		yourself.
	self assertWiki: wiki equalsTree: tree.
	self assertTree: tree equalsWiki: wiki.
	self assertTree: tree equalsText: text