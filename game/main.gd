extends Node2D

@onready var tile_map: TileMap = $TileMap
@onready var camera_2d: Camera2D = $CharacterBody2D/Camera2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var used := tile_map.get_used_rect()
	var tile_size := tile_map.tile_set.tile_size

	camera_2d.limit_top = used.position.y * tile_size.y
	camera_2d.limit_left = used.position.x * tile_size.x
	camera_2d.limit_right = used.end.x * tile_size.x
	camera_2d.limit_bottom = used.end.y * tile_size.y


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
