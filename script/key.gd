extends Node2D

@export var key_id: String  # Tambahin ID unik buat tiap kunci
@export var player: CharacterBody2D

func _ready():
	add_to_group("keys")  # Tambahin ke grup 'keys'

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "player":
		Controller.add_key(key_id)
		hide()  # Sembunyikan key pas diambil

func _on_body_entered(body):
	if body == player:
		player.collect_key()
		queue_free()  # Hapus kunci dari scene
