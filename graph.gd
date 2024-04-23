extends Node2D

@onready var function = $function
var x 
var fx
var rng = RandomNumberGenerator.new()
var y_scale = 1

func _ready():
	rng.randomize()
func _physics_process(delta):
	y_scale = $y_scale_bar.value
	$y_scale_bar/y_scale.text = str(y_scale)
	if Input.is_action_just_pressed("1"):
		function.clear_points()
		x = -512
		fx = 0
		while x < 512:
			if rng.randf_range(0,100) < 50:
				fx += y_scale
			else:
				fx -= y_scale
			function.add_point(Vector2(x,fx))
			x += 1
