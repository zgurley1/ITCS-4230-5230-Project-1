/// @description Initialize vairbales and states
enum STATE {
	IDLE,
	MOVING,
	DAMAGED,
	SHOOT_FIREBOLT,
	BIG_FIREBALL,
	BULLET_HELL
};

enum ATTACKS {
	BULLET_HELL,
	FIREBOLT,
	BIG_FIREBALL
}

boss_state = STATE.IDLE;

big_fireball = 0; //Variable to hold the instance ID for the big fireball

//Set to initial position
x = global.wizardport_array[0].x;
y = global.wizardport_array[0].y;