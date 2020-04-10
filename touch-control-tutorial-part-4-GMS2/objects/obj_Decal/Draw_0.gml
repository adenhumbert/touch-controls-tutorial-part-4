//Spin the image angle
image_angle += turn * speed;

//if shadows enabled, draw them
if shadow
{
draw_sprite_ext(sprite_index, image_index, x + lengthdir_x(dist * speed, 225), y + lengthdir_y(dist * speed, 225), image_xscale, image_yscale, image_angle, c_black, image_alpha - 0.7);
}

//Draw the sprite
draw_self();

