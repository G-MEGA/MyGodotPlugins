tool
extends Resource

class Point:
	var x:float
	var y:float
	var bezier_point_right:Vector2 = Vector2(1, 0) setget set_bezier_point_right  # x값 0이상
	func set_bezier_point_right(value:Vector2):
		if value.x < 0:
			value.x = 0
		bezier_point_right = value
	var bezier_point_left:Vector2 = Vector2(-1, 0) setget set_bezier_point_left  # x값 0이하
	func set_bezier_point_left(value:Vector2):
		if value.x > 0:
			value.x = 0
		bezier_point_left = value

var _points:Array