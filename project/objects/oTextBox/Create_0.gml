textbox = {
	sprite: sprTextBoxes,
	index: 0,
	x1: 0,
	y1: global.game_height * 0.6,
	x2: global.game_width,
	y2: global.game_height,	
};

textbox.width = textbox.x2 - textbox.x1;

text = {
	height: string_height("ABCDEFGHIJKLMNOPQRSTUVWXYZ"),
	speed: 1,
	index: 0,
	page: undefined,
	pages: [
		"Hello, friend. This is a test to see what your text is like.", 
		"You will find that there are multiple strings to view and to test."
	],
	current: undefined,
	currentLength: undefined,
	onConfirm: function() {
		if (canSkip()) {
			index = currentLength; // Skip typing
		}
		else if (canPage()) {
			turnPage(); // Turn the page
		}
		else {
			instance_destroy(other); // Dismiss dialogue
		}
	},
	canSkip: function() {
		var stillTyping = index + 1 < currentLength;
		return stillTyping && index >= 2;
	},
	canPage: function() {
		return page + 1 < pageCount;
	},
	turnPage: function() {
		// Turn the page
		page = page == undefined
			? 0
			: page + 1;
		var currentText = pages[page];
		// TODO: Add newlines at appropriate breakpoints
		current = currentText;
		currentLength = string_length(current);
		index = 0;
	}
};

text.pageCount = array_length(text.pages);
text.turnPage();