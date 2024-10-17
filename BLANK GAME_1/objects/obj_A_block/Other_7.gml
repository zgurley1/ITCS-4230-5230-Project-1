/// @description Destory this block and replace it with the counterpart
instance_create_layer(x,y,layer,other_block,
{
	image_xscale: image_xscale,
	image_yscale: image_yscale,
	image_angle: image_angle
});

with(obj_lever) {
	delay = false;
}
	
instance_destroy();