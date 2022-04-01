/// @description Each frame

if keyboard_check_pressed(ord("R")) //restarts the game, only use in errors.
{
	room_restart()	;
}

fullAuto += 1 //fullAuto is a timer, it goes up one per frame.

if fullAuto >= 5 //if full auto is more or equal to 5 frames,
{
	name = (string(global.body)	 + string(global.shirt) + string(global.glasses) + string(global.hats))+".png" //Creates the name of the combos done by each other object
	if !ds_list_find_index(nft_names, name) //Checks if the combo doesnt already exist
	{
		if !file_exists(name){
			screen_save(string(name)) //saves it
		}
	}	
}

if fullAuto >=7 //7 frames after the timer started, it deletes everything
{
	with obj_body{instance_destroy()}
	with obj_glasses{instance_destroy()}
	with obj_hats{instance_destroy()}
	with obj_background{instance_destroy()}
	with obj_shirt{instance_destroy()}
}
if fullAuto >=9 //after 9 frames of the timer starting
{ //Recreates everything for a new combo
	instance_create_layer(0,0,"Instances", obj_background)
	instance_create_layer(0,0,"base", obj_body)
	instance_create_layer(0,0,"glasses", obj_glasses)
	instance_create_layer(0,0,"ears", obj_ears)
	instance_create_layer(0,0,"hats", obj_hats)
	instance_create_layer(0,0,"shirt", obj_shirt)
	fullAuto = 0; //restarts.
}