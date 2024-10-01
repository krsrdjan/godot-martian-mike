extends Node2D

@onready var start_position = $StartPosition

@onready var player = $Player

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	player.global_position = start_position.global_position

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("quit"):
		get_tree().quit()
	elif Input.is_action_just_pressed("quit"):
		get_tree().reload_current_scene()


func _on_deathzone_body_entered(body: Node2D) -> void:
	body.velocity = Vector2.ZERO
	body.global_position = start_position.global_position
	

func _on_trap_touched_player() -> void:
	player.velocity = Vector2.ZERO
	player.global_position = start_position.global_position
	
