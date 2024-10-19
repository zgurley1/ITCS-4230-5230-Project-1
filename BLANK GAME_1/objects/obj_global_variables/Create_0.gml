/// @description Initialize global variables
global.fireball_array = [];
global.wizardport_array = [];
global.clickable = false;

randomize();

enum ENEMYSTATE {
	IDLE,
	MOVING,
	CHASING
};