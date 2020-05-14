extends Polygon2D

export var tween_speed: float = 0.2
export var movement_range: int = 4


func move_to(pos: Vector2):
	var v_diff = (self.position - pos)

	var diff = abs(v_diff.x / 64) + abs(v_diff.y / 64)

	if int(diff) > movement_range:
		return

	$Tween.interpolate_property(self, "position", self.position, pos, 0.2, Tween.TRANS_SINE, Tween.EASE_IN_OUT)
	$Tween.start()


