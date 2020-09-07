// Increment index
if (text.index < text.currentLength) {
	text.index += text.speed;
}

// Turn the page?
if (keyboard_check_pressed(global.actions.confirm)) {
	var stillTyping = text.index + 1 < text.currentLength;
	var canSkip = stillTyping && text.index >= 2;
	var noPagesLeft = text.page + 1 >= text.pageCount;
	
	if (canSkip) {
		text.index = text.currentLength - 1; // Skip typing
	}
	else if (noPagesLeft) {
		instance_destroy(); // Dismiss dialogue
	}
	else {
		event_user(0); // Turn the page
	}
}