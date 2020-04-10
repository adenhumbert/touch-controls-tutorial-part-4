//reduce alpha and destroy when no longer moving
alarm[0]=3;
if speed<0.1
{
if image_alpha<=0 instance_destroy() else image_alpha-=0.05;
}

