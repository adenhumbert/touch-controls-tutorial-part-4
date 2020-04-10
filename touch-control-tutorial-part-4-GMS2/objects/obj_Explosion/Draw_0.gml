draw_set_blend_mode(bm_add);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
draw_sprite_ext(spr_Explosion_Bloom, image_index, x, y, -image_xscale, image_yscale, spr_angle, image_blend, image_alpha);
draw_set_blend_mode(bm_normal);

