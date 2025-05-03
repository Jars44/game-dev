extends TileMapLayer

@export var gate_position: Vector2i = Vector2i(5, 3)  # Posisi tile gerbang
var has_key = false  # Status kunci

func remove_collision():
	if has_key:
		var layer = 0  # Layer tile
		#if get_cell_source_id(layer, gate_position) b!= -1:  # Cek apakah ada tile
			#set_cell(layer, gate_position, -1)  # Hapus tile agar isa dilewati
			#print("Balok kayu bisa dilewati!")  # Debugging
