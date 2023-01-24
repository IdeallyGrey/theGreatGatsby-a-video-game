extends Area2D

var touchingAreas
var interacting = false

func _ready():
	pass # Replace with function body.



func _process(_delta):
	touchingAreas = get_overlapping_areas()
	if touchingAreas:
		if not interacting:
			if Input.get_action_strength("ui_accept"):
				print("Interacted!")
				interacting = true
		else:
			if not Input.get_action_strength("ui_accept"):
				interacting = false
