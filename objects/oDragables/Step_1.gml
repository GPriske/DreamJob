if image_xscale > 1
{
image_xscale = max(image_xscale-0.02,1)
image_yscale = max(image_yscale-0.02,1)
image_blend = color
image_angle = 0
}
else
{
image_blend = c_white
}

image_alpha = min(image_alpha+0.02,1)