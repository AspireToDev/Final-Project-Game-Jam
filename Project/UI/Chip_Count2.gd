extends Label
onready var camera2 = get_node_or_null("/root/Game/Camera2")

func _ready():
	if camera2.current == true:
		Global.chips = 1
		self.text = "Chips: " + String(Global.chips)

