extends Node2D




func spawn_mob():
	var new_mob = preload("res://mob.tscn").instantiate()
	%PathFollow2D.progress_ratio = randf()
	new_mob.global_position = %PathFollow2D.global_position
	add_child(new_mob)
	
func spawn_nuke():
	var nuke = preload("res://Nuke.tscn").instantiate()
	if Input.is_action_just_pressed("nuke"):
		nuke.global_position = %Player.global_position
		add_child(nuke)
	


func _on_timer_timeout():
	spawn_mob()


func _on_player_health_delpleted():
	%GameOver.visible = true
	get_tree().paused = true
	$DeathSound.play()
