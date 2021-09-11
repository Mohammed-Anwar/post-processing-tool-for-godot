tool
extends CanvasLayer

func _physics_process(delta):
	main()

func main():
	var properties = []
	var node = get_node("Control/ColorRect")
	
	# inspactore exports
	properties.append(
		{name = "fog_overlay",
		type = TYPE_NIL,
		hint_string = "fog_overlay",
		usage = PROPERTY_USAGE_GROUP})
	properties.append(
		{name = "fog_overlay_enable",
		type = TYPE_BOOL,
		usage = PROPERTY_USAGE_DEFAULT})
	
	if not get_parent().fog_overlay_enable:
		node.hide()
		return properties
	

	properties.append(
		{name = "fog_overlay_layer",
		type = TYPE_INT,
		usage = PROPERTY_USAGE_DEFAULT})
	properties.append(
		{name = "fog_overlay_octaves",
		type = TYPE_INT,
		usage = PROPERTY_USAGE_DEFAULT})
	properties.append(
		{name = "fog_overlay_starting_amplitude",
		type = TYPE_REAL,
		usage = PROPERTY_USAGE_DEFAULT})
	properties.append(
		{name = "fog_overlay_starting_frequency",
			type = TYPE_REAL,
			usage = PROPERTY_USAGE_DEFAULT})
	properties.append(
		{name = "fog_overlay_shift",
		type = TYPE_REAL,
		usage = PROPERTY_USAGE_DEFAULT})
	properties.append(
		{name = "fog_overlay_velocity",
		type = TYPE_VECTOR2,
		usage = PROPERTY_USAGE_DEFAULT})
	properties.append(
		{name = "fog_overlay_color",
		type = TYPE_COLOR,
		usage = PROPERTY_USAGE_DEFAULT})
	properties.append(
		{name = "fog_overlay_noise_texture",
		type = TYPE_OBJECT,
		hint = PROPERTY_HINT_RESOURCE_TYPE,
		hint_string = "Texture",
		usage = PROPERTY_USAGE_DEFAULT
		})
	
	# main values setup for effect
	node.show()
	layer = get_parent().fog_overlay_layer
	node.material.set_shader_param("octaves", get_parent().fog_overlay_octaves)
	get_parent().fog_overlay_starting_amplitude = clamp(get_parent().fog_overlay_starting_amplitude, 0, .5)
	node.material.set_shader_param("starting_amplitude", get_parent().fog_overlay_starting_amplitude)
	node.material.set_shader_param("starting_frequency", get_parent().fog_overlay_starting_frequency)
	get_parent().fog_overlay_shift = clamp(get_parent().fog_overlay_shift, -1, 0)
	node.material.set_shader_param("shift", get_parent().fog_overlay_shift)
	node.material.set_shader_param("velocity", get_parent().fog_overlay_velocity)
	node.material.set_shader_param("fog_color", get_parent().fog_overlay_color)
	node.material.set_shader_param("noise", get_parent().fog_overlay_noise_texture)
	get_parent().fog_overlay_noise_texture = get_parent().fog_overlay_noise_texture
	
	return properties

