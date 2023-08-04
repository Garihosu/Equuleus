extends CharacterBody2D


@export var SPEED = 2
@export var SLOW = 1 # amount to decrease when holding "x"

func _process(delta):
	var m = SPEED # "m" represents the amount actually moved
	if Input.is_key_pressed(KEY_X):
		m = SPEED - SLOW
	if Input.is_key_pressed(KEY_UP):
		position.y -= m
	if Input.is_key_pressed(KEY_DOWN):
		position.y += m
	if Input.is_key_pressed(KEY_LEFT):
		position.x -= m
	if Input.is_key_pressed(KEY_RIGHT):
		position.x += m
