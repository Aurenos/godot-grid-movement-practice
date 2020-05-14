extends Polygon2D

export var tween_speed: float = 0.2
export var total_moves: int = 20

func update_color():
	if total_moves <= 0:
		self.color = Color(1, 0, 0)

func move_to(pos: Vector2):
	var v_diff = (self.position - pos)

	var diff = abs(v_diff.x / 64) + abs(v_diff.y / 64)

	self.total_moves -= diff

	$Tween.interpolate_property(self, "position", self.position, pos, 0.2, Tween.TRANS_SINE, Tween.EASE_IN_OUT)
	$Tween.start()

	self.update_color()
