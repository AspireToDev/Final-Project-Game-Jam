extends Label
onready var camera3 = get_node_or_null("/root/Game/Camera3")

func _ready():
	if camera3.current == true:
		Global.chips = 7
		self.text = "Chips: " + String(Global.chips)

