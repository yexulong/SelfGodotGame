extends CharacterBody2D

var speed = 100
var direction = Vector2(-1, 0)

@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if is_on_wall():
		direction.x = -direction.x
		animated_sprite.flip_h = !animated_sprite.flip_h
	velocity = speed * direction
	move_and_slide()


func _on_area_2d_body_entered(body):
	print('%s entering enemy' % (body))
	body.hurt_audio_stream_player.play()
	get_tree().call_deferred("reload_current_scene")
