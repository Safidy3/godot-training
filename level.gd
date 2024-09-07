extends Node2D

# 1. import meteor scene
var meteor_scene : PackedScene = load("res://meteor.tscn")


func _on_meteor_timer_timeout() -> void:
	# 2. create an instance of meteor
	var meteor = meteor_scene.instantiate()
	
	# 3. attache the node to the scene tree
	$Meteors.add_child(meteor)
