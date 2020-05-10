extends Polygon2D

export var tween_speed: float = 0.2

func move_to(pos: Vector2):
	$Tween.interpolate_property(self, "position", self.position, pos, 0.2, Tween.TRANS_SINE, Tween.EASE_IN_OUT)
	$Tween.start()
