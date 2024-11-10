extends Node2D

const ROTATION_SPEED = 1

var direction: Vector2 = Vector2(100, 100)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position = get_viewport_rect().get_center()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	rotation += delta * ROTATION_SPEED
	position += delta * direction
	if position.x > get_viewport_rect().size.x or position.x < 0:
		direction.x = -direction.x
	if position.y > get_viewport_rect().size.y or position.y < 0:
		direction.y = -direction.y
	
	#if Input.is_key_pressed(KEY_RIGHT):
	#	position.x += 10 * delta
