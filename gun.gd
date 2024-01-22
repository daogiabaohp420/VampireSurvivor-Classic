extends Area2D


func _physics_process(delta):
	#find all of characters body 2D nodes that overlapping
	var enemies_in_range = get_overlapping_bodies()
	if enemies_in_range.size() > 0:
		# .front() = [0]
		var target_enemy = enemies_in_range.front()
		look_at(target_enemy.global_position)

func shoot():
	const BULLET = preload("res://bullet.tscn")
	# instantiate is function to unload scenes to create a new instance of scenes
	var new_bullet = BULLET.instantiate()
	new_bullet.global_position = %ShootingPoint.global_position
	new_bullet.global_rotation = %ShootingPoint.global_rotation
	%ShootingPoint.add_child(new_bullet)


func _on_timer_timeout():
	shoot()
