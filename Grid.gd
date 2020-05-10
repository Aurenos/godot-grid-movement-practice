extends TileMap

var highlight_scene = preload("res://Highlight.tscn")
onready var highlighter = highlight_scene.instance()


func _ready():
	add_child(highlighter)


func _process(_delta):
	handle_highlighter_movement()

	if Input.is_action_just_pressed("select_cell"):
		$Unit.move_to(highlighter.position)


func handle_highlighter_movement():
	var mouse_pos := get_global_mouse_position()
	var snapped_pos = mouse_pos.snapped(cell_size)


	highlighter.position.x = \
		snapped_pos.x if mouse_pos.x > snapped_pos.x else snapped_pos.x - cell_size.x

	highlighter.position.y = \
		snapped_pos.y if mouse_pos.y > snapped_pos.y else snapped_pos.y - cell_size.y
