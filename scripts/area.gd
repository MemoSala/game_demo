extends Area2D
var in_area = false;

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Box"):
		in_area = true


func _on_body_exited(body: Node2D) -> void:
	if body.is_in_group("Box"):
		in_area = false
