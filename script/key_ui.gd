extends Label

func get_key(key: int) -> void:
	text = str("kunci didapatkan:", key)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Controller.connect("my_key", get_key)
