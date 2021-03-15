extends KinematicBody2D


export(float) var normal_speed = 200

var speed = normal_speed

var velocity : Vector2


func _ready():
	pass
	
func _physics_process(delta):
	movment()


func movment():
	
	velocity = Vector2.ZERO
	
	if Input.is_action_pressed("left"):
		velocity.x -= 1
	if Input.is_action_pressed("right"):
		velocity.x += 1
	if Input.is_action_pressed("down"):
		velocity.y += 1
	if Input.is_action_pressed("up"):
		velocity.y -= 1
	
	velocity = velocity.normalized() * speed
	velocity = move_and_slide(velocity, Vector2.UP)
	

