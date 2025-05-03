extends Node

var coin: int = 0
var key: int = 0
var collected_coins = []  # Simpan ID koin yang udah diambil
var collected_keys = []   # Simpan ID kunci yang udah diambil

signal my_coin(coin: int)
signal my_key(key: int)

func add_coin(coin_id: String) -> void:
	if coin_id in collected_coins:
		return  # Kalau koin ini udah diambil sebelumnya, langsung keluar
	
	collected_coins.append(coin_id)  # Simpan ID koin yg udah diambil
	coin += 1
	emit_signal("my_coin", coin)

func add_key(key_id: String) -> void:
	if key_id in collected_keys:
		return  # Kalau kunci ini udah diambil sebelumnya, langsung keluar

	collected_keys.append(key_id)  # Simpan ID kunci yg udah diambil
	key += 1
	emit_signal("my_key", key)

func reset_progress():  # ⬅️ Tambahin ini buat reset progress
	coin = 0
	key = 0
	collected_coins.clear()  # Reset daftar koin yang udah diambil
	collected_keys.clear()  # Reset daftar kunci yang udah diambil
	emit_signal("my_coin", coin)
	emit_signal("my_key", key)
