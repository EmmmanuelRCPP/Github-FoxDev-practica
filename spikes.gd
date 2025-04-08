extends Area2D
@export var rotation_dir  = 0

func _ready() -> void:
	rotation_degrees = rotation_dir * 90
func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		body.active = false # Borra el colleccionable
