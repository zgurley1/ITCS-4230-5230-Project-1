/// @description Initialize vairbales and states
enum STATE {
	IDLE,
	MOVING,
	DAMAGED,
	SHOOT_FIREBALL,
	FLAMETHROWER,
	BULLET_HELL
};

enum ATTACKS {
	BULLET_HELL
}

boss_state = STATE.IDLE;