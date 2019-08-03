extends CanvasLayer

func _ready():
	$Control/TextureRect/HBoxContainer/LifeCount.text = "3"
	
func update_GUI(lives_left, coins):
	$Control/TextureRect/HBoxContainer/LifeCount.text = String(lives_left)
	$Control/TextureRect/HBoxContainer/CoinCount.text = String(coins)
	
