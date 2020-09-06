randomize();

global.gamePaused = false;
global.textSpeed = 0.75;
global.game_width = 750;
global.game_height = 420;

display_set_gui_size(global.game_width, global.game_height);

instance_create_layer(0, 0, "Instances", oTextBox);