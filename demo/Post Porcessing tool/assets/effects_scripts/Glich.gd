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
		{name = "Glitch",
		type = TYPE_NIL,
		hint_string = "glitch",
		usage = PROPERTY_USAGE_GROUP})
	properties.append(
		{name = "glitch_show",
		type = TYPE_BOOL,
		usage = PROPERTY_USAGE_DEFAULT})
	
	node.visible = get_parent().glitch_show
	
	properties.append(
		{name = "glitch_power",
		type = TYPE_REAL,
		usage = PROPERTY_USAGE_DEFAULT})
	properties.append(
		{name = "glitch_rate",
		type = TYPE_REAL,
		usage = PROPERTY_USAGE_DEFAULT})
	properties.append(
		{name = "glitch_speed",
		type = TYPE_REAL,
		usage = PROPERTY_USAGE_DEFAULT})
	properties.append(
		{name = "glitch_block_size",
		type = TYPE_REAL,
		usage = PROPERTY_USAGE_DEFAULT})
	properties.append(
		{name = "glitch_color_rate",
		type = TYPE_REAL,
		usage = PROPERTY_USAGE_DEFAULT})
	
	# main values setup for effect
	node.material.set_shader_param("shake_power", get_parent().glitch_power)
	node.material.set_shader_param("shake_rate", get_parent().glitch_rate)
	node.material.set_shader_param("shake_speed", get_parent().glitch_speed)
	node.material.set_shader_param("shake_block_size", get_parent().glitch_block_size)
	node.material.set_shader_param("shake_color_rate", get_parent().glitch_color_rate)
	
	return properties
