extends Node2D

var Game_end = false;
func _ready():
	$AcceptDialog.add_theme_icon_override("close", Texture2D.new())
	
func  _process(delta: float) -> void:
	check_end()
	pass
	
func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("restart"):
		get_tree().reload_current_scene()
	pass

func  check_end():
	if Game_end == false:
		var areas = $Areas.get_child_count()
		for element in $Areas.get_children():
			if element.in_area:
				areas -= 1
		if areas == 0:
			$AcceptDialog.popup()
			Game_end = true


func _on_accept_dialog_confirmed() -> void:
	get_tree().reload_current_scene()
