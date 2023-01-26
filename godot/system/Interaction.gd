extends Area2D

export var contents = PoolStringArray()
var page = 0
var totalPages = 0

var touchingAreas
var interacting = false

func _process(_delta):
	touchingAreas = get_overlapping_areas()
	if Input.is_action_just_pressed("ui_accept") and touchingAreas: # Space hit and touching something
		totalPages = contents.size()
		if Dialog.dialogText == "": # If dialog is blank, goes to first page
			page = 0
			
		if page == totalPages: # When tries going past last page, clears Dialog
			Dialog.dialogText = ""
		else: # Moves to next page, sends contents to dialog
			Dialog.dialogText = contents[page]
			page += 1

