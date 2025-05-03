extends Area2D

@export var countdown: Label
@export var respawn_position: Vector2
@export var player: CharacterBody2D

signal player_fell

func _on_body_entered(body):
	if body.name == "player":
		Controller.reset_progress()  # Reset koin & key
		reset_coins_and_keys()  # Respawn koin & key yang hilang
		
		# Matikan sementara Kill Zone biar gak mendeteksi ulang
		set_deferred("monitoring", false)
		
		# Hentikan gerakan player dan munculkan countdown
		body.velocity = Vector2.ZERO
		body.process_mode = Node.PROCESS_MODE_DISABLED  # Nonaktifkan pergerakan
		
		emit_signal("player_fell")  # Bisa dipakai buat UI
		# Countdown manual tanpa pakai Timer node
		if countdown:
			for i in range(3, 0, -1):
				countdown.text = str(i)
				countdown.show()
				await get_tree().create_timer(1.0).timeout  # Tunggu 1 detik tiap iterasi

			countdown.hide()
		countdown.hide()
	# Respawn player setelah countdown selesai
	body.global_position = respawn_position
	body.process_mode = Node.PROCESS_MODE_INHERIT  # Aktifkan pergerakan kembali

	# Aktifkan Kill Zone kembali
	await get_tree().create_timer(0.5).timeout  # Tambahin delay kecil buat aman
	set_deferred("monitoring", true)

# Fungsi buat munculin lagi koin & key yang udah diambil
func reset_coins_and_keys():
	for coin in get_tree().get_nodes_in_group("coins"):
		coin.show()  # Munculin koin lagi
	for key in get_tree().get_nodes_in_group("keys"):
		key.show()  # Munculin key lagi
