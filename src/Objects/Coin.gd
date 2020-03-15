extends Area2D


onready var anim_player: AnimationPlayer = $AnimationPlayer
onready var is_picked: bool
onready var SAVE_KEY : String = name

export var score: = 100


func _on_body_entered(body: PhysicsBody2D) -> void:
	picked()


func picked() -> void:
	PlayerData.score += score
	anim_player.play("picked")
	$CoinDust.emitting = true
	$CoinGet.playing = true
	is_picked = false

func save(save_game : Resource):
	save_game.data[SAVE_KEY] = is_picked

func load(save_game : Resource):
	 is_picked = save_game.data[SAVE_KEY]
