/// @description Initialize global variables
global.fireball_array = [];
global.wizardport_array = [];

randomize();

enum ENEMYSTATE {
	IDLE,
	MOVING,
	CHASING
};