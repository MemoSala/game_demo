extends CanvasLayer

@onready var left = $left2
func _on_left_2_pressed() -> void:
	left.modulate.a = .5
func _on_left_2_released() -> void:
	left.modulate.a = 1


@onready var right = $right2
func _on_right_2_pressed() -> void:
	right.modulate.a = .5
func _on_right_2_released() -> void:
	right.modulate.a = 1


@onready var up = $up2
func _on_up_2_pressed() -> void:
	up.modulate.a = .5
func _on_up_2_released() -> void:
	up.modulate.a = 1


@onready var down = $down2
func _on_down_2_pressed() -> void:
	down.modulate.a = .5
func _on_down_2_released() -> void:
	down.modulate.a = 1


@onready var refresh = $refresh2
func _on_refresh_2_pressed() -> void:
	refresh.modulate.a = .5
func _on_refresh_2_released() -> void:
	refresh.modulate.a = 1


@onready var exit = $Exit2
func _on_exit_2_pressed() -> void:
	exit.modulate.a = .5
func _on_exit_2_released() -> void:
	exit.modulate.a = 1
