extends Area2D

var touchingAreas
var interacting = false

func _ready():
	pass # Replace with function body.

func _process(_delta):
	touchingAreas = get_overlapping_areas()
	if touchingAreas:		# Am I touching something?
		if not interacting:		# Am I already interacting with it?
			if Input.get_action_strength("ui_accept"):		# Do I want to interact?
				print("Interacted!")
				interacting = true
		else:
			if not Input.get_action_strength("ui_accept"):		# Am I done interacting?
				interacting = false
