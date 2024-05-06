extends CharacterBody2D

var speed = 100

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	velocity.x = -speed
	move_and_slide()


func _on_area_2d_body_entered(body):
	print('%s entering enemy' % (body))
	get_tree().call_deferred("reload_current_scene")
