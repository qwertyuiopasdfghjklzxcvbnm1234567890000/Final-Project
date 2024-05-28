extends CharacterBody2D
#scrapping this idea
func sacrifice_old_man():
	if Input.is_action_just_pressed("spawn_old_man"):
		show()
		mutilate_old_man()
func mutilate_old_man(): 
	get_node("")
