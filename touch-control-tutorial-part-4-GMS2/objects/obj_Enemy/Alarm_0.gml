//Check to see if the enemy is in the room
mp_potential_step(xx, yy, spd, false);      //Move the enemy

if point_distance(x, y, xx, yy) < spd * 2   //Check to see if it has reached the room entrance
{
go = true;                                  //It has, so ATTAAAACK!
}
else alarm[0] = 1;                          //It hasn't so repeat the alarm

