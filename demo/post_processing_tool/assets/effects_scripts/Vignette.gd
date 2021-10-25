tool
extends Control

# warning-ignore:unused_argument
func _physics_process(delta):
	main()

func main():
	var properties = []
	var node = $ColorRect
	
	# inspactore exports
	properties.append(
		{name = "Vignette",
		type = TYPE_NIL,
		hint_string = "vignette_",
		usage = PROPERTY_USAGE_GROUP})
	properties.append(
		{name = "vignette_show",
		type = TYPE_BOOL,
		usage = PROPERTY_USAGE_DEFAULT})
	
	node.visible = get_parent().vignette_show
	
	properties.append(
		{name = "vignette_player_pos",
		type = TYPE_VECTOR2,
		usage = PROPERTY_USAGE_DEFAULT})
	properties.append(
		{name = "vignette_color",
		type = TYPE_COLOR,
		usage = PROPERTY_USAGE_DEFAULT})
	properties.append(
		{name = "vignette_multiplier",
			type = TYPE_REAL,
			usage = PROPERTY_USAGE_DEFAULT})
	properties.append(
		{name = "vignette_scale",
		type = TYPE_REAL,
		usage = PROPERTY_USAGE_DEFAULT})
	properties.append(
		{name = "vignette_softness",
		type = TYPE_REAL,
		usage = PROPERTY_USAGE_DEFAULT})
	
	# main values setup for effect
	node.material.set_shader_param("player_position", get_parent().vignette_player_pos)
	node.material.set_shader_param("color", get_parent().vignette_color)
	node.material.set_shader_param("MULTIPLIER", get_parent().vignette_multiplier)
	node.material.set_shader_param("SCALE", get_parent().vignette_scale)
	node.material.set_shader_param("SOFTNESS", get_parent().vignette_softness)
	
	return properties

