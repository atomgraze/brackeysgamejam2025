extends Camera3D  # or whatever your camera extends

@export var debug_controller: Node

func _ready():
	pass
func _input(event):
	# Check if camera controls are enabled
	if debug_controller and not debug_controller.is_camera_control_enabled():
		return  # Exit early - don't process any camera input
