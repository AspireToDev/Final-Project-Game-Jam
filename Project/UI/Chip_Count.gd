extends Label

onready var camera1 = get_node_or_null("/root/Game/Camera1")
onready var camera2 = get_node_or_null("/root/Game/Camera2")
onready var camera3 = get_node_or_null("/root/Game/Camera3")


func ready():
	if camera1.current == true:
		self.text = "Chips: " + String(Global.chips)
