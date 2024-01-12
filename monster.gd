extends CharacterBody2D

var player

func _ready():
	player = get_node("root/Game/Player")

func _physics_process(delta):
	#Create a direction for monster to chase player.
	var direction = global_position.direction_to(player.global_position)
	velocity = direction * 350.0 
	move_and_slide()
