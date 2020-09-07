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
	currentLength: undefined
};

text.pageCount = array_length(text.pages);

event_user(0);