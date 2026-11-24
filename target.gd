extends StaticBody3D

var health := 100

func _ready() -> void:
    add_to_group("targets")

func take_damage(amount: int) -> void:
    health -= amount
    if health <= 0:
        queue_free()
