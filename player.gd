extends CharacterBody2D

@export var speed: int = 1000
#@export var speed := 500

func _ready() -> void:
	position = Vector2(500, 500)

func _process(delta: float) -> void:
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * speed
	move_and_slide()
	
	#if Input.is_action_pressed("ui_right"):
		#position += Vector2(1,0) * 50 * delta
	
	#get_node("PlayerImage").rotation += 1 * 5 * delta
	#$PlayerImage.rotation += 1 * 5 * delta
	
