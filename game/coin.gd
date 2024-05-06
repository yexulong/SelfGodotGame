extends Area2D

@onready var audio_stream_player = $AudioStreamPlayer2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	print('%s entering' % (body))
	audio_stream_player.play()
	self.hide()
	

func _on_audio_stream_player_2d_finished():
	queue_free()
