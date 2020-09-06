function NineSliceBoxStretched(sprite, x1, y1, x2, y2, index){
	var size = sprite_get_width(sprite)/3;
	var w = x2 - x1;
	var h = y2 - y1;
	
	// MIDDLE
	draw_sprite_part_ext(sprite, index, 
		size, size, 1, 1, 
		x1 + size, y1 + size, 
		w - size * 2, h - size * 2, 
		c_white, 1);
	
	// CORNERS
	// Top Left
	draw_sprite_part(sprite, index,
		0, 0, size, size, 
		x1, y1);
	
	// Top Right
	draw_sprite_part(sprite, index,
		size * 2, 0, size, size,
		x2 - size, y1);
		
	// Bottom Left
	draw_sprite_part(sprite, index,
		0, size * 2, size, size,
		x1, y2 - size);
	
	// Bottom Right
	draw_sprite_part(sprite, index,
		size * 2, size * 2, size, size,
		x2 - size, y2 - size);
	
	// EDGES
	// Left
	draw_sprite_part_ext(sprite, index,
		0, size, size, 1,
		x1, y1 + size,
		1, h - size * 2,
		c_white, 1);
	
	// Right
	draw_sprite_part_ext(sprite, index,
		size * 2, size, size, 1,
		x2 - size, y1 + size,
		1, h - size * 2,
		c_white, 1);
	
	// Top
	draw_sprite_part_ext(sprite, index,
		size, 0, 1, size,
		x1 + size, y1,
		w - size * 2, 1,
		c_white, 1);
	
	
	// Bottom
	draw_sprite_part_ext(sprite, index,
		size, size * 2, 1, size,
		x1 + size, y2 - size,
		w - size * 2, 1,
		c_white, 1);
}