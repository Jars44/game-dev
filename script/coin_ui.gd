extends Label

func get_coin(coin: int) -> void:
	text = str("coin didapatkan:", coin)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Controller.connect("my_coin", get_coin)
