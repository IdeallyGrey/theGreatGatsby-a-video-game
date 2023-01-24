extends Panel

func _process(_delta):
	if Dialog.dialogText == "":
		set_visible(false)
	else:
		set_visible(true)
