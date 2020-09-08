// Increment index
if (text.index < text.currentLength) {
	text.index += text.speed;
}

// Turn the page?
if (keyboard_check_pressed(global.actions.confirm)) {
	text.onConfirm();
}