extends Node2D

var highlight_shader = preload("res://highlight-shader.tres")

func show_bad_color(value: bool):
	if value:
		$highlight.material = highlight_shader
	else:
		$highlight.material = null
