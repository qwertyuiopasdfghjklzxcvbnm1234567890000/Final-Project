extends Sprite2D

func _on_timer_timeout():


func _on_tree_entered():
	await $Timer.timeout
	
