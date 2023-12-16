extends Node3D

@export_file("*.tscn") var scene_name

# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("animation_example")
	pass # Replace with function body.



func _on_animation_player_animation_finished(anim_name):
	if anim_name == "animation_example":
		print("Animation Example finished")
		get_tree().change_scene_to_file(scene_name)
	pass # Replace with function body.
