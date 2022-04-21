extends Label

onready var camera1 = get_node_or_null("/root/Game/Camera1")

func ready():
	if camera1.current == true:
		self.text = "Chips: " + String(Global.chips)
