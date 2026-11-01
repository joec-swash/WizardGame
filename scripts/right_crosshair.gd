extends Label

# Creates a movement-speed variable.
var move_speed: float = 500.0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var direction # L14 - Declares 'direction' -- L15 - Assigns the value.
	direction = Input.get_vector("right_aim_left", "right_aim_right", "right_aim_up", "right_aim_down")
	# Moves crosshair when stick is moved.
	position += direction * move_speed * delta
	# Finds width and height of game window.
	var viewport_size = get_viewport_rect().size 
	# Restricts positions of crosshair.
	position.x = clamp(position.x, 0, viewport_size.x - size.x) # X
	position.y = clamp(position.y, 0, viewport_size.y - size.y) # Y
