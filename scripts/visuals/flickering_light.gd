extends OmniLight3D

@export var noise: NoiseTexture3D
@export var flicker_speed: float = 2.0
var time_passed := 0.0
var time_offset := 0.0

func _ready():
	time_offset = randf() * 100.0

func _process(delta):
	time_passed += delta * flicker_speed
	
	var sampled_noise = noise.noise.get_noise_1d(time_passed + time_offset)
	sampled_noise = abs(sampled_noise)
	
	light_energy = sampled_noise * 0.5
	
