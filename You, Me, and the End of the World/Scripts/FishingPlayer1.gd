extends KinematicBody2D

var velocity = Vector2()
const SPEED = 2

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _process(delta):
	var left = Input.is_action_pressed("p1_move_left")
	var right = Input.is_action_pressed("p1_move_right")
	var up = Input.is_action_pressed("p1_move_up")
	var down = Input.is_action_pressed("p1_move_bottom")
	
	if left:
		velocity -= Vector2(SPEED,0)
		pass
	elif right:
		velocity += Vector2(SPEED,0)
		pass
	elif down:
		velocity += Vector2(0,SPEED)
		pass
	elif up:
		velocity -= Vector2(0,SPEED)
		pass
		
	if velocity != Vector2(0,0):
		move_and_slide(velocity)
		#emit_signal("move")
	pass
