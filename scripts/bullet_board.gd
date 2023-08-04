extends StaticBody2D

var size_x: float
var size_y: float

func _ready():
	size_x = .0
	size_y = .0

func _draw():
	draw_rect(Rect2(position.x, position.y, size_x, size_y), Color.WHITE, false, -4)

func _process(_delta):
	if size_x < scale.x:
		size_x += (scale.x - size_x) / 2
	if size_x > scale.x:
		size_x -= (size_x - scale.x) / 2
	if size_y < scale.y:
		size_y += (scale.y - size_y) / 2
	if size_y > scale.y:
		size_y -= (size_y - scale.y) / 2
