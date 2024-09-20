extends Label

var Control_Tutorial_Finished = false
var Win_Tutorial_Finished = false
var Lose_Tutorial_Finished = false

func _ready() -> void:
	$Control_Tutorial.show()
	$Win_Tutorial.hide()
	$Lose_Tutorial_1.hide()
	$Lose_Tutorial_2.hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("drop") and !Control_Tutorial_Finished :
		$Control_Tutorial.hide()
		$Win_Tutorial.show()
		$Lose_Tutorial_1.hide()
		$Lose_Tutorial_2.hide()
		Control_Tutorial_Finished = true
	elif Input.is_action_just_pressed("drop") and Control_Tutorial_Finished and !Win_Tutorial_Finished:
		$Control_Tutorial.hide()
		$Win_Tutorial.hide()
		$Lose_Tutorial_1.show()
		$Lose_Tutorial_2.hide()
		Win_Tutorial_Finished = true
	elif Input.is_action_just_pressed("drop") and Win_Tutorial_Finished and !Lose_Tutorial_Finished:
		$Control_Tutorial.hide()
		$Win_Tutorial.hide()
		$Lose_Tutorial_1.hide()
		$Lose_Tutorial_2.show()
		Lose_Tutorial_Finished = true
	elif Input.is_action_just_pressed("drop") and Lose_Tutorial_Finished :
		$Control_Tutorial.hide()
		$Win_Tutorial.hide()
		$Lose_Tutorial_1.hide()
		$Lose_Tutorial_2.hide()
	
