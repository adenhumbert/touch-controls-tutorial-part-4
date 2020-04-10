// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 0; // obj_Controller
global.__objectDepths[1] = 0; // obj_Col_Parent
global.__objectDepths[2] = -1000; // obj_Wall
global.__objectDepths[3] = -100; // obj_Enemy
global.__objectDepths[4] = -80; // obj_Explosive
global.__objectDepths[5] = -200; // obj_Player
global.__objectDepths[6] = -6000; // obj_Player_Bullet
global.__objectDepths[7] = -150; // obj_Player_Granade
global.__objectDepths[8] = -300; // obj_Flash
global.__objectDepths[9] = -500; // obj_Explosion
global.__objectDepths[10] = -5; // obj_Decal
global.__objectDepths[11] = -50; // obj_Casing


global.__objectNames[0] = "obj_Controller";
global.__objectNames[1] = "obj_Col_Parent";
global.__objectNames[2] = "obj_Wall";
global.__objectNames[3] = "obj_Enemy";
global.__objectNames[4] = "obj_Explosive";
global.__objectNames[5] = "obj_Player";
global.__objectNames[6] = "obj_Player_Bullet";
global.__objectNames[7] = "obj_Player_Granade";
global.__objectNames[8] = "obj_Flash";
global.__objectNames[9] = "obj_Explosion";
global.__objectNames[10] = "obj_Decal";
global.__objectNames[11] = "obj_Casing";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for