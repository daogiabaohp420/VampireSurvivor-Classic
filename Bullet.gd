extends Area2D

var travelled_distance = 0

func _physics_process(delta):
	const speed = 800
	const range = 1000
	var direction = Vector2.RIGHT.rotated(rotation)
	position += direction * speed * delta
	travelled_distance += speed * delta
	
	if travelled_distance > range : 
		# Destory the bullet
		queue_free()
