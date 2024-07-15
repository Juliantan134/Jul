extends Node2D

const SPEED = 60

var direction = 1

@onready var ray_castrightright = $RayCastrightright
@onready var ray_castrightleft = $RayCastrightleft
@onready var Animated_Sprite = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_castrightleft.is_colliding():
		direction = 1
		Animated_Sprite.flip_h = false
	if ray_castrightright.is_colliding():
		direction = -1
		Animated_Sprite.flip_h = true
	
	position.x += direction * SPEED * delta
