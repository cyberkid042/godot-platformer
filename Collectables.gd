extends Node2D


var cherry = preload("res://Cherry/cherry.tscn")

func _on_timer_timeout():
	var cherryTemp = cherry.instantiate()
	var rnd = RandomNumberGenerator.new()
	var ranInt = rnd.randi_range(75, 2400)
	cherryTemp.position = Vector2(ranInt, 600)
	add_child(cherryTemp)
