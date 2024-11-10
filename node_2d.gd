extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position = get_viewport_rect().get_center()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_key_pressed(KEY_RIGHT):
		position.x += 10 * delta
