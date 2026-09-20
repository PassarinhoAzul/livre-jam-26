extends Node2D

@export var frame = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var arte = get_node("arte")
	arte.frame = frame

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
