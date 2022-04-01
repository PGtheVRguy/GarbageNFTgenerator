/// @description On create
//"%appdata%/Roaming/nftgen/inputs/sbase/sbase" + string(irandom_range(1,sprAmount)) + ".png"
//"C:/Users/"+ user + "/AppData/Roaming/nftgen


////IMPORTANT\\\\

//ALL IMAGES/SPRITES IT TAKES ARE FOUND IN THE AppData\Roaming\nftgen\inputs, just search for %appdata% in the window
//bar, then look for 'nftgen', then inputs. All composed images are found just in the nftgen folder, not inputs.

spriteName = string(item) + string(irandom_range(1,amount))//Gets the name of what sprite it wants to use
customSpriteDir = "inputs/" + string(item) + "/" + string(spriteName) + ".png"//Grabs said sprite it wants to use.



imageDir = string(customSpriteDir) //converts the location of the sprite name to a string.

spr_base = sprite_add(imageDir, 1, false, false, 0, 0); //adds that sprite as spr_(item name)
image_index = spr_base //sets the sprites to spr_item name)
sprite_index = spr_base

show_debug_message(imageDir); //says that it has been made

show_debug_message(sprite_index) 

image_xscale = 20/8 //image scale just in case you change it.
image_yscale = 20/8




//All other items under the CHILDREN folder are just children of this. 
//They used the changed variables under the 'VARIABLE DEFINITIONS' tab.
//These just set their sprites, generator does the creating, screenshotting, deleting.


//ENJOY!!


//created by PGtheVRguy(sadly)












//===DEBUG OLD STUFF===//
//file_text_open_write("lmao.png")


//IMPORTED FROM WEDGE

//global.customSprite = get_open_filename_ext(".png", "", working_directory, "Select .png for custom image");
//global.customSprite = get_open_filename_ext(".png", "", "%appdata%/wedge", "Select .png for custom image");