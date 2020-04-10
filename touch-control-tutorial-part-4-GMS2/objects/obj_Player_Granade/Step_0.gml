//Set depth (for shadow effects)
if depth < -15 depth+=5;

//Bouncing control to simulate throw, bounce and roll
if bounce=true
{
spd = speed*2;
image_angle += speed*3;
if speed <= 3
    {
    bounce=false;
    friction=0.06;
    }
}
else
{
spd=speed;
image_angle+=speed*6;
}

