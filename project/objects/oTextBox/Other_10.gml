// Turn the page
text.page = text.page == undefined
	? 0
	: text.page + 1;
	
text.current = text.pages[text.page];
text.currentLength = string_length(text.current);
text.index = 0;