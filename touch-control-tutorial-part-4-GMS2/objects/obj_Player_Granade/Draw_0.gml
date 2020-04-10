//Draw shadow
draw_sprite_ext(sprite_index, image_index, x + lengthdir_x(spd * 2, 225),y + lengthdir_y(spd * 2, 225), image_xscale + (speed / 20), image_yscale + (speed / 20), image_angle, c_black, 0.5 - (speed / 50));

//draw sprite
draw_self();


