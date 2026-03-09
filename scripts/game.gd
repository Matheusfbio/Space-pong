extends Node2D

@onready var ball = $CanvasLayer/HBoxContainer/Background/Ball
@onready var label_pongs = $CanvasLayer/HBoxContainer/Background/Pongs

func _process(delta):
	label_pongs.text = str(ball.pongs)
