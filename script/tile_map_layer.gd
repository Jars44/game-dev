extends TileMapLayer

@export var gate_position: Vector2i = Vector2i(248, -703.5)  # Posisi tile gerbang
var has_key = false  # Status kunci

func remove_collision():
	if has_key:
		var layer = 4  # Layer tile
		
		 # Dapatkan koordinat tile dengan format index (pakai get_coords_for_body)
		#var tile_coords = local_to_map()
		#
		## Ambil ID tile di posisi tersebut
		#var tile_data = get_cell_tile_data(layer, tile_coords)
		#
		#if tile_data:  # Pastikan tile ada sebelum dihapus
			#set_cell(layer, tile_coords, -1, Vector2i(-1, -1))  # Hapus tile
			#print("Gerbang terbuka!")  # Debugging
