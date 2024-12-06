extends CharacterBody2D

@onready var ray =  $RayCast2D

var inputs = {
	'ui_up': Vector2.UP,
	'ui_down': Vector2.DOWN,
	'ui_left': Vector2.LEFT,
	'ui_right': Vector2.RIGHT,
}

var positionAct;
func _ready() -> void:
	positionAct = position

func  _process(delta: float) -> void:
	$AnimationPlayer.play("idle")
	pass
	
func _unhandled_input(event: InputEvent) -> void:
	for dir in inputs.keys():
		if event.is_action_pressed(dir):
			move(dir) 
	pass

func move(dir):
	var vector_post =  inputs[dir] * 16  
	ray.target_position = vector_post
	ray.force_raycast_update()
	var tween = create_tween()
	if!ray.is_colliding():
		positionAct += vector_post
		tween.tween_property(self, "position", positionAct, 0.2)
	else:
		var collider = ray.get_collider();
		if collider.is_in_group("Box"):
			if collider.move(dir):
				positionAct += vector_post
				tween.tween_property(self, "position", positionAct, 0.2)
