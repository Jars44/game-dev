extends Node2D

@export var coin_id: String  # Tambahin ID unik buat tiap koin

func _ready():
	add_to_group("coins")  # Tambahin ke grup 'coins'

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "player":
		Controller.add_coin(coin_id)
		hide()  # Sembunyikan koin pas diambil
