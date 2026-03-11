extends Node2D

@onready var ball = $CanvasLayer/HBoxContainer/Background/Ball
@onready var label_pongs = $CanvasLayer/HBoxContainer/Background/Pongs
@onready var label_tutorial = $CanvasLayer/HBoxContainer/Background/Tutorial

func _process(delta):
	
	if ball.started:
		label_pongs.visible = true
		label_tutorial.visible = false
	
	label_pongs.text = str(ball.pongs)


func _on_hole_body_entered(body):
	call_deferred("reload_scene")
	
func reload_scene():
	get_tree().reload_current_scene()
