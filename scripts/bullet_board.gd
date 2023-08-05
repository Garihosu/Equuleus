extends StaticBody2D

var size: Vector2

func _ready():
	size.x = 570
	size.y = 120
	
func _draw():
	draw_rect(Rect2(position, scale), Color.WHITE, false, -4.0)

func _process(_delta):
	if scale.x < size.x:
		scale.x += (size.x - scale.x) / 2
	if scale.x > size.x:
		scale.x -= (scale.x - size.x) / 2
	if scale.y < size.y:
		scale.y += (size.y - scale.y) / 2
	if scale.y > size.y:
		scale.y -= (scale.y - size.y) / 2
	
	queue_redraw()
