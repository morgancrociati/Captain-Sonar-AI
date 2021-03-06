extends Object

class_name PlayerMove

# store the cumulative movement
var movement :  Array
var possibilities : Array = []

func _init(map : Map):
	movement = [Vector2(0,0)]
	possibilities = map.init_possibilities()

func add_movement(d : Vector2):
	if d != Globals.NORTH and d != Globals.EAST and d != Globals.SOUTH and d != Globals.WEST :
		return false
	#add the new direction to the last position
	var lastPos = movement[movement.size()-1] + d
	for m in movement:
		#if the new position has already been visisted
		if m == lastPos:
			#the direction is not valid
			return false
	#the valid position is add to movement
	movement.append(lastPos)
	return true


