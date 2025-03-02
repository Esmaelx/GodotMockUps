extends Node2D

@onready var ray_cast_left: RayCast2D = $RayCastLeft
@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

const SPEED = 60
var direction = 1
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x += direction * SPEED * delta
	if ray_cast_left.is_colliding():
		direction = 1
		position.x += direction * SPEED * delta
		animated_sprite.flip_h = false
	if ray_cast_right.is_colliding():
		direction = -1
		position.x += direction * SPEED * delta
		animated_sprite.flip_h = true
