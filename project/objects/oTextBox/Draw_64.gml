NineSliceBoxStretched(
	textbox.sprite, 
	textbox.x1, textbox.y1, 
	textbox.x2, textbox.y2, 
	textbox.index);

var typedText = string_copy(text.current, 1, text.index);
draw_text_ext(
	textbox.x1 + 10, textbox.y1 + 10, 
	typedText, 
	text.height, textbox.width);
	