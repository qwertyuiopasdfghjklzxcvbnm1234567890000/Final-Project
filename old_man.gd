extends CharacterBody2D

func sacrifice():
	if Input.is_action_just_pressed("spawn_old_man"):
		show()
