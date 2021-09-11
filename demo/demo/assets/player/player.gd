extends AnimatedSprite




var velocity = Vector2()

var max_speed = 2

# warning-ignore:unused_argument
func _physics_process(delta):
	
	if Input.is_action_pressed("ui_up"): # go up
		velocity.y = -1
		pass
	elif Input.is_action_pressed("ui_down"): # go down
		velocity.y = 1
		pass
	else:
		velocity.y = 0
		pass
	
	if Input.is_action_pressed("ui_right"): # go right
		flip_h = false
		velocity.x = 1
		pass
	elif Input.is_action_pressed("ui_left"): # go left
		flip_h = true
		velocity.x = -1
		pass
	else:
		velocity.x = 0
		pass
	
	if velocity == Vector2():
		play("idle")
	else:
		play("walk")
	
	
	position += velocity.normalized() * max_speed
	pass
