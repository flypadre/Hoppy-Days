extends KinematicBody2D

const SPEED = 1000
const GRAVITY = 300
const JUMP_SPEED = 3000
const UP = Vector2(0, -1)
var motion = Vector2(0,0)


func _physics_process(delta):
	apply_gravity()
	jump()
	move()
	move_and_slide(motion, UP)
	
func apply_gravity():
	if not is_on_floor():
		motion.y += GRAVITY
	else:
		motion.y = 0
		
func jump():
	if Input.is_action_just_pressed("jump") and is_on_floor():
		motion.y -= JUMP_SPEED
		
func move():
	if (Input.is_action_pressed("left") and Input.is_action_pressed("right")):
		motion.x = 0
	elif Input.is_action_pressed("left"):
		motion.x = -SPEED
	elif Input.is_action_pressed("right"):
		motion.x = SPEED
	else:
		motion.x = 0