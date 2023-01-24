extends Area2D

export var contents = ""
var touchingAreas
var interacting = false

func _process(_delta):
	touchingAreas = get_overlapping_areas()
	if touchingAreas:		# Am I touching something?
		if not interacting and Input.get_action_strength("ui_accept"):		# Do I want to start interacting?
			interacting = true
			Dialog.dialogText = contents
		elif interacting and not Input.get_action_strength("ui_accept"):		# Am I done interacting?
			interacting = false
