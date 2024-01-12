extends CharacterBody2D

func _physics_process(delta):
	# Input.get_vector : character can move by W,A,S,D
	var direction = Input.get_vector("move_left","move_right","move_up","move_down")
	velocity = direction * 500
	#Character con collide when they meet wall by move_and_slide()
	move_and_slide()
	#get_node give us access to node we want
	if velocity.length() > 0.0:
		#$ shortcut for get_node() , use % if the node is reparent of another node
		$HappyBoo.play_walk_animation()
	else :
		$HappyBoo.play_idle_animation()
