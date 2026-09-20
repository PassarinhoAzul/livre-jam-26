extends Area2D

var peca_pre = preload("res://cenas/peca.tscn")
var lin = 3
var col = 4
var size_x = 180
var size_y = 164
var quebra_cabeca = []
var resposta = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	for i in range (lin):
		for j in range(col):
			var peca = peca_pre.instantiate()
			peca.frame = i*col + j
			quebra_cabeca.append(peca)
			resposta.append(peca)
		
	quebra_cabeca.shuffle()
	
	for i in range (lin):
		for j in range(col):
			var peca = quebra_cabeca[i*col + j]
			peca.position = Vector2((size_x)/2 + j*size_x, (size_y)/2 + i*size_y)
			add_child(peca)
		
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
	
