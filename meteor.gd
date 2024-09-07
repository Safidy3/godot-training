extends Area2D

var fall_speed
var direction_x
var rotation_speed : int

func random_spawn(rnd : RandomNumberGenerator, screen_width):
	var rnd_x = rnd.randi_range(0, screen_width)
	position = Vector2(rnd_x, 0)

func random_scale(rnd : RandomNumberGenerator):
	var scale_x : float = rnd.randf_range(0.5, 4)
	scale = Vector2(scale_x, scale_x)

func _ready() -> void:
	var rnd := RandomNumberGenerator.new()
	var screen_width = get_viewport().get_visible_rect().size[0]
	fall_speed = rnd.randi_range(100, 500)
	direction_x = rnd.randf_range(-1, 1)
	rotation_speed = rnd.randf_range(-100, 100)
	random_spawn(rnd, screen_width)
	random_scale(rnd)
	

func _process(delta: float) -> void:
	position += Vector2(direction_x, 1.0) * fall_speed * delta
	rotation_degrees += rotation_speed * delta

func _on_body_entered(body: Node2D) -> void:
	print("body entered")
