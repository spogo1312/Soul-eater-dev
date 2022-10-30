extends Control


onready var ui = $TextureProgress

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Player_dmg(current_hp, old_hp):
	$Tween.interpolate_property(ui, "value", old_hp,
			current_hp, 0.5, Tween.TRANS_SINE, Tween.EASE_OUT, 0.025)
	$Tween.start()
	
