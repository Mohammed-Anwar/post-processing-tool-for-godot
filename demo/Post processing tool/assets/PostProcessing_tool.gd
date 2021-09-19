tool
extends Control

# adjustment
var adjustment_show = false setget set_adjustment
var adjustment_brightnes = 1.0
var adjustment_contrast = 1.0
var adjustment_saturation = 1.0

# white_balance
var white_balance_show = false setget set_white_balance
var white_balance_temperature = 0.0
var white_balance_warm_color = preload("res://Post Processing tool/assets/warm_color.res")
var white_balance_cool_color = preload("res://Post Processing tool/assets/cool_color.res")
var white_balance_layer = 1
var white_balance_tint = 0.0

# color splash
var color_splash_show = false setget set_color_splash
var color_splash_layer = 1
var color_splash_color = Color()
var color_splash_strength = 0.2

# bloom
var bloom_show = false setget _set_bloom
var bloom_layer = 1
var bloom_radius = 1
var bloom_threshold = 1
var bloom_intensity = 1

# chromatc_aberration
var chromatc_aberration_show = false setget set_chromatc_aberration
var chromatc_aberration_strength = 0.5
var chromatc_aberration_layer = 1

# noise
var noise_show = false setget set_noise
var noise_layer = 1
var noise_power = 0.01
var noise_seed = 80
var noise_speed = 0.1

# glich
var glitch_show = false setget _set_glich
var glitch_power = 0.03
var glitch_rate = 0.2
var glitch_speed = 5.0
var glitch_block_size = 30.5
var glitch_color_rate = 0.01

# fog overlay
var fog_overlay_show = false setget _set_fog_overlay
var fog_overlay_layer = 1
var fog_overlay_octaves = 4
var fog_overlay_starting_amplitude = 0.5
var fog_overlay_starting_frequency = 1.0
var fog_overlay_shift = -0.2
var fog_overlay_velocity = Vector2(1, 1)
var fog_overlay_color = Color(0,0,0,1)
var fog_overlay_noise_texture = null

# vignette
var vignette_show = false setget set_vignette
var vignette_player_pos = Vector2(0.5, 0.5)
var vignette_color = Color()
var vignette_multiplier = 1.0
var vignette_scale = 0.5
var vignette_softness = 1.0
var vignette_layer = 1

func _set_fog_overlay(value):
	fog_overlay_show = value
	property_list_changed_notify()
	pass

func _set_glich(value):
	glitch_show = value
	property_list_changed_notify()
	pass

func _set_bloom(value):
	bloom_show = value
	property_list_changed_notify()
	pass

func set_vignette(value):
	vignette_show = value
	property_list_changed_notify()
	pass

func set_chromatc_aberration(value):
	chromatc_aberration_show = value
	property_list_changed_notify()
	pass

func set_white_balance(value):
	white_balance_show = value
	property_list_changed_notify()
	pass

func set_noise(value):
	noise_show = value
	property_list_changed_notify()
	pass

func set_adjustment(value):
	adjustment_show = value
	property_list_changed_notify()
	pass

func set_color_splash(value):
	color_splash_show = value
	property_list_changed_notify()
	pass

func _get_property_list():
	var properties = []
	
	# make the category
	properties.append({
		name = "Effects",
		type = TYPE_NIL,
		usage = PROPERTY_USAGE_CATEGORY
	})
	
	for i in get_children():
		if i.has_method("main"):
			properties = _get_properties_form_node(i.name, properties)
	
	return properties

func _get_properties_form_node(_node_name, properties):
	var properties_in_node = []
	properties_in_node = get_node(_node_name).main()
	for i in properties_in_node:
		properties.append(i)
	return properties
