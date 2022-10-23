# EnemigoDummy.gd
extends Area2D

var hitpoints:float = 10.0

# Metodos
func recibir_danio(danio: float) -> void:
	hitpoints -= danio
	if hitpoints <= 0.0:
		queue_free()

# Señales internas
func _on_Area2D_body_entered(body: Node) -> void:
	if body is Player:
		body.destruir()
